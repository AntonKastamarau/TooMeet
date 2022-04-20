public with sharing class Helpper {
    public static void Helpper(List<Case> newList) {
        List<ToDo__c> todo = new List<ToDo__c>();
        
        for(Case Lcase :newList){
            if(Lcase.Origin == 'Email'){
             ToDo__c todo1 = new ToDo__c(
            Name = Lcase.Origin,
            RecordTypeId =Schema.SObjectType.ToDo__c.getRecordTypeInfosByName().get('Later').getRecordTypeId()
            );
            insert todo1;
            }
            
             
            
        }
    }
    public static void HelpperForQueue(List<ToDo__C> ListCase, Map<Id,ToDo__C> MapIdCase, List<ToDo__C> ListCaseOld,
    Map<Id,ToDo__C> MapIdCaseOld){
        String gsRecordTypeID = Schema.SObjectType.ToDo__c.getRecordTypeInfosByName().get('Today').getRecordTypeId();
      //  Id grou1 = new Id([SELECT Id from Group WHERE Type = 'Queue' AND DeveloperName = 'Later']);
        List<ToDo__C> too = new List<ToDo__C>([SELECT OwnerID FROM ToDo__c]);

       

    
        //For(ToDo__c to: too){
          //  for(Group gr : [SELECT Id, Name from Group WHERE Type = 'Queue' AND DeveloperName = 'Later']){
                
            //        to.OwnerID = gr.Id;
                
                
        
      //  }update too;}
            
               
    
    }
}