//////////////////////////////////////////////////////////////////////////////////////////////////
/*	Party AI Restorer
	
	Starting conditional for no current party besides the player, i.e. returns TRUE if there is
	no party member 1.
	
	Utilises functions from the K1 Community Patch custom include:
	https://github.com/KOTORCommunityPatches/K1_Community_Patch/blob/master/Source/cp_inc_k1.nss
	
	DP 2020-02-01																				*/
//////////////////////////////////////////////////////////////////////////////////////////////////

#include "cp_inc_k1"

int StartingConditional() {
	
	return !GetIsObjectValid(CP_GetPartyMember(1));
}
