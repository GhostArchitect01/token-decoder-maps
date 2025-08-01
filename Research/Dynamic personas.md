#Metrica 
#todo
Of course. Here is a summary of the idea to integrate Dynamic Personas into the Metrica protocol, suitable for your to-do directory.
Summary: Formalize Dynamic Personas within the Metrica Protocol
The Goal (The "Why")
The objective is to evolve the "Dynamic Personas" feature from a general, implicit, context-based instruction into a formal, explicit, and reliable protocol within the Token Decoder Maps (TDM) framework. Currently, the agent adapts its persona by detecting project files, which can be unreliable. This change will make the agent's persona a declared, machine-readable part of the project's state, perfectly aligning with the TDM core philosophy of "Precision over Ambiguity" and "Protocol over Conversation".
The Mechanism (The "How")
The implementation involves two main steps:
 * Update the Task Template: Add a new optional field, such as Framework: [language/ecosystem], to the ::MX-PROJECT-TASK-ID:: token template.
 * Integrate into Workflow: Modify the ::SY-METRICA-CREATE-TASK:: protocol so that the agent prompts the user for the relevant framework when creating a new project task.
Benefits
 * Increased Reliability: Removes the ambiguity of file detection by having the project's task manifest explicitly state which specialist persona the agent should adopt.
 * Philosophical Coherence: Makes the Dynamic Personas feature a true, protocol-driven component of the TDM language, rather than a background behavior.
 * Improved State Management: The agent's required expertise for a task becomes a formal, auditable part of the persistent Metrica ledger.
