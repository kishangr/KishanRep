trigger ChangeStageOpp on Opportunity (before update) 
{
	for(Opportunity opp : Trigger.New)
    {
        DateTime cd = opp.CreatedDate;
        Date dt = cd.date();
        Integer rslt = dt.monthsBetween(Date.today());
        if(rslt >= 3)
        {
            opp.StageName = 'Qualification';
        }
    }
}