global class ZuoraInvoiceUpdate 
{
	@future(callout=true)
    public static void getInvoicePaymentDetails(Set<ID> InvoiceIdSet)
    {
        String ZInvoiceId;
        String ZAccId;
        String ZInvoiceNum;
        String ZPaymentNum;
        String Amount;
        String Balance;
        Date InvoicePaidDate;
        try{
                System.debug('Starting Zuora Callout');
                List<Zuora__ZInvoice__c> zInvoiceList = [select Id,Zuora__External_Id__c,Zuora__Account__c from Zuora__ZInvoice__c where ID in : InvoiceIdSet];
                /* Call Zuora to get the Subscription ID associated to this Invoice*/
                Zuora.zApi zApiInstance = new Zuora.zApi();
                if(!Test.isRunningTest())
                { 
                  zApiInstance.zlogin();  
                }
            for (Zuora__ZInvoice__c zInvoice : zInvoiceList)
                 {
                   zInvoiceId = zInvoice.Zuora__External_Id__c;
                   ZAccId = zInvoice.Zuora__Account__c;
                   if(!Test.isRunningTest())
                   {
                       String zoql = 'Select InvoiceId,InvoiceNumber,PaymentNumber, from Payment where InvoiceId=\''+zInvoiceId+'\'';
                       List<Zuora.zObject> invPaymentObj = zApiInstance.zquery(zoql);
                       System.debug('InListSize::' + invPaymentObj.size());
                       ZInvoiceNum = (String)invPaymentObj.get(0).getValue('InvoiceNumber');
                       zoql = 'Select InvoiceNumber,Amount,Balance from Invoice where InvoiceNumber=\''+ZInvoiceNum+'\'';
                       List<Zuora.zObject> invObj = zApiInstance.zquery(zoql);
                       Balance = (String)invobj.get(0).getValue('Balance');
                       Amount = (String) invobj.get(0).getValue('Amount');
                       zoql = 'Select UpdatedDate,InvoiceId from InvoicePayment where InvoiceId=\''+zInvoiceId+'\'';
                       List<Zuora.zObject> invdate = zApiInstance.zquery(zoql);
                       InvoicePaidDate = (Date)invdate.get(0).getValue('UpdatedDate');  
                   }
                 }
        }catch(Zuora.zRemoteException ex)
        {
            System.debug(ex.getMessage());
        }
    }
}