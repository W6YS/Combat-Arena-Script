local v0=loadstring(game:HttpGet("https://sirius.menu/rayfield"))();local v1=game:GetService("Players");local v2=game:GetService("Teams");local v3=game:GetService("UserInputService");local v4=game:GetService("RunService");local v5={FOV={Enabled=true,Size=49 + 1 },Aimbot={Smoothness=0.5 -0 ,Enabled=true,Prediction=0.1 -0 ,CurrentTarget=nil,SwitchCooldown=0.1 -0 },ESP={Enabled=false,EnemyColor=Color3.fromRGB(35 + 220 ,0 -0 ,0 + 0 ),Transparency=1474.6 -(1329 + 145) }};local function v6() return v2:FindFirstChild("Blue") and v2:FindFirstChild("Red") ;end local function v7(v24) if v6() then return v24.Team;end return nil;end local v8={};local function v9(v25) if v8[v25] then local v84=0;local v85;while true do if (v84==(971 -(140 + 831))) then v85=0;while true do if (v85==0) then v8[v25]:Destroy();v8[v25]=nil;break;end end break;end end end end local function v10(v26) local v27=1850 -(1409 + 441) ;local v28;local v29;local v30;while true do if (v27==(718 -(15 + 703))) then v28=0;v29=nil;v27=1 + 0 ;end if (v27==(439 -(262 + 176))) then v30=nil;while true do local v99=0;while true do if ((1722 -(345 + 1376))==v99) then if (v28==2) then local v145=688 -(198 + 490) ;while true do if (v145==(0 -0)) then if v6() then if v30 then return v30.Team~=v29.Team ;end return false;end return true;end end end break;end if (v99==0) then if (1==v28) then if (v26==v29.Character) then return false;end v30=v1:GetPlayerFromCharacter(v26);v28=4 -2 ;end if ((1206 -(696 + 510))==v28) then if  not v26 then return false;end v29=v1.LocalPlayer;v28=1 -0 ;end v99=1;end end end break;end end end local function v11(v31) local v32=1262 -(1091 + 171) ;local v33;local v34;local v35;while true do if (v32==(1 + 0)) then v35=nil;while true do if (v33==(3 -2)) then if ( not v34 or  not v10(v34)) then return;end v9(v31);v35=Instance.new("Highlight");v33=6 -4 ;end if (v33==(374 -(123 + 251))) then if  not v31 then return;end v34=nil;if ((typeof(v31)=="Instance") and v31:IsA("Player")) then v34=v31.Character;else v34=v31;end v33=1;end if (v33==(14 -11)) then v35.Parent=v34;v8[v31]=v35;break;end if (v33==(700 -(208 + 490))) then v35.FillColor=v5.ESP.EnemyColor;v35.FillTransparency=v5.ESP.Transparency;v35.OutlineTransparency=1 + 0 ;v33=3;end end break;end if (v32==(0 + 0)) then v33=836 -(660 + 176) ;v34=nil;v32=1 + 0 ;end end end local function v12() local v36=0;local v37;while true do if (v36==(203 -(14 + 188))) then v37=v1:FindFirstChild("NPCPlayers");if (v37 and v37:FindFirstChild("Players")) then for v117,v118 in ipairs(v37.Players:GetChildren()) do local v119=675 -(534 + 141) ;local v120;while true do if (v119==(0 + 0)) then v120=workspace:FindFirstChild(v118.Name);if v120 then v11(v120);end break;end end end end break;end if (v36==(0 + 0)) then if  not v5.ESP.Enabled then return;end for v100,v101 in ipairs(v1:GetPlayers()) do if (v101~=v1.LocalPlayer) then v11(v101);end end v36=1;end end end local v13=nil;local function v14() local v38=0;local v39;local v40;while true do if (v38==1) then if v39 then return v40;end return nil;end if (v38==0) then if v13 then v13:Remove();end v39,v40=pcall(function() local v102=0 + 0 ;local v103;while true do if ((3 -1)==v102) then v103.Thickness=1.5 -0 ;v103.NumSides=280 -180 ;v102=2 + 1 ;end if (v102==(0 + 0)) then local v129=396 -(115 + 281) ;while true do if ((0 -0)==v129) then v103=Drawing.new("Circle");v103.Visible=v5.FOV.Enabled;v129=1 + 0 ;end if (v129==(2 -1)) then v102=1;break;end end end if (v102==1) then v103.Transparency=3 -2 ;v103.Color=Color3.fromRGB(1122 -(550 + 317) ,368 -113 ,358 -103 );v102=5 -3 ;end if (v102==(288 -(134 + 151))) then v103.Radius=v5.FOV.Size;v103.Filled=false;v102=1669 -(970 + 695) ;end if (4==v102) then return v103;end end end);v38=1;end end end v13=v14();local v15=v0:CreateWindow({Name="Combat Arena Aimbot",LoadingTitle="Combat Arena Aimbot",LoadingSubtitle="by W6YS"});local v16=v15:CreateTab("Main");v16:CreateToggle({Name="Show FOV Circle",CurrentValue=true,Flag="CircleToggle",Callback=function(v41) v5.FOV.Enabled=v41;if v13 then v13.Visible=v41;else v13=v14();end end});v16:CreateToggle({Name="Enemy ESP",CurrentValue=false,Flag="ESPToggle",Callback=function(v43) local v44=0 -0 ;local v45;while true do if (0==v44) then v45=1990 -(582 + 1408) ;while true do if (0==v45) then v5.ESP.Enabled=v43;if  not v43 then for v147,v148 in pairs(v8) do v9(v147);end else v12();end break;end end break;end end end});v16:CreateSlider({Name="FOV Size",Range={0,629 -129 },Increment=18 -13 ,Suffix="px",CurrentValue=1874 -(1195 + 629) ,Flag="FOVSlider",Callback=function(v46) local v47=0 -0 ;local v48;while true do if (v47==(241 -(187 + 54))) then v48=780 -(162 + 618) ;while true do if (v48==0) then v5.FOV.Size=v46;if v13 then v13.Radius=v46;else v13=v14();end break;end end break;end end end});v16:CreateSlider({Name="Smoothness",Range={0 + 0 ,1 -0 },Increment=0.01,Suffix="x",CurrentValue=0.5 + 0 ,Flag="SmoothnessSlider",Callback=function(v49) v5.Aimbot.Smoothness=v49;end});v16:CreateSlider({Name="Prediction",Range={0,1002 -(451 + 549) },Increment=0.01 + 0 ,Suffix="x",CurrentValue=0.1,Flag="PredictionSlider",Callback=function(v51) v5.Aimbot.Prediction=v51;end});local v17=0 -0 ;local function v18(v53) local v54=workspace.CurrentCamera;local v55,v56=v54:WorldToScreenPoint(v53);if v56 then local v87=0 -0 ;local v88;local v89;while true do if (v87==(1385 -(746 + 638))) then return (v89-v88).Magnitude<=v5.FOV.Size ;end if (v87==(0 + 0)) then v88=Vector2.new(v54.ViewportSize.X/(2 -0) ,v54.ViewportSize.Y/2 );v89=Vector2.new(v55.X,v55.Y);v87=342 -(218 + 123) ;end end end return false;end local function v19(v57) local v58=1581 -(1535 + 46) ;local v59;while true do if (v58==(1 + 0)) then return v59 and (v59.Health>(0 + 0)) ;end if (v58==(560 -(306 + 254))) then if  not v57 then return false;end v59=v57:FindFirstChild("Humanoid");v58=1 + 0 ;end end end local function v20(v60) local v61=0 -0 ;local v62;local v63;local v64;local v65;local v66;while true do local v81=0;while true do if ((1469 -(899 + 568))==v81) then if (v61==(3 + 1)) then return v66;end break;end if (v81==(2 -1)) then if (v61==(606 -(268 + 335))) then v65=v64.Velocity;v66=v60.Position + (v65 * v5.Aimbot.Prediction) ;v61=4;end if ((292 -(60 + 230))==v61) then local v124=572 -(426 + 146) ;while true do if (v124==(0 + 0)) then v64=v62:FindFirstChild("HumanoidRootPart");if  not (v63 and v64) then return v60.Position;end v124=1457 -(282 + 1174) ;end if ((812 -(569 + 242))==v124) then v61=8 -5 ;break;end end end v81=1 + 1 ;end if (v81==(1024 -(706 + 318))) then if ((1251 -(721 + 530))==v61) then if  not v60 then return nil;end v62=v60.Parent;v61=1272 -(945 + 326) ;end if (v61==(2 -1)) then if  not v62 then return v60.Position;end v63=v62:FindFirstChild("Humanoid");v61=2;end v81=1 + 0 ;end end end end local function v21() local v67=tick();if (v5.Aimbot.CurrentTarget and v5.Aimbot.CurrentTarget.Parent and v19(v5.Aimbot.CurrentTarget.Parent) and v10(v5.Aimbot.CurrentTarget.Parent) and v18(v5.Aimbot.CurrentTarget.Position) and ((v67-v17)<v5.Aimbot.SwitchCooldown)) then return v5.Aimbot.CurrentTarget;end local v68=nil;local v69=math.huge;local v70=workspace.CurrentCamera;for v82,v83 in pairs(v1:GetPlayers()) do if (v83~=v1.LocalPlayer) then local v92=700 -(271 + 429) ;local v93;while true do if (v92==(0 + 0)) then v93=v83.Character;if (v93 and v19(v93) and v10(v93)) then local v139=1500 -(1408 + 92) ;local v140;while true do if (v139==0) then v140=v93:FindFirstChild("Head");if (v140 and v18(v140.Position)) then local v151=1086 -(461 + 625) ;local v152;while true do if (v151==0) then v152=(v140.Position-v70.CFrame.Position).Magnitude;if (v152<v69) then local v156=0;local v157;while true do if (v156==(1288 -(993 + 295))) then v157=0 + 0 ;while true do if (v157==(1171 -(418 + 753))) then v68=v140;v69=v152;break;end end break;end end end break;end end end break;end end end break;end end end end local v71=v1:FindFirstChild("NPCPlayers");if (v71 and v71:FindFirstChild("Players")) then for v94,v95 in pairs(v71.Players:GetChildren()) do local v96=0 + 0 ;local v97;while true do if (v96==(0 + 0)) then v97=workspace:FindFirstChild(v95.Name);if (v97 and v19(v97) and v10(v97)) then local v141=0;local v142;while true do if (v141==(0 + 0)) then v142=v97:FindFirstChild("Head");if (v142 and v18(v142.Position)) then local v153=(v142.Position-v70.CFrame.Position).Magnitude;if (v153<v69) then local v154=0;while true do if (v154==(0 + 0)) then v68=v142;v69=v153;break;end end end end break;end end end break;end end end end if (v68~=v5.Aimbot.CurrentTarget) then local v90=529 -(406 + 123) ;while true do if (v90==0) then v17=v67;v5.Aimbot.CurrentTarget=v68;break;end end end return v68;end local function v22(v72,v73,v74) return v72:Lerp(v73,v74);end v1.PlayerAdded:Connect(function(v75) v75.CharacterAdded:Connect(function() if v5.ESP.Enabled then v11(v75);end end);end);v1.PlayerRemoving:Connect(function(v76) v9(v76);end);local v23;v3.InputBegan:Connect(function(v77,v78) if ((v77.UserInputType==Enum.UserInputType.MouseButton2) and  not v78 and v5.Aimbot.Enabled) then v23=v4.RenderStepped:Connect(function() local v98=v21();if v98 then local v105=0;local v106;local v107;while true do if (v105==0) then local v143=0;while true do if (v143==(1769 -(1749 + 20))) then v106=v20(v98);v107=CFrame.lookAt(workspace.CurrentCamera.CFrame.Position,v106);v143=1;end if (v143==(1 + 0)) then v105=1323 -(1249 + 73) ;break;end end end if ((1 + 0)==v105) then workspace.CurrentCamera.CFrame=v22(workspace.CurrentCamera.CFrame,v107,1 -v5.Aimbot.Smoothness );break;end end end end);end end);v3.InputEnded:Connect(function(v79) if (v79.UserInputType==Enum.UserInputType.MouseButton2) then local v91=1145 -(466 + 679) ;while true do if (v91==1) then v17=0 -0 ;break;end if (v91==(0 -0)) then if v23 then local v135=0;while true do if (v135==(1900 -(106 + 1794))) then v23:Disconnect();v23=nil;break;end end end v5.Aimbot.CurrentTarget=nil;v91=1 + 0 ;end end end end);v4.RenderStepped:Connect(function() local v80=0;while true do if (v80==0) then if v13 then v13.Position=v3:GetMouseLocation();else v13=v14();end v12();break;end end end);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--
