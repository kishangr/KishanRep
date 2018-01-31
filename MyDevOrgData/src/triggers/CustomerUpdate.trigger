trigger CustomerUpdate on Customer__c (before update) 
{
	List<Test__c> Test = new List<Test__c>();
    for(Customer__c cus: Trigger.New)
    {
        Test__c t = new Test__c();
        t.Name = 'Test';
        t.Salary__c = cus.Salary__c;
        Test.add(t);
    }
    insert Test;
}