import { LightningElement, api, wire } from 'lwc';
import GET_PRODUCTS from '@salesforce/apex/ProductController.getProducts'
export default class FieldsProduct extends LightningElement {

    @api recordId;
    @wire(GET_PRODUCTS,{recordId:"$recordId"})
    products;

}