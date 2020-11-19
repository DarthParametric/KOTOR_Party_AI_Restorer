//////////////////////////////////////////////////////////////////////////////////////////////////
/*	Party AI Restorer
	
	Sets the AI flag for current party members to enabled.
	
	Utilises functions from the K1 Community Patch custom include:
	https://github.com/KOTORCommunityPatches/K1_Community_Patch/blob/master/Source/cp_inc_k1.nss
	
	DP 2020-02-01																				*/
//////////////////////////////////////////////////////////////////////////////////////////////////

#include "cp_inc_k1"

string DP_PartyMember(int nPartyMember) {
	
	object oPM = CP_GetPartyMember(nPartyMember);
	
	if (GetTag(oPM) == "Bastila")
		{
			return "BASTILA";
		}
		else if (GetTag(oPM) == "Cand")
			{
				return "CANDEROUS";
			}
			else if (GetTag(oPM) == "Carth")
				{
					return "CARTH";
				}
				else if (GetTag(oPM) == "HK47")
					{
						return "HK-47";
					}
					else if (GetTag(oPM) == "Jolee")
						{
							return "JOLEE";
						}
						else if (GetTag(oPM) == "Juhani")
							{
								return "JUHANI";
							}
							else if (GetTag(oPM) == "Mission")
								{
									return "MISSION";
								}
								else if (GetTag(oPM) == "T3M4")
									{
										return "T3-M4";
									}
									else if (GetTag(oPM) == "Zaalbar")
										{
											return "ZAALBAR";
										}
										else
											{
												return "";
											}
}

void main() {
	
	object oPC = CP_GetPartyMember(0);
	object oPM1 = CP_GetPartyMember(1);
	object oPM2 = CP_GetPartyMember(2);
	
	AssignCommand(oPM1, CP_DisableAI(FALSE));
	AssignCommand(oPM1, ClearAllEffects());
	AssignCommand(oPM1, ClearAllActions());
	SendMessageToPC(oPC, "ARATECH PARTY AI RESTORER: SET " + DP_PartyMember(1) + "'S AI TO ENABLED");
	
	if (GetIsObjectValid(oPM2))
		{
			AssignCommand(oPM2, CP_DisableAI(FALSE));
			AssignCommand(oPM2, ClearAllEffects());
			AssignCommand(oPM2, ClearAllActions());
			SendMessageToPC(oPC, "ARATECH PARTY AI RESTORER: SET " + DP_PartyMember(2) + "'S AI TO ENABLED");
		}
}
