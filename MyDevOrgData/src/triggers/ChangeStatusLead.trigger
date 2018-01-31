trigger ChangeStatusLead on Lead (before update) 
{
	//Map<Id,Lead> MapIdToLead = new Map<Id,Lead>([select Id,Status,CreatedDate,LastModifiedDate from Lead]);
    for(Lead lobj: Trigger.New)
    {
        DateTime fd = lobj.CreatedDate;
        Date dt = fd.date();
       Integer result = dt.monthsBetween(Date.today());
        if(result >= 1)
        {
            lobj.Status = 'Closed-Not Converted';
        }
    }
}