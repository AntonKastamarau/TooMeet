public with sharing class For3months implements Schedulable{
    public void execute(SchedulableContext sch){
        List<ForTodoCMT__mdt> SetingsForTodo = new List<ForTodoCMT__mdt>(
            [SELECT DataTimeForTodo__c 
            FROM ForTodoCMT__mdt WHERE label = 'DateForTodoStart']);
        DateTime getTime  ;
        DateTime CmdUpdateDateTime = Date.today();

        for(ForTodoCmt__mdt todomdt: SetingsForTodo){
            getTime = todomdt.DataTimeForTodo__c;
            todomdt.DataTimeForTodo__c = CmdUpdateDateTime;
        }
        DateTime ad3Mounths = getTime.addMonths(3);
        List<ToDo__c> oldDataTodo = new list<ToDo__c>([SELECT Name , Id, CreatedDate
        FROM ToDo__c ]);
        List<ToDo__c> DataDeleteTodo = new List<ToDo__c>();
        for(ToDo__c ForOldTodo: oldDataTodo){
            if(ForOldTodo.CreatedDate > ad3Mounths){
                DataDeleteTodo.add(ForOldTodo);
            }
        }
        Delete DataDeleteTodo;
    }
}
