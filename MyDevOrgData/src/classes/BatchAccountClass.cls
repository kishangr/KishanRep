global class BatchAccountClass implements Database.Batchable<Sobject>
{
	global Database.QueryLocator start(Database.BatchableContext bc)
    {
        String query = 'Select Id,Name from Account';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc,List<Account> accList)
    {
        for(Account acc:accList)
        {
            acc.Name = acc.Name+' bc';
            try
            {
                update acc;
            }
            catch(Exception ec)
            {
                System.debug(ec);
            }
        }
    }
    global void finish(Database.BatchableContext bc)
    {
        Messaging.SingleEmailMessage sm = new Messaging.SingleEmailMessage();
        
        String[] u = new String[]{userinfo.getUserEmail()};
        //u = [select Id,email from user];
        sm.setToAddresses(u);
		sm.setSubject('single email message example');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{});
    }
}