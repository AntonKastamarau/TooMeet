public with sharing class ShedulTodo implements Schedulable {
    public void execute(SchedulableContext sch) {
        List<ToDo__c> SelDel = new List<ToDo__c>([
            Select 
            Id, Name , CreatedById
            FROM ToDo__c
        ]);
    }
}
