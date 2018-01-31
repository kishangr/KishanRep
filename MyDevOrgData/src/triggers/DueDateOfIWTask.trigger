trigger DueDateOfIWTask on Task (before insert,before update) 
{
	if(Trigger.isInsert || Trigger.isUpdate)
    {
        DueDateOfIWTaskClass.UpdateDueDate(Trigger.New);
    }
}