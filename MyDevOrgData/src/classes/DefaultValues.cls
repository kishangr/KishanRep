global class DefaultValues extends zqu.CreateQuoteController.PopulateDefaultFieldValuePlugin{  
   global override void populateDefaultFieldValue
      (SObject record, zqu.PropertyComponentController.ParentController pcc)
   {    
      super.populateDefaultFieldValue(record, pcc);  
      
      //Populate default values in the quote header  
      record.put('zqu__InitialTerm__c', 12);    
      record.put('zqu__RenewalTerm__c', 12);    
      record.put('zqu__ValidUntil__c', Date.today().addDays(7));    
      record.put('zqu__StartDate__c', Date.today());    
      //record.put('zqu__PaymentMethod__c', 'Check');  
      record.put('zqu__BillingMethod__c', 'Email');
      
      Date d = (Date) record.get('zqu__StartDate__c');
      record.put('zqu__Service_Activation_Date__c', d);
      record.put('zqu__TermStartDate__c', d);
      record.put('zqu__AutoRenew__c', TRUE);   
      record.put('zqu__QuoteTemplate__c', 'Sample Quote Template');
      // Retrieve the account ID from the quote         
      Id accountId = (Id) record.get('zqu__Account__c');         
      
      // Find the contacts associated with the account         
      /*List<Contact>contacts = [SELECT Id, Name FROM Contact WHERE Account.Id = :accountId];         
      
      // Assuming the contacts are present set the billTo and soldTo to the first contact         
      if  (contacts.size() > 0) {             
         // System.debug('mp: about to add ' + contacts[0].Id + ' as a contact ID');             
         record.put('zqu__BillToContact__c', contacts[0].Id);             
         record.put('zqu__SoldToContact__c', contacts[0].Id);             
      
         // Beforeretrieving  the lookup  options, needs to populate the map first             
         super.setLookupOptions(pcc);             
      
         // Now retrieve the lookup component options             
         zqu.LookupComponentOptions billToOptions = super.getLookupOption('zqu__BillToContact__c');             
         billToOptions.targetId = contacts[0].Id;             
         billToOptions.targetName = contacts[0].Name;             
         zqu.LookupComponentOptions soldToOptions  = super.getLookupOption('zqu__SoldToContact__c');             
         soldToOptions.targetId = contacts[0].Id;             
         soldToOptions.targetName = contacts[0].Name;        
      } */
   }
}