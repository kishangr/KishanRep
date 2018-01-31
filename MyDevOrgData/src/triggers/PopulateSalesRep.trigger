trigger PopulateSalesRep on Account (before insert,before update) 
{
    Account a = new Account();
    List<Account> UpdateList = new List<Account>();
	List<Account> AccList = [select Id,CreatedById,Name,Sales_Rep__c from Account where Id IN: Trigger.New];
    Map<Id,Account> IdtoAcc = new Map<Id,Account>();
    for(Account acc: AccList)
    {
        IdtoAcc.put(acc.CreatedById, acc);
    }
    System.debug('IdtoAcc values '+ IdtoAcc);
    List<User> UserList = [select Id,FirstName,LastName from User where Id IN: IdtoAcc.keySet()];
    System.debug('List of users '+ UserList);
    for(User u:UserList)
    {
        //IdtoAcc.get(u.Id).Sales_Rep__c = u.FirstName+' '+ u.LastName;
        a.Id = IdtoAcc.get(u.Id).Id;
        a.Sales_Rep__c = u.FirstName+' '+ u.LastName;
        System.debug('a Id '+ a);
        UpdateList.add(a);
        System.debug('UpdateList: '+ UpdateList);
    }
   if(UpdateList.isEmpty())
    {
        insert UpdateList;
    }
}