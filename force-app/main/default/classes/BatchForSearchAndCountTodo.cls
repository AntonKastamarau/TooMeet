public with sharing class BatchForSearchAndCountTodo implements Database.Batchable<sObject>, Database.Stateful{
    public Integer numberOfProcessedRecords = 0;
    public Integer numberOfBatch = 0;
    public Database.QueryLocator start(Database.BatchableContext bc)  {

        return Database.getQueryLocator('select CountSubToDo__c ,(Select name from SubToDos1__r Where name != null)from Todo__c ');

    }
    public void execute(Database.BatchableContext bc, List<ToDo__c> toDoList){
       
        for(ToDo__c countSubTodo :toDoList){
            if(countSubTodo.SubToDos1__r != null){
                Integer countSize = countSubTodo.SubToDos1__r.size();
                countSubTodo.CountSubToDo__c = countSize;
                numberOfProcessedRecords = numberOfProcessedRecords + 1;


            }
        }
        Update toDoList;
        numberOfBatch = numberOfBatch +1;
    }
    public void finish(Database.BatchableContext bc) {
        System.debug('Number of Records' + numberOfProcessedRecords);
        System.debug('Number of Batch' + numberOfBatch);

//Id jobId = DataBase.executeBatch(new BatchForSearchAndCountTodo(), 5);
//System.debug([SELECT Id, Status, NumberOfErrors FROM AsyncApexJob WHERE Id =: jobId]);
    }
}
