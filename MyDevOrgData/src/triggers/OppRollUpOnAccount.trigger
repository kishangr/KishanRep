trigger OppRollUpOnAccount on Opportunity (after insert,after update,after delete) 
{
	Map<Id,List<Opportunity>> AccToOpp = new Map<Id,List<Opportunity>>();
    Set<Id> AccId = new Set<Id>();
    Double OppAmount = 0.0;
    List<Opportunity> OppList = new List<Opportunity>();
    List<Account> AccList = new List<Account>();
    List<Opportunity> TempOppList = new List<Opportunity>();
    if(Trigger.isInsert || Trigger.isUpdate)
    {
        for(Opportunity opp: Trigger.New)
        {
            AccId.add(opp.AccountId);
        }
    }
    if(Trigger.isDelete)
    {
        for(Opportunity OppObj: Trigger.old)
        {
            AccId.add(OppObj.AccountId);
        }
    }
    
    if(AccId.size() > 0)
    {
        OppList = [select Id,AccountId,Name,Amount from Opportunity where AccountId IN: AccId];
        for(Opportunity op: OppList)
        {
            if(!AccToOpp.containsKey(op.AccountId))
            {
                AccToOpp.put(op.AccountId, new List<Opportunity>());
            }
            AccToOpp.get(op.AccountId).add(op);
        }
        AccList = [select Id,Total_Opportunity_Amount__c from Account where Id IN: ACCId];
        for(Account Acc: AccList)
        {
        	TempOppList = AccToOpp.get(Acc.Id);
            for(Opportunity Oppo: TempOppList)
            {
                if(Oppo.Amount != null)
                {
              OppAmount+= Oppo.Amount;
                }
            }
            Acc.Total_Opportunity_Amount__c = oppAmount;
        }
    }
    update AccList;
}