public with sharing class ProductController {
    @AuraEnabled
    public static List<Product2> getProducts(String recordId){
        try {
            return [SELECT Id,Name,Description FROM Product2 WHERE Id =: recordId];

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}