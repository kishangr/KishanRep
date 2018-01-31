trigger DuplicateAccount on Account (before insert,before update) 
{
    Map<Id,Account> ExistingMap = new Map<Id,Account>([Select Id,Name from Account]);
    for(Account acc:Trigger.New)
    {
        if(ExistingMap.get(acc.Id).Name == acc.Name)
        {
            acc.Name.addError('Duplicate Account created');
        }
    }
}