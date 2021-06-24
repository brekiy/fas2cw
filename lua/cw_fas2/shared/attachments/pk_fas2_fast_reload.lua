local att = {}
att.name = "pk_fas2_fast_reload"
att.displayName = "Fast Reload"
att.displayNameShort = "Fast Rel."
att.statModifiers = {
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/fastreload")
    att.description = {
        {t = "Increased reload speed.", c = CustomizableWeaponry.textColors.POSITIVE},
        {t = "Very tactical. (Most of the time)", c = CustomizableWeaponry.textColors.VPOSITIVE},
    }
end

function att:attachFunc()
    self.FastReload = true
    if self.ShotgunReload then
        if self.Animations.insert_fast then
            self.Animations.insert_orig = self.Animations.insert
            self.Animations.insert = self.Animations.insert_fast
            self.InsertShellTime_orig = self.InsertShellTime
            self.InsertShellTime = self.InsertShellFastTime
        end
        if self.Animations.reload_end_fast then
            self.Animations.idle = self.Animations.reload_end_fast
        end
    end
end

function att:detachFunc()
    self.FastReload = false
    if self.ShotgunReload then
        if self.Animations.insert_orig then
            self.Animations.insert = self.Animations.insert_orig
            self.InsertShellTime = self.InsertShellTime_orig
        end
        if self.Animations.reload_end then
            self.Animations.idle = self.Animations.reload_end
        end
    end
end

CustomizableWeaponry:registerAttachment(att)