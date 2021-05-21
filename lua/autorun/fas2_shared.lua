AddCSLuaFile("autorun/fas2_shared.lua")
AddCSLuaFile("autorun/client/fas2_clientmenu.lua")

game.AddParticles("particles/muzzleflashes_test.pcf")
game.AddParticles("particles/muzzleflashes_test_b.pcf")
game.AddParticles("particles/impact_fx_fas.pcf")

local ups = util.PrecacheSound

PrecacheParticleSystem("muzzleflash_g3")
PrecacheParticleSystem("muzzleflash_m14")
PrecacheParticleSystem("muzzleflash_ak47")
PrecacheParticleSystem("muzzleflash_ak74")
PrecacheParticleSystem("muzzleflash_6")
PrecacheParticleSystem("muzzleflash_pistol_rbull")
PrecacheParticleSystem("muzzleflash_pistol")
PrecacheParticleSystem("muzzleflash_suppressed")
PrecacheParticleSystem("muzzleflash_pistol_deagle")
PrecacheParticleSystem("muzzleflash_OTS")
PrecacheParticleSystem("muzzleflash_M3")
PrecacheParticleSystem("muzzleflash_smg")
PrecacheParticleSystem("muzzleflash_SR25")
PrecacheParticleSystem("muzzleflash_shotgun")
PrecacheParticleSystem("muzzle_center_M82")
PrecacheParticleSystem("muzzleflash_m79")

PrecacheParticleSystem("impact_dirt_d")

if SERVER then
	CreateConVar("fas2_profgain", "0.04", {FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY})
	CreateConVar("fas2_profgain_shotguns", "0.01", {FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY})
end

local sadd = sound.Add

local FAS_RS = {}

local tbl = {channel = CHAN_AUTO,
	volume = 1,
	level = 65,
	pitchstart = 100,
	pitchend = 100}

for k, v in pairs(FAS_RS) do
	tbl.name = k
	tbl.sound = v

	sadd(tbl)

	if type(v) == "table" then
		for k2, v2 in pairs(v) do
			ups(v2)
		end
	else
		ups(v)
	end
end

local FAS_FS = {}

local tbl = {channel = CHAN_STATIC,
	volume = 1,
	level = 100,
	pitchstart = 92,
	pitchend = 112}

for k, v in pairs(FAS_FS) do
	tbl.name = k
	tbl.sound = v

	sadd(tbl)

	if type(v) == "table" then
		for k2, v2 in pairs(v) do
			ups(v2)
		end
	else
		ups(v)
	end
end

local tbl = {channel = CHAN_STATIC,
	volume = 1,
	level = 70,
	pitchstart = 92,
	pitchend = 112}

for k, v in pairs(FAS_FSS) do
	tbl.name = k
	tbl.sound = v

	sadd(tbl)

	if type(v) == "table" then
		for k2, v2 in pairs(v) do
			ups(v2)
		end
	else
		ups(v)
	end
end

FAS2AutoAtt = {}
FAS2_Attachments = {}

function FAS2_AddAttachment(t)
	FAS2_Attachments[t.key] = {key = t.key, nameshort = t.nameshort, namefull = t.namefull, namemenu = t.namemenu, aimpos = t.aimpos, aimang = t.aimang, attfunc = t.attfunc, deattfunc = t.deattfunc, displaytexture = t.displaytexture, desc = t.desc, clattfunc = t.clattfunc, cldeattfunc = t.cldeattfunc}

	if SERVER then
		CreateConVar("fas2_att_" .. t.key, "0",  {FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY})
		FAS2AutoAtt["fas2_att_" .. t.key] = t.key
	else
		CreateClientConVar("fas2_att_" .. t.key .. "_cl", "0", true, true)
	end
end

tbl = {}

tbl.key = "foregrip"
tbl.nameshort = "Grip"
tbl.namefull = "Foregrip"
tbl.desc = {[1] = {t = "Decreases recoil by 20%", c = Color(202, 255, 163, 255)}}

if CLIENT then
	tbl.displaytexture = surface.GetTextureID("VGUI/fas2atts/foregrip")
end

tbl.attfunc = function(ply, wep)
	wep.ViewKick = wep.ViewKick * 0.8
	wep.Recoil = wep.Recoil * 0.8
	wep.Grip = true
end

tbl.clattfunc = function(ply, wep)
	wep.ViewKick = wep.ViewKick * 0.8
	wep.Recoil = math.Round(wep.Recoil * 0.8, 2)
	wep.Grip = true
	FAS2_PlayAnim(wep, wep.Anims.Idle_Grip, 1, wep.Wep:GetCycle())
end

tbl.deattfunc = function(ply, wep)
	wep.ViewKick = wep.ViewKick / 0.8
	wep.Recoil = wep.Recoil / 0.8
	wep.Grip = false
end

tbl.cldeattfunc = function(ply, wep)
	wep.ViewKick = wep.ViewKick / 0.8
	wep.Recoil = math.Round(wep.Recoil / 0.8, 2)
	wep.Grip = false
	FAS2_PlayAnim(wep, wep.Anims.Idle, 1, wep.Wep:GetCycle())
end

FAS2_AddAttachment(tbl)

tbl = {}

tbl.key = "harrisbipod"
tbl.nameshort = "Bipod"
tbl.namefull = "Harris Bipod"
tbl.desc = {[1] = {t = "When deployed:", c = Color(255, 255, 255, 255)},
	[2] = {t = "Decreases recoil by 70%", c = Color(202, 255, 163, 255)},
	[3] = {t = "Decreases maximum spread from continuous fire by 70%", c = Color(202, 255, 163, 255)},
	[4] = {t = "Decreases mouse sensitivity by 30%", c = Color(202, 255, 163, 255)}}

if CLIENT then
	tbl.displaytexture = surface.GetTextureID("VGUI/fas2atts/harrisbipod")
end

tbl.attfunc = function(ply, wep)
	wep.InstalledBipod = true
end

tbl.clattfunc = function(ply, wep)
	wep.InstalledBipod = true
end

tbl.deattfunc = function(ply, wep)
	wep.InstalledBipod = false
end

tbl.cldeattfunc = function(ply, wep)
	wep.InstalledBipod = false
end

FAS2_AddAttachment(tbl)


local ply, vm

function FAS2_PlayAnim(wep, anim, speed, cyc, time)
	speed = speed and speed or 1
	cyc = cyc and cyc or 0
	time = time or 0

	if type(anim) == "table" then
		anim = table.Random(anim)
	end

	if game.SinglePlayer() then
		if SERVER then
			if wep.Sounds[anim] then
				wep.CurSoundTable = wep.Sounds[anim]
				wep.CurSoundEntry = 1
				wep.SoundSpeed = speed
				wep.SoundTime = CurTime() + time
			end
		end
			/*if wep.Sounds[anim] then
				for k, v in pairs(wep.Sounds[anim]) do
					timer.Simple(v.time, function()
						if IsValid(ply) and ply:Alive() and IsValid(wep) and wep == ply:GetActiveWeapon() then
							wep:EmitSound(v.sound, 70, 100)
						end
					end)
				end
			end
		end*/
	else
		if wep.Sounds[anim] then
			wep.CurSoundTable = wep.Sounds[anim]
			wep.CurSoundEntry = 1
			wep.SoundSpeed = speed
			wep.SoundTime = CurTime() + time
		end

		/*if wep.Sounds[anim] then
			for k, v in pairs(wep.Sounds[anim]) do
				timer.Simple(v.time, function()
					wep:EmitSound(v.sound, 70, 100)
				end)
			end
		end*/
	end

	if SERVER and game.SinglePlayer() then
		ply = Entity(1)

		umsg.Start("FAS2ANIM", ply)
			umsg.String(anim)
			umsg.Float(speed)
			umsg.Float(cyc)
		umsg.End()
	end

	if CLIENT then
		vm = wep.Wep

		wep.CurAnim = string.lower(anim)

		if vm then
			vm:SetCycle(cyc)
			vm:SetSequence(anim)
			vm:SetPlaybackRate(speed)
		end
	end
end

function FAS2_Move(p, m)
	if p:Alive() then
		wep = p:GetActiveWeapon()

		if IsValid(wep) then
			if wep.IsFAS2Weapon then
				if not p:KeyDown(IN_SPEED) then
					if wep.dt.Status == FAS_STAT_ADS then
						if p:Crouching() then
							m:SetMaxSpeed(p:GetWalkSpeed() * p:GetCrouchedWalkSpeed())
						else
							m:SetMaxSpeed(p:GetWalkSpeed() * 0.7)
						end
					end
				end
			end
		end
	end
end

hook.Add("Move", "FAS2_Move", FAS2_Move)

if CLIENT then
	local s

	local function FAS2_GetAttachments(um)
		s = um:ReadString()
		FAS2AttOnMe = {}

		s = string.Explode(" ", s)

		for k, v in pairs(s) do
			table.insert(FAS2AttOnMe, v)
		end
	end

	usermessage.Hook("FAS2_GETATTS", FAS2_GetAttachments)

	local function FAS2_NoAttachments()
		FAS2AttOnMe = {}
	end

	usermessage.Hook("FAS2_NOATTS", FAS2_NoAttachments)

	local function FAS2_PickUpAttachment(um)
		s = um:ReadString()

		if not FAS2AttOnMe then
			FAS2AttOnMe = {}
		end

		table.insert(FAS2AttOnMe, s)
		chat.AddText(Color(255, 255, 255), "Got new weapon attachment: ", Color(50, 150, 255), (FAS2_Attachments[s].namemenu and FAS2_Attachments[s].namemenu or FAS2_Attachments[s].namefull), Color(255, 255, 255), ".")
	end

	usermessage.Hook("FAS2_PICKUPATT", FAS2_PickUpAttachment)

	local function FAS2_PickUpAttachmentSilent(um)
		s = um:ReadString()
		FAS2AttOnMe = FAS2AttOnMe or {}

		table.insert(FAS2AttOnMe, s)
	end

	usermessage.Hook("FAS2_PICKUPATTSIL", FAS2_PickUpAttachmentSilent)

	net.Receive("FAS2_SENDATTACHMENTS", function(l, c)
		FAS2AttOnMe = net.ReadTable()
	end)

	//local ADSR = {a = 0, d = 0, s = 0, r = 0, current = 0, target = 0, time = 0, state = 4}
	local FAS2Recoil = {amt = 0, target = 0, rate = 0, delay = 0}
	CreateClientConVar("fas2_nohud", "0", true, true)
	CreateClientConVar("fas2_customhud", "1", true, true)
	CreateClientConVar("fas2_differentorigins", "0", true, true)
	CreateClientConVar("fas2_handrig", "0", true, true)
	CreateClientConVar("fas2_holdtoaim", "0", true, true)
	CreateClientConVar("fas2_alternatebipod", "1", true, true)
	CreateClientConVar("fas2_handskin", "1", true, true)
	CreateClientConVar("fas2_gloveskin", "1", true, true)
	CreateClientConVar("fas2_sleeveskin", "1", true, true)
	CreateClientConVar("fas2_headbob_intensity", "1", true, true)
	CreateClientConVar("fas2_textsize", "1", true, true)
	CreateClientConVar("fas2_blureffects", "0", true, true)
	CreateClientConVar("fas2_blureffects_depth", "0", true, true)
	CreateClientConVar("fas2_hitmarker", "0", true, true)

	NumberToTexture = {[1] = "models/weapons/view/hands/hand",
		[2] = "models/weapons/view/hands/hand_tan",
		[3] = "models/weapons/view/hands/hand_black",
		[4] = "models/weapons/view/hands/hand_camo"}

	NumberToGlove = {[1] = "models/weapons/view/hands/nomex",
		[2] = "models/weapons/view/hands/black",
		[3] = "models/weapons/view/hands/desertkhaki",
		[4] = "models/weapons/view/hands/multicam"}

	NumberToSleeve = {[1] = "models/weapons/view/hands/sleeve",
		[2] = "models/weapons/view/hands/sleeve2"}

	-- This is horrible, but fuck you

	FAS2Shells = {}
	function FAS2_MakeFakeShell(shell, pos, ang, vel, time, removetime)
		if not shell or not pos or not ang then
			return
		end

		local t = FAS2Shells[shell]

		if not t then
			return
		end

		vel = vel or Vector(0, 0, -100)
		vel = vel + VectorRand() * 5
		time = time or 0.5
		removetime = removetime or 5

		local ent = ClientsideModel(t.m, RENDERGROUP_BOTH)
		ent:SetPos(pos)
		ent:PhysicsInitBox(Vector(-0.5, -0.15, -0.5), Vector(0.5, 0.15, 0.5))
		ent:SetAngles(ang)
		ent:SetMoveType(MOVETYPE_VPHYSICS)
		ent:SetSolid(SOLID_VPHYSICS)
		ent:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

		local phys = ent:GetPhysicsObject()
		phys:SetMaterial("gmod_silent")
		phys:SetMass(10)
		phys:SetVelocity(vel)

		timer.Simple(time, function()
			if t.s then
				ent:EmitSound(table.Random(t.s), 35, 100)
			end
		end)

		SafeRemoveEntityDelayed(ent, removetime)
	end

	local function FAS2_InitPostEntity()
		ply = LocalPlayer()
		ply.FAS_FamiliarWeapons = {}

		for k, v in pairs(weapons.GetList()) do
			if v.VM then
				util.PrecacheModel(v.VM)
			end
		end

		for k, v in pairs(FAS2Shells) do
			util.PrecacheModel(v.m)
		end
	end

	hook.Add("InitPostEntity", "FAS2_InitPostEntity", FAS2_InitPostEntity)

	local function FAS2_HUDShouldDraw(n)
		if GetConVarNumber("fas2_customhud") > 0 then
			ply = LocalPlayer()

			if IsValid(ply) and ply:Alive() then
				wep = ply:GetActiveWeapon()

				if IsValid(wep) and wep.IsFAS2Weapon then
					if n == "CHudAmmo" or n == "CHudSecondaryAmmo" then
						return false
					end
				end
			end
		end
	end

	hook.Add("HUDShouldDraw", "FAS2_HUDShouldDraw", FAS2_HUDShouldDraw)

	local function FAS2_RenderScene()
		ply = LocalPlayer()
		wep = ply:GetActiveWeapon()

		if IsValid(wep) and wep.IsFAS2Weapon and wep.DrawRenderTarget then
			wep:DrawRenderTarget()
		end
	end

	hook.Add("RenderScene", "FAS2_RenderScene", FAS2_RenderScene)

	local EA, dif

	local function FAS2_CreateMove(c)
		ang = c:GetViewAngles()
		CT = CurTime()

		ply = LocalPlayer()
		wep = ply:GetActiveWeapon()

		if IsValid(wep) and wep.IsFAS2Weapon then
			if wep.dt.Bipod and wep.DeployAngle then
				EA = ply:EyeAngles()
				dif = math.AngleDifference(EA.y, wep.DeployAngle.y)

				if dif >= wep.BipodAngleLimitYaw then
					ang.y = wep.DeployAngle.y + wep.BipodAngleLimitYaw
				elseif dif <= -wep.BipodAngleLimitYaw then
					ang.y = wep.DeployAngle.y - wep.BipodAngleLimitYaw
				end

				dif = math.AngleDifference(EA.p, wep.DeployAngle.p)

				if dif >= wep.BipodAngleLimitPitch then
					ang.p = wep.DeployAngle.p + wep.BipodAngleLimitPitch
				elseif dif <= -wep.BipodAngleLimitPitch then
					ang.p = wep.DeployAngle.p - wep.BipodAngleLimitPitch
				end

				c:SetViewAngles(ang)
			end

			//if wep.dt.Status == FAS_STAT_ADS then
				//ang.p = ang.p + math.cos(CT * 1.5) * 0.001

				//c:SetViewAngles(ang)
			//end
		end
	end

	hook.Add("CreateMove", "FAS2_CreateMove", FAS2_CreateMove)

	/*local ang, ang2, CT

	local function FAS2_CreateMove(c)
		ang = c:GetViewAngles()
		CT = CurTime()

		if CT < FAS2Recoil.delay then
			FAS2Recoil.amt = Lerp(FrameTime() * 15, FAS2Recoil.amt, FAS2Recoil.target)

			print(FAS2Recoil.target, FAS2Recoil.amt, ang.p)
			ang.p = ang.p - (FAS2Recoil.target - FAS2Recoil.amt)
		else
			FAS2Recoil.rate = math.Clamp(FAS2Recoil.rate + 0.01, 0, 1)
			ang2 = Lerp(FrameTime() * 10 * FAS2Recoil.rate, FAS2Recoil.amt, 0)
			ang.p = ang.p + (FAS2Recoil.amt - ang2)

			FAS2Recoil.amt = ang2
		end

		c:SetViewAngles(ang)

		if CT > ADSR.time and ADSR.state < 5 then
			ADSR.time = CT + 0.15
			ADSR.state = ADSR.state + 1
		end

		if ADSR.state == 1 then -- A
			ang2 = Lerp(FrameTime() / ADSR.a, ADSR.current, ADSR.target)

			ang.p = ang.p + (ADSR.current - ang2)
			c:SetViewAngles(ang)

			ADSR.current = ang2
		elseif ADSR.state == 2 then -- D
			ang2 = Lerp(FrameTime() / ADSR.d, ADSR.current, ADSR.target * 0.5)

			ang.p = ang.p + (ADSR.current - ang2)
			c:SetViewAngles(ang)

			ADSR.current = ang2
		elseif ADSR.state == 4 then -- R (S = sustain, so no need to code it)
			ang2 = Lerp(FrameTime() / ADSR.r, ADSR.current, 0)

			ang.p = ang.p + (ADSR.current - ang2)
			c:SetViewAngles(ang)

			ADSR.current = ang2
		end
	end

	hook.Add("CreateMove", "FAS2_CreateMove", FAS2_CreateMove)

	function FAS2_StartRecoil(target, rate, delay)
		FAS2Recoil.target = target
		FAS2Recoil.amt = 0
		FAS2Recoil.rate = rate
		FAS2Recoil.delay = CurTime() + delay
	end*/

	//function FAS2_StartADSR(a, d, s, r, amt, target)
	//	ply = LocalPlayer()
		//ADSR = {a = a, d = d, s = s, r = r, current = amt, target = target + target, time = CurTime() + 0.1, state = 1}
	//end

	local cvar
	local HandMat = Material("models/weapons/view/hands/hand")
	local HandMat2 = Material("models/weapons/v_models/hands/hand")
	local GloveMat, GloveMat2 = Material("models/weapons/view/hands/nomex"), Material("models/weapons/v_models/hands/nomex")
	local SleeveMat, SleeveMat2 = Material("models/weapons/view/hands/sleeve"), Material("models/weapons/v_models/hands/sleeve")

	local function FAS2_ApplyRigNow(ply, com, args)
		cvar = GetConVarNumber("fas2_handrig")

		for k, v in pairs(LocalPlayer():GetWeapons()) do
			if v.IsFAS2Weapon and IsValid(v.Wep) then
				v.Wep:SetBodygroup(1, cvar)

				if IsValid(v.Nade) then
					v.Nade:SetBodygroup(1, cvar)
				end
			end
		end

		local t = NumberToTexture[GetConVarNumber("fas2_handskin")]

		HandMat:SetTexture("$basetexture", t and t or "models/weapons/view/hands/hand")
		HandMat2:SetTexture("$basetexture", t and t or "models/weapons/view/hands/hand")

		local t = NumberToSleeve[GetConVarNumber("fas2_sleeveskin")]

		SleeveMat:SetTexture("$basetexture", t and t or "models/weapons/view/hands/sleeve")
		SleeveMat2:SetTexture("$basetexture", t and t or "models/weapons/view/hands/sleeve")

		local t = NumberToGlove[GetConVarNumber("fas2_gloveskin")]

		GloveMat:SetTexture("$basetexture", t and t or "models/weapons/view/hands/nomex")
		GloveMat2:SetTexture("$basetexture", t and t or "models/weapons/view/hands/nomex")
	end

	concommand.Add("fas2_handrig_applynow", FAS2_ApplyRigNow)

	local PLY = debug.getregistry().Player
	local found

	function PLY:HasWeapon(s)
		found = false

		for k, v in pairs(self:GetWeapons()) do
			if v:GetClass() == s then
				found = true
				break
			end
		end

		return found
	end

	function FAS2_DrawGrenade()
		ply = LocalPlayer()
		wep = ply:GetActiveWeapon()

		if IsValid(wep) and wep.IsFAS2Weapon then
			wep.Nade:SetCycle(0)
			wep.Nade:SetPlaybackRate(1)
			wep.Nade:SetSequence("deploy")
			wep.Nade.LifeTime = CurTime() + 5
		end
	end

	function FAS2_PullGrenadePin()
		ply = LocalPlayer()
		wep = ply:GetActiveWeapon()

		if IsValid(wep) and wep.IsFAS2Weapon then
			wep.Nade:SetCycle(0)
			wep.Nade:SetPlaybackRate(1)
			wep.Nade:SetSequence("cook")
			wep.Nade.LifeTime = CurTime() + 5

			wep:AddEvent(0.2, function()
				wep:EmitSound("FAS2_M67.PinPull", 100, 100)
			end)

			wep:AddEvent(0.3, function()
				wep:EmitSound("FAS2_M67.Spoon", 100, 100)
			end)
		end
	end

	function FAS2_ThrowGrenade()
		ply = LocalPlayer()
		wep = ply:GetActiveWeapon()

		wep:EmitSound("weapons/handling/generic_cloth_fast" .. math.random(1, 2) .. ".wav", 100, math.random(95, 105))

		if IsValid(wep) and wep.IsFAS2Weapon then
			wep.Nade:SetCycle(0)
			wep.Nade:SetPlaybackRate(1)
			wep.Nade:SetSequence("throw")
			wep.Nade.LifeTime = CurTime() + 0.5
		end
	end

	--[[local function FAS2_PlayerTraceAttack(pl, dmginfo, dir, trace)
		if GetConVarNumber("fas2_hitmarker") > 0 then
			ply = LocalPlayer()

			if dmginfo:GetAttacker() == ply then
				wep = ply:GetActiveWeapon()

				if wep.IsFAS2Weapon then
					if wep.HitMarkerAlpha != 255 then
						wep.HitMarkerTime = CurTime() + 0.2
						wep.HitMarkerAlpha = 255
					end
				end
			end
		end
	end

	hook.Add("PlayerTraceAttack", "FAS2_PlayerTraceAttack", FAS2_PlayerTraceAttack)]]--
end

function AddAmmoType(name, text)
	game.AddAmmoType({name = name,
	dmgtype = DMG_BULLET})

	if CLIENT then
		language.Add(name .. "_ammo", text)
	end
end

AddAmmoType("9x19MM", "9x19MM Ammo")
AddAmmoType("9x18MM", "9x18MM Ammo")
AddAmmoType("10x25MM", "10x25MM Ammo")
AddAmmoType("7.62x51MM", "7.62x51MM Ammo")
AddAmmoType("7.62x54MMR", "7.62x54MMR Ammo")
AddAmmoType("5.56x45MM", "5.56x45MM Ammo")
AddAmmoType("5.45x39MM", "5.45x39MM Ammo")
AddAmmoType("7.62x39MM", "7.62x39MM Ammo")
AddAmmoType(".357 SIG", ".357 SIG Ammo")
AddAmmoType(".380 ACP", ".380 ACP Ammo")
AddAmmoType(".45 ACP", ".45 ACP Ammo")
AddAmmoType(".44 Magnum", ".44 Magnum Ammo")
AddAmmoType(".454 Casull", ".454 Casull Ammo")
AddAmmoType(".50 AE", ".50 AE Ammo")
AddAmmoType(".50 BMG", ".50 BMG Ammo")
AddAmmoType("12 Gauge", "12 Gauge Ammo")
AddAmmoType("23x75MMR", "23x75MMR Ammo")

AddAmmoType("40MM HE", "40MM HE Ammo")
AddAmmoType("40MM Smoke", "40MM Smoke Ammo")
AddAmmoType("M67 Grenades", "M67 Grenades")
AddAmmoType("Ammoboxes", "Ammoboxes")

AddAmmoType("Bandages", "Bandages")
AddAmmoType("Quikclots", "Quikclots")
AddAmmoType("Hemostats", "Hemostats")