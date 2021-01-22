#include <sourcemod>
#include <sdktools>
#include <cstrike>
#include <emitsoundany>

public Plugin myinfo = 
{
	name = "Join/Leave",
	author = "Lawyn",
	description = "-",
	version = "1.3",
	url = "jb.nevergo.ro"
};

public void OnClientPostAdminCheck(client)
{
	char szSteamID[128];
    GetClientAuthId(client, AuthId_Steam2, szSteamID, sizeof(szSteamID));
   	PrintToChatAll(" \x04✚ \x01%N \x06(%s)", client, szSteamID);
}

public void OnClientDisconnect(client)
{
	char szSteamID[32];
    GetClientAuthId(client, AuthId_Steam2, szSteamID, sizeof(szSteamID));
    PrintToChatAll(" \x02— \x01%N \x07(%s)", client, szSteamID);
}
