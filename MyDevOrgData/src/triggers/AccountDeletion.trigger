trigger AccountDeletion on Account (before delete) 
{
    for(Account a : [select Id from Account where Id in (select AccountId from Opportunity) and Id in:Trigger.old])
    {
      Trigger.oldMap.get(a.Id).addError('Cannot delete account with related opportunity.');
    }
}