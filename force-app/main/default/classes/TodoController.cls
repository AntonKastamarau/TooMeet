public with sharing class TodoController {
   
    @AuraEnabled(Cacheable=true)
    public static List<SubToDo__c> SubTodoController() {
        return [Select  ToDo__r.Name, Name From SubToDo__c];
    }
    
}
