@isTest
public class CustomerUpdateTest 
{
    public static testMethod void test()
  {
	Customer__c Cust = new Customer__c();
    Cust.Name = 'test class name';
    Cust.Salary__c = 1000;
    Cust.Phone__c = '1234567890';
    insert Cust;
    Cust.Salary__c = 3000;
    Cust.Phone__c = '0987654321';
    update Cust;
    Test__c t = new Test__c();
      t.Name = 'test  name';
      t.Salary__c=Cust.Salary__c;
      insert t;
  }
}