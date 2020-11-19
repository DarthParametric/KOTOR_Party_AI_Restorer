////////////////////////////////////////////////////////////
/*	Party AI Restorer
	
	Fired by the armband to start the DLG.
	
	DP 2020-02-01	                                       */
////////////////////////////////////////////////////////////

void main() {
    
	AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "dp_ai_switch"));
}
