trigger QuoteToOppo on zqu__Quote__c (after insert, after update)
{
    List<zqu__Quote__c> QuoteList = new List<zqu__Quote__c>([Select Id,QuoteToOppo__c,zqu__Opportunity__c,QuoteTriggerTest__c,zqu__Previewed_MRR__c,zqu__Previewed_TCV__c,zqu__Previewed_Total__c from zqu__Quote__c where Id IN:Trigger.New]);
    
    Map<ID,zqu__Quote__c> QuoteMap = new Map<ID,zqu__Quote__c>();
    
    for(zqu__Quote__c Quote: QuoteList)
    {
    QuoteMap.put(Quote.zqu__Opportunity__c,Quote);
    }
    
    List<Opportunity> UpdateOpp = new List<Opportunity>();
    List<zqu__Quote__c> UpdateQuote = new List<zqu__Quote__c>();
    
    List<Opportunity> OppoList = new List<Opportunity>([select Id,QuoteTriggerTest__c from Opportunity where Id =:QuoteMap.keyset()]);
    
    for(Opportunity opp:OppoList)
    {
        zqu__Quote__c zQuote = QuoteMap.get(opp.Id);
        opp.MRR__c = zQuote.zqu__Previewed_MRR__c;
        opp.TCV__c = zQuote.zqu__Previewed_TCV__c;
        opp.Total__c = zQuote.zqu__Previewed_Total__c;
        opp.QuoteTriggerTest__c = zQuote.QuoteTriggerTest__c;
        UpdateOpp.add(opp);
        
        if(zQuote.QuoteToOppo__c == false)
        {
            zQuote.QuoteToOppo__c = true;
            UpdateQuote.add(zQuote);
        }
    }
    update UpdateQuote;
    update UpdateOpp;
}