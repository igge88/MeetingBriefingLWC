@JsonAccess(serializable='always' deserializable='always')
global class AvailableHTMLOutput {

    @AuraEnabled
    global List<SingleHTMLOutput> htmlOutputs;
}
    
