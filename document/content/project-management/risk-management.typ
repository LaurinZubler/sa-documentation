#import "../../utils/global.typ" as global

#let risk(
    description,
    inherentRiskProbability, inherentRiskImpact, inherentRiskLevel, 
    residualRiskProbability, residualRiskImpact, residualRiskLevel,
    countermeasures,
    occureActions
) = {
    global.paragraph("Description", description)
    global.paragraph("Inherent Risk Probabiliy", inherentRiskProbability)
    global.paragraph("Inherent Risk Impact", inherentRiskImpact)
    global.paragraph("Inherent Risk Level", inherentRiskLevel)
    global.paragraph("Residual Risk Probabiliy", residualRiskProbability)
    global.paragraph("Residual Risk Impact", residualRiskImpact)
    global.paragraph("Residual Risk Level", residualRiskLevel)
    global.paragraph("Countermeasures", countermeasures)
    global.paragraph("Actions on Risk Occurrence", occureActions)
    
} 

== Risk Management
=== Risk Analysis
The identified risks are assigned a probability of occurrence and impact on occurrence. Based on these values, the risk score is calculated and the risk is classified via the risk metrix as _low_, _medium_ or _high_.
The inherent risk level is before and the residual risk level is after the implementation of the countermeasures.

#figure(
    image("../../images/jira_risk_list.png", width: 95%),
    caption: [Screenshot of identified risks in _Jira_],
)

==== Risk Metrics
#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  [*Probability*], [*Impact*], [*Value*],
  [Rare], [Insignificant], [1],
  [Unlikely], [Low], [2],
  [Possible], [Moderate], [3],
  [Likely], [Major], [4],
  [Certain], [Severe], [5],
)

==== Risk Level Formula
#table(
  columns: (auto),
  inset: 10pt,
  [$"risk level"="probability" dot "impact"$]
)

==== Inherent Risks Matrix
#figure(
    image("../../images/jira_risk_inherent_matrix.png", width: 60%),
    caption: [Screenshot of inherent risk matrix in _Jira_],
)

==== Residual Risks Matrix

#figure(
    image("../../images/jira_risk_residual_matrix.png", width: 60%),
    caption: [Screenshot of residual risk matrix in _Jira_],
)

=== Risks
==== Staff Shortage
#risk(
    "The author of this thesis is no longer able to work due to illness, accidents or other unforeseen events.",
    "Possible", "Severe", "High",
    "Possible", "Major", "High",
    "The project documentation is constantly updated and working hours are documented in order to identify the project status at any time and to be able to resume work after an absence.",
    "If the loss of work is only for a short duration a request to postpone the final deadline can be submitted. Otherwise the theseis must be canceled or postponed to another semester."
)

==== Loss of Advisor
#risk(
    "The advisor of this thesis is no longer able to advise due to illness, accidents or other unforeseen events.",
    "Possible", "Moderate", "Moderate",
    "Possible", "Low", "Moderate",
    "The project documentation is constantly updated and working hours are documented in order to identify the project status at any time and to be able to resume advisement after an absence.",
    "If the loss of advisor is only for a short duration the thesis can be continued independently. Does the absence last longer and no representative advisor takes over, a complaint can be submitted to the academic advisor, the course director or the university management."
)

==== Failure of Critical Infrastructure
#risk(
    "The infrastructure used for writing and implementing this theses, mostly cloud services, can no longer be used.",
    "Rare", "Major", "Low",
    "Rare", "Low", "Low",
    "The probability of this occurring is very low and therefore no explicit countermeasures are taken.",
    "Depending on the failing infrastructure, a solution must be found spontaneously."
)

==== Failure of Personal Hardware
#risk(
    "The author's hardware for writing and implementing this thesis breaks or can no longer be used for other reasons.",
    "Rare", "Major", "Low",
    "Rare", "Moderate", "Low",
    "The probability of this occurring is very low and therefore no explicit countermeasures are taken. The author has household contents insurance which can compensate for damages.",
    "Depending on the failing hardware, a solution must be found spontaneously. As backup the university has hardware that can be used."
)

==== Failure of Third-Party Hardware
#risk(
    "Third-Party hardware for writing and implementing this thesis breaks or can no longer be used for other reasons.",
    "Rare", "Moderate", "Low",
    "Rare", "Moderate", "Low",
    "The probability of this occurring is very low and therefore no explicit countermeasures are taken. The author has liability insurance which can compensate for damages.",
    "Depending on the failing hardware, a solution must be found spontaneously."
)