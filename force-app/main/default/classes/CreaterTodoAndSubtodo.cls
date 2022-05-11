public with sharing class CreaterTodoAndSubtodo {
    public CreaterTodoAndSubtodo() {
        List<ToDo__C> newTodo = new List<ToDo__c>();
        List<SubToDo__c> subToDoForNewTodo = new List<SubToDo__c>();
        
        for(Integer countToCreateTodo=0;countToCreateTodo<3;countToCreateTodo++) {
            ToDo__c forNewTodo = new ToDo__c(
                RecordTypeId =Schema.SObjectType.ToDo__c.getRecordTypeInfosByName().get('Later').getRecordTypeId(),
                Name = 'Test' + countToCreateTodo
                
            );
           
        
            newTodo.add(forNewTodo);
        }
        insert newTodo;
        
            for(ToDo__C todoInfo: newTodo){
                for(Integer countSubTodoInToDo=0;countSubTodoInToDo<2;countSubTodoInToDo++){
            SubToDo__c newSubTodo = new SubToDo__c(Name ='TestSub'+countSubTodoInToDo, ToDo__c = todoInfo.Id);
            subToDoForNewTodo.add(newSubTodo);
        }}
        
        insert subToDoForNewTodo;
       
    }
}
