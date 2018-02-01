trigger AccountAddressTrigger on Account (before insert,before update) 
{
    List<Account> acntList = new List<Account>();
	for(Account acc:Trigger.New)
    {
        if(acc.Match_Billing_Address__c == True)
        {
            acc.ShippingPostalCode = acc.BillingPostalCode;
        }
        acntList.add(acc);
    }
}