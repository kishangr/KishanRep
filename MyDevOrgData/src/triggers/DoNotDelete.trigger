trigger DoNotDelete on Account (before delete) 
{
	for(Account acc:Trigger.old)
    {
        //acc.addError('Cannot delete the record');
    }
}