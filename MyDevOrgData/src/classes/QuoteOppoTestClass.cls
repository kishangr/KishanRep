@isTest

public class QuoteOppoTestClass
{
        public static List<Opportunity> insertOppo()
        {
            List<Opportunity> opp = new List<Opportunity>();
            for(integer i=1;i<=201;i++)
            {
            Opportunity oppo = new Opportunity();
            oppo.Name = 'TestOppo';
            oppo.CloseDate = Date.today();
            oppo.StageName = 'New';
            opp.add(oppo);
            }
            
            test.startTest();
            insert opp;
            return opp;
         }
         public static List<zqu__Quote__c> insertQuote(List<Opportunity> Op1)
        {
            List<zqu__Quote__c> zqu = new List<zqu__Quote__c>();
            //for(integer j=1;j<=10;j++)
            for(Opportunity a:op1)
            {
            zqu__Quote__c zqo = new zqu__Quote__c();
            zqo.Name = 'Quote for Opportunity';
            zqo.zqu__Opportunity__c = a.Id;
            zqo.zqu__ValidUntil__c = Date.today();
            zqo.zqu__StartDate__c = Date.today();
            zqo.zqu__InitialTerm__c = 12;
            zqo.zqu__RenewalTerm__c = 12;
            zqo.QuoteTriggerTest__c = 40;
            zqu.add(zqo);
            }
            insert zqu;
            return zqu;
        }
        public static List<zqu__Quote__c> updateQuote(List<zqu__Quote__c> zq2)
        {
            List<zqu__Quote__c> zqu1 = new List<zqu__Quote__c>();
            
                for(zqu__Quote__c z: zq2)
                {     
                z.QuoteTriggerTest__c = 50;
                zqu1.add(z);
                }
            
            update zqu1;
            test.stopTest();
            return zqu1;
        }
        static testmethod void main()
    {             
         List<Opportunity> op1 = QuoteOppoTestClass.insertOppo();
         integer count = 0;
         List<zqu__Quote__c> zq1 = QuoteOppoTestClass.insertQuote(op1);
         integer count2 = 0;
         
         
        System.debug('No of opportunities created is = '+ op1.size());
        System.debug('No of quotes created is = '+ zq1.size());
        zqu__Quote__c testzq = zq1.get(200);
        Opportunity testOpp = [select id,QuoteTriggerTest__c from Opportunity where ID =:testzq.zqu__Opportunity__c];
        System.debug('Quote Test Value:'+testzq.QuoteTriggerTest__c);
        System.debug('Opportunity Test Value:'+testOpp.QuoteTriggerTest__c);  
        System.AssertEquals(testzq.QuoteTriggerTest__c,testOpp.QuoteTriggerTest__c); 
      
       // List<zqu__Quote__c> updatedQuoteList= updateQuote(zq1);
        testzq.QuoteTriggerTest__c = 20;
        update testzq;
        //zqu__Quote__c testzqUp = updatedQuoteList.get(49);
        Opportunity testOppUp = [select id,QuoteTriggerTest__c from Opportunity where ID =:testzq.zqu__Opportunity__c];
        System.debug('Quote Test Value:'+testzq.QuoteTriggerTest__c);
        System.debug('Opportunity Test Value:'+testOppUp.QuoteTriggerTest__c);  
        System.AssertEquals(testzq.QuoteTriggerTest__c,testOppUp.QuoteTriggerTest__c); 
      
    }  
    
   }