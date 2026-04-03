global with sharing class HtmlTestAgent {
    @InvocableMethod(label='HtmlOutput' description='testing html output')
    global static List<HTMLTestOutput> HTMLReturn (List<HtmlTestInput> req) {
        
        // 1. Create the single output (the actual link)
        //SingleHTMLOutput anHTMLOutput = new SingleHTMLOutput('<a href=\'/001S800000tMQYSIA4\'>Test Account</a>');
        SingleHTMLOutput anHTMLOutput = new SingleHTMLOutput('<p>test output</p>');
        
        // 2. Add it to a list
        List<SingleHTMLOutput> theseHTMLOutputs = new List<SingleHTMLOutput>();
        theseHTMLOutputs.add(anHTMLOutput);
        
        // 3. Put that list into the "Available" container
        AvailableHTMLOutput avHTMLOutput = new AvailableHTMLOutput();
        avHTMLOutput.htmlOutputs = theseHTMLOutputs;
        
        // 4. Wrap it all up for the Agent
        HTMLTestOutput hto = new HTMLTestOutput();
        hto.htmlOutput = avHTMLOutput;
        
        List<HTMLTestOutput> returnThis = new List<HTMLTestOutput>();
        returnThis.add(hto);
        return returnThis;
    }

    @JsonAccess(serializable='always' deserializable='always')
    global class HtmlTestInput {
        @InvocableVariable
        global String htmlContent;
    }

    @JsonAccess(serializable='always' deserializable='always')
    global class HTMLTestOutput {
        @InvocableVariable
        global AvailableHTMLOutput htmlOutput;
    }
}