trigger AddRelatedRecord on Account (after insert, after update) 
{
	List<Opportunity> oppList = new List<Opportunity>();
    
    Map<Id,Account> acctsWithOpps = new Map<Id,Account>([select Id,(select Id from Opportunities) from Account where Id IN:Trigger.New]);
   for(Account a : Trigger.New) 
   {
       System.debug('Opportunity size:'+ acctsWithOpps.get(a.Id).Opportunities.size());
       
       if (acctsWithOpps.get(a.Id).Opportunities.size() == 0)
       {
           oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                         StageName='Prospecting',
                                         CloseDate= System.today().addMonths(1),
                                          AccountId = a.Id));
       }
   }
    if (oppList.size() > 0)
    {
        insert oppList;
    }
}