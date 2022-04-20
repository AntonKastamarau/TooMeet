import { LightningElement, wire } from 'lwc';
import SubTodoController from '@salesforce/apex/TodoController.SubTodoController';


export default class LightningExampleAccordionBasic extends LightningElement {
    activeSectionMessage = '';
    @wire(SubTodoController) peremen;
    
    handleToggleSection(event) {
        this.activeSectionMessage =
            'Open section name:  ' + event.detail.openSections;
    }
      
}