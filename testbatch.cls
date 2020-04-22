@isTest
public class testbatch {
    @isTest static void check(){
        list<Employee__c>empList=new list<Employee__c>();
        for(integer i=0;i<200;i++){
           Employee__c emp=new Employee__c();
            emp.Number_of_leave_count__c= 3;
            emp.Sick_Leave_Balance__c= 4;
            emp.Paid_Leave_Balance__c=5;
            emp.Date_of_Birth__c= Date.newInstance(2016, 12, 9);
            emp.Cell_Phone_Number__c='8888880953';
            emp.Emergency_Contact__c='1234567891';
            emp.First_Name__c='shub'+i;
            emp.Last_Name__c='test'+i; 
            emp.Gender__c='Male';
            emp.Personal_Email_id__c='pername@gmail.com'+i;
            emp.Preferred_Name__c='test';
            emp.Salutation__c='	Mr';
            empList.add(emp);
        }
        insert empList;
           
  Test.startTest();
      batchaura ba= new batchaura();
    database.executeBatch(ba);
    Test.stopTest();
    }
}