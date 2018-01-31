trigger UpdateInvoiceDetails on Zuora__ZInvoice__c (after insert) 
{
	ZuoraInvoiceUpdate.getInvoicePaymentDetails(Trigger.NewMap.keySet());
}