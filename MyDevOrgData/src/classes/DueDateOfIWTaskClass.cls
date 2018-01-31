public class DueDateOfIWTaskClass 
{
    public static void UpdateDueDate(List<Task> task)
    {
        for(Task t: task)
        {
            if(t.Category__c == 'Task for IW' && t.Status == 'Open' && t.Priority == 'Normal' && t.Subject == 'Task from External' && t.ActivityDate == Null)
            {
                t.ActivityDate = System.today();
            }
        }
                
    }
}