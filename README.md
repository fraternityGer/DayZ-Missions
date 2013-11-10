DayZChernarus Mission System
=============
Original code by <a href="https://github.com/theszerdi">TheSzerdi</a>, Falcyn and TAW_Tonic.
Forked from <a href="https://github.com/lazyink/DayZ-Missions">lazyink</a>

<h3>This has only been tested on DayZ Epoch 1.0.2.5.</h3>  

 * Before installing you must first customize the fillboxes SQF's inside the Missions/Misc folder and the NPC's load-outs in the addunitserver SQF's. 
 
 * If you leave the script as is, you MUST update your BE filters with the attached files as it contains weapons that BE will kick for.
 
 * If you use SARGE AI, in the mission sqfs, you must change all lines ending with <b>setVariable ["Mission",1,true];<b> to <b>setVariable ["Sarge",1,true];<b>


<h3>Installation</h3>

<b>server.pbo</b>

Copy the Missions folder to the root of the server PBO.

Open <b>server_functions.sqf</b>

<b>Find:</b>

	fn_bases = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fn_bases.sqf";
	
<b>Insert after:</b>
	
	fnc_hTime = compile preprocessFile "\z\addons\dayz_server\Missions\misc\fnc_hTime.sqf"; //Random integer selector for mission wait time
	
<b>Find:</b>
	
	dayz_recordLogin = {
	private["_key"];
	_key = format["CHILD:103:%1:%2:%3:",_this select 0,_this select 1,_this select 2];
	_key call server_hiveWrite;
	};
	
<b>Insert after:</b>
	
	//----------InitMissions--------//
    MissionGo = 0;
    MissionGoMinor = 0;
    if (isServer) then { 
    SMarray = ["SM1","SM2","SM3","SM4","SM5","SM6"];
    [] execVM "\z\addons\dayz_server\missions\major\SMfinder.sqf"; //Starts major mission system
    SMarray2 = ["SM1","SM2","SM3","SM4","SM5","SM6"];
    [] execVM "\z\addons\dayz_server\missions\minor\SMfinder.sqf"; //Starts minor mission system
    };
    //---------EndInitMissions------//

	
Open <b>server_updateObject.sqf</b>
	
<b>Find:</b>
	
    #ifdef OBJECT_DEBUG
    diag_log(format["Non-string Object: ID %1 UID %2", _objectID, _uid]);
	#endif
    //force fail
    _objectID = "0";
    _uid = "0";
	};
	
<b>Insert after:</b>  
	
    if (_object getVariable "Mission" == 1) exitWith {};
	

	
Open <b>server_cleanup.fsm</b>
 
<b>Find:</b>  
 
    if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"") then {" \n

<b>Replace with:</b>

    if(vehicle _x != _x && (vehicle _x getVariable [""Mission"",0] != 1) && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"") then {" \n

	
	
IF YOU HAVE SARGE AI INSTALLED YOU NEED TO CHANGE THE VEHICLE VARIABLE IN EACH MISSION TO "SARGE" INSTEAD OF USING "MISSIONS" (Not tested with SARGE AI, may be incompatible.)


 
<b>mission.pbo:</b>

Copy the included debug folder into the root of the mission.pbo.
	
The AI require faction settings. If you have SARGE AI you're good to go. Otherwise add faction.sqf to the root of the mission.pbo and add this line to the end of your init.sqf:

    [] execVM "faction.sqf";
	

	
	
<h3>The Crates</h3>
<i>Coming soon</i>


	
<h3>The Missions</h3>
<i>Coming soon</i>

<h3>The Server</h3>
<a href="http://www.gametracker.com/server_info/85.131.248.26:2302/" target="_blank"><img src="http://cache.www.gametracker.com/server_info/85.131.248.26:2302/b_560_95_1.png" border="0" width="560" height="95" alt=""/></a>