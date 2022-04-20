public with sharing class ShedulTodo2 {
    public void execute(SchedulableContext sch) {
        List<ToDo__c> SelDel = new List<ToDo__c>([
            Select 
            Id, Name , Time90__c
            FROM ToDo__c
            WHERE Time90__c = True
        ]);
        Delete SelDel;
        
    }
}
