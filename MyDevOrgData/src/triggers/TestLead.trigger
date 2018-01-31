trigger TestLead on Lead (after insert) 
{
	
        TestCS__c test = TestCS__c.getOrgDefaults();
    System.debug(test);
    
}