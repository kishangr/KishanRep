trigger UpdateEndDate on zqu__Quote__c (after insert,after update) 
{
   // if(checkRecursive.runOnce())
    //{
    List<zqu__Quote__c> QuoteObj = [select Id,zqu__InitialTerm__c,zqu__StartDate__c,End_term_Date__c from zqu__Quote__c where Id =: Trigger.New];
    system.debug('testing trigger');
    //zqu__Quote__c NewQuoteObj = new zqu__Quote__c();
    for(zqu__Quote__c Qobj: QuoteObj)
    {
        system.debug('Before insert starts');
        Date TempDate = Date.valueOf(Qobj.zqu__StartDate__c);
        System.debug('Start Date: '+ TempDate);
        System.debug('Initial term: '+ Qobj.zqu__InitialTerm__c);
        Integer Months = (Integer)Qobj.zqu__InitialTerm__c;
        System.debug('Month: '+ Months);
        Qobj.End_term_Date__c = TempDate.addMonths(Months);
    System.debug(Qobj.End_term_Date__c);
        QuoteObj.add(Qobj);
    }
        
        update QuoteObj;
    //}
}