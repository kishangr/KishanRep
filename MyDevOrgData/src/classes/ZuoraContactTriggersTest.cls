@isTest (SeeAllData=true)
public with sharing class ZuoraContactTriggersTest{

    private static testMethod void testContactUpdateTrigggerMethod(){
    
        List<Account> accList = new List<Account>();
        List<Zuora__CustomerAccount__c> customerAccList = new List<Zuora__CustomerAccount__c>();
        List<Contact> contList = new List<Contact>();
       
        for (integer i=0; i < 200; i++) {   
            Account acc = new Account(Name = 'Test Account');
            accList.add(acc);
        }   
        
        insert accList;
        
        for (integer i=0; i < 200; i++) {
            Zuora__CustomerAccount__c customerAcc = new Zuora__CustomerAccount__c(Zuora__Account__c = accList.get(i).Id);
            customerAccList.add(customerAcc);

            Contact cont = new Contact(AccountId = accList.get(i).Id, FirstName = 'Test Contact First Name', LastName = 'Test Contact Last Name');
            contList.add(cont);
         }
         
         insert customerAccList;
         insert contList;
        
         List<Contact> contList2 = new List<Contact>();
         
         for (Contact cont : contList) {
            cont.Phone = '123';
            contList2.add(cont);
         }
              
        update contList2;
            
        ZuoraContactUpdater.sendNotificationEmail('Contact', 'test', null);
    
    }
}