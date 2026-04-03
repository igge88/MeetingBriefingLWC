@JsonAccess(serializable='always' deserializable='always')
global class Flight {

    @AuraEnabled
    global String flightId;

    @AuraEnabled
    global Integer numLayovers;

    @AuraEnabled
    global Boolean isPetAllowed;

    @AuraEnabled
    global Long price;

    @AuraEnabled
    global Double discountPercentage;

    @AuraEnabled
    global Integer durationInMin;

    // --- ADDED PER MATTHEW'S INSTRUCTIONS ---
    @AuraEnabled
    global String flightLink;

    global Flight(String flightId, Integer numLayovers, Boolean isPetAllowed, 
                  Long price, Double discountPercentage, Integer durationInMin) {
        this.flightId = flightId;
        this.numLayovers = numLayovers;
        this.isPetAllowed = isPetAllowed;
        this.price = price;
        this.discountPercentage = discountPercentage;
        this.durationInMin = durationInMin;
        
        // --- ADDED PER MATTHEW'S INSTRUCTIONS ---
        this.flightLink = '<a href=\'/001S800000tMQYSIA4\'>Test</a>';
    }
}