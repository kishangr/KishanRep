trigger CreateContact on Account (after insert) 
{
    List<Contact> ConList  = new List<Contact>();
    for(Account acc: Trigger.New)
    {
        for(Integer i=1;i<= acc.NumberofLocations__c;i++)
        {
            Contact c = new Contact();
            c.FirstName = 'Test'+ i;
            c.LastName = 'LastName';
            c.AccountId = acc.Id;
            c.Email = 'kishan.g.r@gmail.com';
            ConList.add(c);
        }
    }
    if(!ConList.isEmpty()){
    insert ConList;
    }
}