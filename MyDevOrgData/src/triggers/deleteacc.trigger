trigger deleteacc on Account (before delete) 
{
    for(Account acc: Trigger.old)
    {
        acc.addError('cannot delete the account');
    }
}