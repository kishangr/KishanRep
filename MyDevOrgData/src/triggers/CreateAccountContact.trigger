trigger CreateAccountContact on Account (after insert) 
{
	if(Trigger.isInsert)
    {
        List<Contact> ConList = new List<Contact>();
        List<Opportunity> OppList = new List<Opportunity>();
        List<zqu__Quote__c> QuoteList = new List<zqu__Quote__c>();
        zqu__Quote__c quoteobj = new zqu__Quote__c();
        for(Account acc: Trigger.New)
        {
            Contact c = new Contact(LastName= 'Test Contact',AccountId=acc.Id,EMail='kishan.g.r@gmail.com');
            Opportunity Opp = new Opportunity(Name = 'Test Opportunity',CloseDate = Date.today(),StageName = 'Prospecting',AccountId = acc.Id);
            quoteobj.Name='Quote Test trigger';
            quoteobj.zqu__Account__c=acc.Id;
            quoteobj.zqu__BillToContact__c= c.Id;
            quoteobj.zqu__SoldToContact__c=c.Id;
            quoteobj.zqu__ValidUntil__c=Date.today();
            quoteobj.zqu__InitialTerm__c=12;
            quoteobj.zqu__RenewalTerm__c= 12;
            OppList.add(Opp);
            ConList.add(c);
            //QuoteList.add(quoteobj);
        }
        if(!ConList.isEmpty())
    {
        insert ConList;
    }
        if(!OppList.isEmpty())
    {
        insert OppList;
    }
    for(Opportunity Temp:OppList)
    {
        quoteobj.zqu__Opportunity__c = Temp.Id;
        QuoteList.add(quoteobj);
    }
        if(!QuoteList.isEmpty())
    {
        insert QuoteList;
    }
    }
    
}