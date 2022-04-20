import { LightningElement, wire } from 'lwc';
import SubTodoController from '@salesforce/apex/TodoController.SubTodoController';

export default class Todo extends LightningElement {
    @wire(SubTodoController)
    ToDo;
}