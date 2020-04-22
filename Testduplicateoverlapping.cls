@istest
public class Testduplicateoverlapping {
 Public static testMethod void contactDmlTest()
    {
        
        Employee__c emp=new Employee__c();
            emp.Number_of_leave_count__c= 1;
            emp.Sick_Leave_Balance__c= 4;
            emp.Paid_Leave_Balance__c=5;
            emp.Date_of_Birth__c= Date.newInstance(2016, 12, 9);
            emp.Cell_Phone_Number__c='8888880953';
            emp.Emergency_Contact__c='1234567891';
            emp.First_Name__c='shub';
            emp.Last_Name__c='test'; 
            emp.Gender__c='Male';
            emp.Personal_Email_id__c='pername@gmail.com';
            emp.Preferred_Name__c='test';
            emp.Salutation__c='	Mr';
            emp.Employee_ID__c=12345678;
            insert emp;
        Leave_Request__c LeaveReq = new Leave_Request__c();
        LeaveReq.Employee__c=emp.id;
        //LeaveReq.Employee__c=emp.Full_Name__c;
        LeaveReq.Start_Date__c=Date.newInstance(2019, 12, 9);
        LeaveReq.End_Date__c=Date.newInstance(2019, 12, 15);
        LeaveReq.Leave_Applied_For__c='Full day';
        LeaveReq.Leave_Type__c='Sick Leave';
        
        insert LeaveReq;
         Leave_Request__c LeaveReqe = new Leave_Request__c();
        LeaveReqe.Employee__c=emp.id;
        //LeaveReq.Employee__c=emp.Full_Name__c;
        LeaveReqe.Start_Date__c=Date.newInstance(2019, 12, 19);
        LeaveReqe.End_Date__c=Date.newInstance(2019, 12, 25);
        LeaveReqe.Leave_Applied_For__c='Full day';
        LeaveReqe.Leave_Type__c='Paid Leave';
        
        insert LeaveReqe;
        
      
        
       
      
    }    
}