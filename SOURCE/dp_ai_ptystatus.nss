//////////////////////////////////////////////////////////////////////////////////////////////////
/*	Party AI Restorer
	
	Checks the status of the AI flag for the current party members and returns custom string
	tokens to display the status in the DLG.
	
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

string DP_AIStatus(int nPartyMember) {
	
	object oPM = CP_GetPartyMember(nPartyMember);
	int nAIFlag = GetLocalBoolean(oPM, 62); // Local boolean 62 is SW_FLAG_AI_OFF
	
    if (nAIFlag)
		{
			return "DISABLED";
		}
		else
			{
				return "ACTIVE";
			}
}

void main() {
	
	object oPM2 = CP_GetPartyMember(2);
	
	SetCustomToken(471, DP_PartyMember(1));
	SetCustomToken(472, DP_AIStatus(1));
	
	if (GetIsObjectValid(oPM2))
		{
			SetCustomToken(473, DP_PartyMember(2));
			SetCustomToken(474, DP_AIStatus(2));
		}
}
