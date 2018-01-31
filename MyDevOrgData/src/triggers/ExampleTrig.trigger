trigger ExampleTrig on Contact (after insert,after delete)
{
    if (Trigger.isInsert)
    {
        Integer recCount = Trigger.New.size();
        System.debug(recCount);
    }
    else if (Trigger.isDelete)
    {
        
    }
}