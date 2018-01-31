trigger contactcreate on Account (after insert) 
{
	Map<Id,Account> IdToLocation = new Map<Id,Account>([select Id,Name,NumberOfLocations__c from Account]);
    List<Contact> contactList = new List<Contact>();
    for(Account acc: Trigger.New)
    {
        for(Integer i=0;i< IdToLocation.get(acc.Id).NumberOfLocations__c;i++)
        {
            Contact c = new Contact();
            c.LastName = 'Test'+i;
            //c.AccountId = acc.Id;
            c.Email = 'kishan.g.r@gmail.com';
            c.Phone = '09876543422';
            contactList.add(c);
        }
    }
    if(!contactList.isEmpty())
    {
        insert contactList;
    }
}