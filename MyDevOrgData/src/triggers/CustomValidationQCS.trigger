trigger CustomValidationQCS on zqu__QuoteChargeSummary__c (before insert) 
{
	for(zqu__QuoteChargeSummary__c QuoteRP: Trigger.New)
    {
        if(QuoteRP.zqu__EffectivePrice__c < QuoteRP.zqu__ListPrice__c)
        {
            System.debug('Effective Price and Listprice '+QuoteRP.zqu__EffectivePrice__c +' '+ QuoteRP.zqu__ListPrice__c);
            QuoteRP.addError('Effective Price should be greater than List Price');
        }
    }
}