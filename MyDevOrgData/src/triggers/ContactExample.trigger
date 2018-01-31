trigger ContactExample on Contact (before update) 
{
    Map<Id,Contact> AccToConMap = new Map<Id,Contact>();
    List<Account> AccList = new List<Account>();
    List<Account> updatedAcc = new List<Account>();
	for(Contact con:Trigger.New)
    {
        AccToConMap.put(con.AccountId,con);
    }
    AccList = [select Id,Name,EmailAcc__c,MobileAcc__c from Account where Id IN:AccToConMap.keySet()];
    for(Account acc:AccList)
    {
        acc.EmailAcc__c = AccToConMap.get(acc.Id).Email;
        acc.MobileAcc__c = AccToConMap.get(acc.Id).MobilePhone;
        updatedAcc.add(acc);
    }
    update updatedAcc;
}