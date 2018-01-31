trigger PreventDuplicate on Account (before insert,before update) 
{
    Map<Id,Account> ExistingAccMap = new Map<Id,Account>([select Id,Name from Account]);
    for(Account a: Trigger.New)
    {
        if(a.Name == ExistingAccMap.get(a.Id).Name)
        {
            a.adderror('You cannot create a duplicate account');
        }
    }
}