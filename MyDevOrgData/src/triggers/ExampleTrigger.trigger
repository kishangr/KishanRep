trigger ExampleTrigger on Contact (after insert,after delete) 
{
	if(Trigger.isInsert)
    {
        Integer rc = Trigger.New.size();
        
        
    }
}