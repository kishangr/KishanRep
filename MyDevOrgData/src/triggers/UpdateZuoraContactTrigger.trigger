trigger UpdateZuoraContactTrigger on Contact (after update) {

    System.debug('########## INFO: Trigger updating Zuora contact when corresponding SFDC contact is updated');
    
    List<String> contactIdsList = new List<String>();
    
    for (Contact cont : Trigger.New) {
        contactIdsList.add(cont.id);
    }

    //ZuoraContactUpdater.updateContactAsynchronously(contactIdsList);
    
    try {
        System.debug('########## INFO: contactIdsList = ' + contactIdsList);
    
        List<Contact> sfdcContactList = [SELECT Id, AccountId, FirstName, LastName, Email, Phone, MailingStreet, 
            MailingCity, MailingPostalCode, MailingState, MailingCountry FROM Contact WHERE Id IN :contactIdsList];
        
        Map<String, Contact> sfdcAccountIdToContactMap = new Map<String, Contact>();
        
        for (Contact cont : sfdcContactList) {
            sfdcAccountIdToContactMap.put(cont.AccountId, cont);
        }
        
        System.debug('########## INFO: sfdcAccountIdToContactMap = ' + sfdcAccountIdToContactMap);
        
        List<Zuora__CustomerAccount__c> zuoraAccountList = [SELECT Id, Zuora__Account__c, Zuora__SoldToId__c,Zuora__BillToId__c,
            Zuora__BillToName__c, Zuora__BillToAddress1__c, Zuora__BillToState__c, Zuora__BillToCity__c, Zuora__BillToCountry__c, 
            Zuora__BillToPostalCode__c, Zuora__BillToWorkEmail__c, Zuora__BillToWorkPhone__c 
            FROM Zuora__CustomerAccount__c WHERE Zuora__Account__c IN :sfdcAccountIdToContactMap.keySet()];
        
        System.debug('########## INFO: zuoraAccountList = ' + zuoraAccountList);
        
        String errorEmailBody = ZuoraContactUpdater.checkEachContactHasAccount(sfdcAccountIdToContactMap, zuoraAccountList);
        if (errorEmailBody != null) {
            ZuoraContactUpdater.sendNotificationEmail('Contact', errorEmailBody, null);   
        }
        
        for (Zuora__CustomerAccount__c zAccount : zuoraAccountList) {
            
            System.debug('########## INFO: zAccount = ' + zAccount);              
            
            String sfdcAccountId = zAccount.Zuora__Account__c;
            Contact currentSfdcContact = sfdcAccountIdToContactMap.get(sfdcAccountId);
            
            if ( ZuoraContactUpdater.contactNeedsUpdate(currentSfdcContact, zAccount) ) {
                ZuoraContactUpdater.updateContactsAsynchronously(contactIdsList);
                break;
            }
        }
    } catch (Exception e) {
        System.debug('########## EXCEPTION: ' +  e);
        ZuoraContactUpdater.sendNotificationEmail('Contact', '', e);   
    }
}