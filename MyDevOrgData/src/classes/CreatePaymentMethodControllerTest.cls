//©Copyright 2015 Estuate. All rights reserved.

@isTest(SeeAllData=true)
public class CreatePaymentMethodControllerTest {

/**
* Insert a test account in the db
*/
 
public  static Account makeAccount() 
{
        Account testAcc = new Account();
        testAcc.Name = 'my test account';
        insert testAcc;
        return testAcc;
}

/**
* Insert a test contact associated with an account in the db
*/


public  static Contact makeContact(Account testAcc) 
{
        Contact testContact = new Contact();
        testContact.FirstName = 'firstname';
        testContact.LastName = 'lastname';
        testContact.Email = 'email@mail.me';
        testContact.AccountId = testAcc.Id;
        insert testContact;
        return testContact;
 }
 
/**
 * Insert a test opportunity associated with an account
 */
 public static Opportunity makeOpportunity(Account testAcc) 
 {
        Opportunity testOpp = new Opportunity();
        testOpp.Name = 'my test opportunity';
        testOpp.StageName = 'Nurture';
        testOpp.CloseDate = System.today();
        testOpp.AccountId = testAcc.Id;
        insert testOpp;
        return testOpp;
    }    
/**
* Insert a test quote based on an opportunity in the db
*/
public static zqu__Quote__c makeQuote1(Opportunity testOpp) 
{
        zqu__Quote__c testQuote = new zqu__Quote__c();
        testQuote.Name = 'my test quote';
        testQuote.zqu__Opportunity__c = testOpp.Id;
        testQuote.zqu__StartDate__c = date.today();
        testQuote.zqu__InitialTerm__c = 12;
        insert testQuote;
        return testQuote;
    }

/**
*Initiate a test method to call respective methods and test on controller class
*/
    static testMethod void myUnitTest() 
    {
        Account acc = makeAccount();
        Contact con = makeContact(acc);
        Opportunity opp = makeOpportunity(acc);

        zqu__Quote__c quote = makeQuote1(opp);
        quote.zqu__StartDate__c = date.today();
        quote.zqu__SoldToContact__c = con.Id;
        quote.zqu__BillToContact__c = con.Id;
        quote.zqu__Currency__c = 'USD';
        quote.zqu__PaymentMethod__c='ACH';
        update quote;  
        
        zqu__Quote__c newquote = makeQuote1(opp);
        quote.zqu__StartDate__c = date.today();
        quote.zqu__SoldToContact__c = con.Id;
        quote.zqu__BillToContact__c = con.Id;
        quote.zqu__Currency__c = 'USD';
        quote.zqu__PaymentMethod__c='Bank Transfer';
        update newquote;  
        
        
   CreatePaymentMethodController zcon = new CreatePaymentMethodController ( new ApexPages.StandardController( quote ));
        Test.startTest();
        Test.stopTest();

    }
}