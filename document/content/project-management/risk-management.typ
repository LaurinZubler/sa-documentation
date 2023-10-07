#import "../../utils/global.typ" as global

== Risk Management
=== Risks
#let risk(
    description,
    inherentRiskProbability, inherentRiskImpact, inherentRiskLevel, 
    residualRiskProbability, residualRiskImpact, residualRiskLevel,
    countermeasures,
    occureActions
) = {
    global.row("Description", description)
    global.row("Inherent Risk Probabiliy", inherentRiskProbability)
    global.row("Inherent Risk Impact", inherentRiskImpact)
    global.row("Inherent Risk Level", inherentRiskLevel)
    global.row("Residual Risk Probabiliy", residualRiskProbability)
    global.row("Residual Risk Impact", residualRiskImpact)
    global.row("Residual Risk Level", residualRiskLevel)
    global.row("Countermeasures", countermeasures)
    global.row("Actions on Risk Occurrence", occureActions)
    
} 

==== Staff Shortage
#risk(
    "The author of this thesis is no longer able to work due to illness, accidents or other unforeseen events.",
    "Possible", "Severe", "High",
    "Possible", "Severe", "High",
    "The project documentation is constantly updated and working hours are documented in order to identify the project status at any time and to be able to resume work after an absence.",
    "If the loss of work is only for a short duration a request to postpone the final deadline can be submitted. Otherwise the theseis must be canceled or postponed to another semester."
)


==== Loss of Advisor
#risk(
    "The advisor of this thesis is no longer able to advise due to illness, accidents or other unforeseen events.",
    "Possible", "Severe", "High",
    "Possible", "Severe", "High",
    "The project documentation is constantly updated and working hours are documented in order to identify the project status at any time and to be able to resume advisement after an absence.",
    "If the loss of advisor is only for a short duration the thesis can be continued independently. Does the absence last longer and no representative advisor takes over, a complaint can be submitted to the academic advisor, the course director or the university management."
)

