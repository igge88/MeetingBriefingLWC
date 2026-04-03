import { LightningElement, api } from 'lwc';

export default class HtmlOutputContainer extends LightningElement {
    @api value;

    get linkToDisplay() {
        try {
            // Path 1: Handles the extra 'htmlOutput' wrapper we see in your screenshot
            if (this.value?.htmlOutput?.htmlOutputs?.[0]?.htmlOutput) {
                return this.value.htmlOutput.htmlOutputs[0].htmlOutput;
            }
            
            // Path 2: Backup in case Agentforce strips the outer wrapper
            if (this.value?.htmlOutputs?.[0]?.htmlOutput) {
                return this.value.htmlOutputs[0].htmlOutput;
            }

            // Diagnostic: If it can't find the text, print everything so we aren't guessing in the dark!
            return this.value ? JSON.stringify(this.value) : 'No data received from Agent';
            
        } catch (error) {
            return 'Error: ' + error.message;
        }
    }
}