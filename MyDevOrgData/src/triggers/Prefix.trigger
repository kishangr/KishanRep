trigger Prefix on Lead (before insert,before update) 
{
   // List<Lead>LL = Trigger.New;
	for(Lead leadobj:Trigger.New)
    {
        leadobj.FirstName = 'Dr. '+leadobj.FirstName;
        //LL.add(leadobj);
    }
   	//insert LL;
}