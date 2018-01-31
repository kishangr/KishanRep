global class ZuoraContactUpdater{

    public static void updateContacts(List<String> sfdcContactIdList){
        System.debug('########## INFO: ZuoraContactUpdater execution START.');
        try {
            System.debug('########## INFO: sfdcContactIdList = ' + sfdcContactIdList);
        
            List<Contact> sfdcContactList = [SELECT Id, AccountId, FirstName, LastName, Email, Phone, MailingStreet, 
                MailingCity, MailingPostalCode, MailingState, MailingCountry FROM Contact WHERE Id IN :sfdcContactIdList];
            
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
            
            
            List<Zuora.zObject> contactsToUpdateList1 = new List<Zuora.zObject>();
            List<Zuora.zObject> contactsToUpdateList2 = new List<Zuora.zObject>();
            List<Zuora.zObject> contactsToUpdateList3 = new List<Zuora.zObject>();
            List<Zuora.zObject> contactsToUpdateList4 = new List<Zuora.zObject>();
            
            integer i = 0;
            List<zqu__Quote__c> SFDCQuoteList = [select Id,zqu__BillToContact__c,zqu__SoldToContact__c,zqu__Primary__c from zqu__Quote__c where zqu__Account__c IN:sfdcAccountIdToContactMap.keySet() and zqu__Primary__c=TRUE];
            // Map<Id,Id> IdToSoldToMap = new Map<Id,Id>();
             //Map<Id,Id> IdToBillToMap = new Map<Id,Id>();
             //Set<Id> SoldToId = new Set<Id>();
             /*for(zqu__Quote__c temp: SFDCQuoteList)
             {
                 //IdToSoldToMap.put(temp.Id,temp.zqu__SoldToContact__c);
                 //IdToBillToMap.put(temp.Id,temp.zqu__BillToContact__c);
                 //SoldToId.add(temp.zqu__SoldToContact__c);
              }*/
              zqu__Quote__c QuoteObj = new zqu__Quote__c();
              for(zqu__Quote__c temp: SFDCQuoteList)
              {
                  QuoteObj.zqu__SoldToContact__c = temp.zqu__SoldToContact__c;
                  QuoteObj.zqu__BillToContact__c = temp.zqu__BillToContact__c;
               }
            for (Zuora__CustomerAccount__c zAccount : zuoraAccountList) 
            {
                
                System.debug('########## INFO: zAccount = ' + zAccount);              
                
                String sfdcAccountId = zAccount.Zuora__Account__c;
                Contact currentSfdcContact = sfdcAccountIdToContactMap.get(sfdcAccountId);
                
                if ( contactNeedsUpdate(currentSfdcContact, zAccount) ) 
                {
                    i++;
                if(currentSfdcContact.Id == QuoteObj.zqu__SoldToContact__c)
                {
                    Zuora.zObject contactToUpdate = new Zuora.zObject('Contact');
                    contactToUpdate.setValue('Id', zAccount.Zuora__SoldToId__c);
                    contactToUpdate.setValue('FirstName', currentSfdcContact.FirstName);
                    contactToUpdate.setValue('LastName', currentSfdcContact.LastName);
                    contactToUpdate.setValue('WorkEmail', currentSfdcContact.Email);
                    contactToUpdate.setValue('WorkPhone', currentSfdcContact.Phone);
                    
                    contactToUpdate.setValue('Address1', currentSfdcContact.MailingStreet);
                    contactToUpdate.setValue('City', currentSfdcContact.MailingCity);
                    contactToUpdate.setValue('PostalCode', currentSfdcContact.MailingPostalCode);
                    contactToUpdate.setValue('State', currentSfdcContact.MailingState);
                    contactToUpdate.setValue('Country', currentSfdcContact.MailingCountry);
                  
                    System.debug('########## INFO: contactToUpdate = ' + contactToUpdate); 
                    if (i  <= 50) {           
                        contactsToUpdateList1.add(contactToUpdate);
                    } else if (i <= 100) {
                        contactsToUpdateList2.add(contactToUpdate);
                    } else if (i <= 150) {
                        contactsToUpdateList3.add(contactToUpdate);
                    } else if (i <= 200) {
                        contactsToUpdateList4.add(contactToUpdate);
                    } else {
                        errorEmailBody = '########## ERROR: ZuoraContactUpdater code not designed to update more than 200 Contacts at once.';
                        //System.debug(errorEmailBody);
                        sendNotificationEmail('Contact', errorEmailBody, null);
                    }
                  }
                }
                if ( contactNeedsUpdate(currentSfdcContact, zAccount) ) 
                {
                    i++;
                    if(currentSfdcContact.Id == QuoteObj.zqu__BillToContact__c)
                    {
                    Zuora.zObject contactToUpdate = new Zuora.zObject('Contact');
                    contactToUpdate.setValue('Id', zAccount.Zuora__BillToId__c);
                    contactToUpdate.setValue('FirstName', currentSfdcContact.FirstName);
                    contactToUpdate.setValue('LastName', currentSfdcContact.LastName);
                    contactToUpdate.setValue('WorkEmail', currentSfdcContact.Email);
                    contactToUpdate.setValue('WorkPhone', currentSfdcContact.Phone);
                    
                    contactToUpdate.setValue('Address1', currentSfdcContact.MailingStreet);
                    contactToUpdate.setValue('City', currentSfdcContact.MailingCity);
                    contactToUpdate.setValue('PostalCode', currentSfdcContact.MailingPostalCode);
                    contactToUpdate.setValue('State', currentSfdcContact.MailingState);
                    contactToUpdate.setValue('Country', currentSfdcContact.MailingCountry);
                  
                    System.debug('########## INFO: contactToUpdate = ' + contactToUpdate); 
                    if (i  <= 50) {           
                        contactsToUpdateList1.add(contactToUpdate);
                    } else if (i <= 100) {
                        contactsToUpdateList2.add(contactToUpdate);
                    } else if (i <= 150) {
                        contactsToUpdateList3.add(contactToUpdate);
                    } else if (i <= 200) {
                        contactsToUpdateList4.add(contactToUpdate);
                    } else {
                        errorEmailBody = '########## ERROR: ZuoraContactUpdater code not designed to update more than 200 Contacts at once.';
                        //System.debug(errorEmailBody);
                        sendNotificationEmail('Contact', errorEmailBody, null);
                    }
                   }
                }
            }
            
            // These lists should not reach more than 50 values:
            System.debug('########## INFO: contactsToUpdateList1 = ' + contactsToUpdateList1);
            System.debug('########## INFO: contactsToUpdateList2 = ' + contactsToUpdateList2);
            System.debug('########## INFO: contactsToUpdateList3 = ' + contactsToUpdateList3);
            System.debug('########## INFO: contactsToUpdateList4 = ' + contactsToUpdateList4);
            
            if ( i >= 1) {
            
                Zuora.zApi zApi = zuoraApiAccess();
                
                List<Zuora.zObject> allContactsToUpdateList = contactsToUpdateList1;
                List<Zuora.zApi.SaveResult> saveResultsList = updateZuoraObjects(zApi, contactsToUpdateList1);
                
                if (i >= 51) {
                    allContactsToUpdateList.addAll(contactsToUpdateList2);
                    saveResultsList.addAll(updateZuoraObjects(zApi, contactsToUpdateList2));
                }
                if (i >= 101) {
                    allContactsToUpdateList.addAll(contactsToUpdateList3);
                    saveResultsList.addAll(updateZuoraObjects(zApi, contactsToUpdateList3));
                }
                if (i >= 151) {
                    allContactsToUpdateList.addAll(contactsToUpdateList4);
                    saveResultsList.addAll(updateZuoraObjects(zApi, contactsToUpdateList4));
                }
                
                Boolean sendErrorEmail = false;
                errorEmailBody = '';
                integer j = 0;
                
                for (Zuora.zApi.SaveResult saveResult : saveResultsList) {
                    if (!analyzeSaveResult(saveResult).isEmpty()) {
                        sendErrorEmail = true;
                        errorEmailBody += ('########## ERROR: ' + analyzeSaveResult(saveResult) + ' for Zuora Contact: '+ allContactsToUpdateList.get(j).getValue('Id') +'\r\n');
                        System.debug('########## ERROR: ' + analyzeSaveResult(saveResult));
                    }
                    j++;
                }
                
                if (sendErrorEmail) {
                    sendNotificationEmail('Contact', errorEmailBody, null);   
                }
            }
            
        } catch (Exception e) {
            System.debug('########## EXCEPTION: ' +  e);
            sendNotificationEmail('Contact', '', e);   
        }
        System.debug('########## INFO: ZuoraContactUpdater execution END.');
    }
    
    
    public static boolean contactNeedsUpdate(Contact cont, Zuora__CustomerAccount__c zAccount) {
        boolean result = false;
        
        result = result || (zAccount.Zuora__BillToName__c != (cont.FirstName + ' ' + cont.LastName));
        result = result || (zAccount.Zuora__BillToWorkEmail__c != cont.Email);
        result = result || (zAccount.Zuora__BillToWorkPhone__c != cont.Phone);
        result = result || (zAccount.Zuora__BillToAddress1__c != cont.MailingStreet);
        result = result || (zAccount.Zuora__BillToCity__c != cont.MailingCity);
        result = result || (zAccount.Zuora__BillToPostalCode__c != cont.MailingPostalCode);
        result = result || (zAccount.Zuora__BillToState__c != cont.MailingState);
        result = result || (zAccount.Zuora__BillToCountry__c != cont.MailingCountry);
        
        System.debug('########## INFO: contactNeedsUpdate = ' + result);              
        return result;
    }
    
    
    @future (callout=true)
    public static void updateContactsAsynchronously(List<String> sfdcContactIdList) {
        updateContacts(sfdcContactIdList);
    }
    
    
    WebService static void updateContactsWebservice(String sfdcContactId) {
        updateContacts(new List<String>{sfdcContactId});
    }
    
    
    public static Zuora.zApi zuoraApiAccess(){ 
    Zuora.zApi zuoraApi = new Zuora.zApi();
        if (!Test.isRunningTest()) {
            zuoraApi.zlogin();
        } else {
            // nothing
        }
        return zuoraApi;
    }


    public static List<Zuora.zApi.SaveResult> updateZuoraObjects(Zuora.zApi zuoraApi, List<Zuora.zObject> zuoraObjectsToUpdateList) {
        List<Zuora.zApi.SaveResult> zuoraObjectsUpdateResults = new List<Zuora.zApi.SaveResult>();
        if (!Test.isRunningTest()) {
            zuoraObjectsUpdateResults = zuoraApi.zupdate(zuoraObjectsToUpdateList);
        } else {
            Zuora.zApi.SaveResult res = new Zuora.zApi.SaveResult();
            res.Success = true;
            res.Id = '1234';
            zuoraObjectsUpdateResults = new List<Zuora.zApi.SaveResult> { res };
        }
        return zuoraObjectsUpdateResults;
    }
    
    
    public static List<String> analyzeSaveResult(Zuora.zApi.SaveResult saveResult) {
        List<String> result = new List<String>(); 
        if ( !(saveResult.Success) ) {  
            for (Zuora.zObject error : saveResult.errors) {
                //String errorCode = (String)error.getValue('Code');
                //String message = (String)error.getValue('Message');
                result.add((String)error.getValue('Code'));
                result.add((String)error.getValue('Message'));
                //System.debug(errorCode);
                //System.debug(message);
            }
        }
        return result;
    }

  
    public static void sendNotificationEmail(String type, String message, Exception e) {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    
        //String emailAddr = 'kf@zuora.com';
        //String emailAddr2 = 'dm@zuora.com';          
        //String[] toAddresses = new String[] {emailAddr, emailAddr2};
        
        String[] toAddresses = Label.ZuoraErrorEmail.split(';');
        
        mail.setToAddresses(toAddresses);
        
        if (type == 'Contact') {            
            mail.setSubject('Company Name | SALESFORCE - ZUORA: Contact custom synch error.');
        } else if (type == 'PM') {
            mail.setSubject('Company Name | SALESFORCE - ZUORA: Payment Method change error.');
        }
        
        String textBody = '';
        textBody += message + '\r\n\r\n';
        if (e != null) {
            textBody += 'Exception: ' + e.getTypeName() + ' on line: ' + e.getLineNumber() + '.\r\n' + e.getMessage() + '\r\n' + e.getStackTraceString() + '\r\n\r\n';  
        }
                            
        mail.setPlainTextBody(textBody);
        try {            
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            System.Debug('###### INFO: Notification email sent to: ' + toAddresses + '\r\n The message is: ' + message);
        } catch(System.EmailException ex) {
            System.Debug('###### ERROR: ' + ex.getMessage());
        }
    }
    
    
    public static String checkEachContactHasAccount(Map<String, Contact> sfdcAccountIdToContactMap, List<Zuora__CustomerAccount__c> zuoraAccountList) {
        boolean sendErrorEmail = false;
        String errorEmailBody = '';
        
        Set<String> sfdcAccountIdForZuoraAccountsSet = new Set<String>();
        
        for (Zuora__CustomerAccount__c zuoraAccount : zuoraAccountList) {
            sfdcAccountIdForZuoraAccountsSet.add(zuoraAccount.Zuora__Account__c);
        }
        
        for (String sfdcAccountId : sfdcAccountIdToContactMap.keySet()) {
            if ( !sfdcAccountIdForZuoraAccountsSet.contains(sfdcAccountId) ) {
                sendErrorEmail = true;
                errorEmailBody += ('########## ERROR: No Zuora Customer Account details found in SFDC for Contact being updated: ');
                errorEmailBody += (sfdcAccountIdToContactMap.get(sfdcAccountId).Id +'\r\n');
                System.debug(errorEmailBody);
            }
        }
        errorEmailBody += ('Please repeat the change after running a Z-360 synchronization.');
        
        if (sendErrorEmail) {
            return errorEmailBody;
        } else {
            return null;
        }
    }

}