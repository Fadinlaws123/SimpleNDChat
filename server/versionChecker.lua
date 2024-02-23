local branding = 
[[ 
  //                                                  
  ||   ____  _                 _      _   _ ____   ____ _           _   
  ||  / ___|(_)_ __ ___  _ __ | | ___| \ | |  _ \ / ___| |__   __ _| |_ 
  ||  \___ \| | '_ ` _ \| '_ \| |/ _ \  \| | | | | |   | '_ \ / _` | __|
  ||   ___) | | | | | | | |_) | |  __/ |\  | |_| | |___| | | | (_| | |_ 
  ||  |____/|_|_| |_| |_| .__/|_|\___|_| \_|____/ \____|_| |_|\__,_|\__|
  ||                    |_|    
  ||                          Made by Fadin_laws
  ||]]                                         
-- Check for version updates.

Citizen.CreateThread(function()
	local CurrentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)
	if not CurrentVersion then
		print('[^1SimpleNDChat^0] ^1SimpleNDChat failed to check for any updates!')
	end

	function VersionCheckHTTPRequest()
		PerformHttpRequest('https://raw.githubusercontent.com/Fadinlaws123/ScriptVersionChecker/main/SimpleNDChat.json', VersionCheck, 'GET')
	end

	function VersionCheck(err, response, headers)
		Citizen.Wait(3000)
		if err == 200 then
			local Data = json.decode(response)
			if CurrentVersion ~= Data.NewestVersion then
				print( branding )			
				print('  ||    \n  ||    SimpleNDChat is outdated!')
				print('  ||    Current version: ^2' .. Data.NewestVersion .. '^7')
				print('  ||    Your version: ^1' .. CurrentVersion .. '^7')
        print('  ||    ^7This script was originally made by Andyyy, This script was updated by myself to work with the 2.0 release of NDCore!^7')
				print('  ||    Please download the lastest version from ^5' .. Data.DownloadLocation .. '^7')
				if Data.Changes ~= '' then
					print('  ||    \n  ||    ^5Changes: ^7' .. Data.Changes .. "\n^0  \\\\\n")
				end
			else
				print( branding )			
				print('  ||    ^2SimpleNDChat is up to date!!^0')
        print('  ||    ^3For support, join our discord @ ^5https://discord.gg/mxcu8Az8XG!!^0')
				print('  ||    ^2Your version: ^3' .. CurrentVersion .. '\n^0  ||\n  \\\\\n')
			end
		else
			print( branding )			
			print('  ||    ^1There was an issue attempting to get the latest version info regarding SimpleNDChat. If this issue continues contact fadin_laws via Simple Development™️ @ https://discord.gg/mxcu8Az8XG \n^0  ||\n  \\\\\n')
		end
		
		SetTimeout(60000000, VersionCheckHTTPRequest)
	end

	VersionCheckHTTPRequest()
end)