trigger CreateCustomer on Customer__c (after insert) 
{
    Map<Id,Opportunity> OppMap = new Map<Id,Opportunity>([select Id,Active__c from Opportunity]);
	List<Customer__c> CustList = [select Id,Status__c,Opportunity__c from Customer__c where Opportunity__c IN:OppMap.keySet()];
    for(Customer__c x: CustList)
    {
     if(x.Status__c == 'Active')
     {
         OppMap.get(x.Opportunity__c).Active__c = True;
         System.debug('Active field value '+ OppMap.get(x.Opportunity__c).Active__c);
     }
    }
    update OppMap.values();
    
    
}