@JsonAccess(serializable='always' deserializable='always')
global class SingleHTMLOutput {
    @AuraEnabled
    global String htmlOutput;

global SingleHTMLOutput(String input) {
this.htmlOutput = input;
}
}