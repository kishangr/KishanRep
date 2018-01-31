global class RulesEngineSampleController implements
  zqu.ZQuoteRulesEngine.QuoteRulesEnginePlugin {
  
  public Boolean runValidationRules(zqu__Quote__c quote,
    List<zqu.ZChargeGroup> zcgs, List<zqu.ZQuoteRulesEngine.ChangeLog> logs)
  {
   	for(zqu.ZChargeGroup Zcg:zcgs)       
    {
        for(zqu.zCharge zc: Zcg.zCharges)
        {
        zqu__QuoteRatePlanCharge__c qrpc = new zqu__QuoteRatePlanCharge__c();
        qrpc.zqu__ListPrice__c = Decimal.valueOf(zc.LIST_PRICE);
        qrpc.zqu__EffectivePrice__c = zc.isEffectivePriceEditable ?
           Decimal.valueOf(zc.EFFECTIVE_PRICE) : null;
         if(qrpc.zqu__EffectivePrice__c < qrpc.zqu__ListPrice__c)
         {
           zqu.ZQuoteRulesEngine.ChangeLog log = new zqu.ZQuoteRulesEngine.ChangeLog();
      		log.description = 'Effective Price should not be less than List Price';
      		logs.add(log);
            System.debug('Log values: '+ logs);
             return false;
         }
         }
    }
    return true;
  }
     
   
 public void runPriceRules(List<zqu.ZChargeGroup> zcgs,
   List<zqu.ZQuoteRulesEngine.ChangeLog> logs){
          
  } 
 
  public Map<String, List<String>> runProductRules(zqu__Quote__c quote,
    List<String> ratePlanIds, List<zqu.ZQuoteRulesEngine.ChangeLog> logs)
  {
   
    Map<String, List<String>> relatedRatePlanIdMap = new Map<String, List<String>>();
    relatedRatePlanIdMap.put(zqu.ZQuoteRulesEngine.PRODUCT_RULE_TYPE_ADDED_ENABLED,
      new List<String>());
    relatedRatePlanIdMap.put(zqu.ZQuoteRulesEngine.PRODUCT_RULE_TYPE_ADDED_DISABLED,
      new List<String>());
    relatedRatePlanIdMap.put(zqu.ZQuoteRulesEngine.PRODUCT_RULE_TYPE_REMOVED_ENABLED,
      new List<String>());
    return relatedRatePlanIdMap;
  }  
}