if FW.CLASS == "DEMONHUNTER" then
    local FW = FW;
    local FWL = FW.L;
    local DH = FW:ClassModule("DemonHunter");

    local ST = FW:Module("Timer");
    local CA = FW:Module("Casting");
    local CD = FW:Module("Cooldown");

    if ST then
        local F = ST.F;

        ST:AddChannel(198013, 1, 2) -- Eye Beam
        ST:AddChannel(212084, 0, 2) -- Fel Devastation

        ST:SetDefaultHasted(0)

        -- General Spells
        :AddSpell(217832, 60,"Crowd") -- Imprison
        :AddSpell(211881,  2,"Crowd") -- Fel Eruption (Talent)

        -- Vengeance Spells
        :AddSpell(207684, 30,"Crowd", F.AOE) -- Sigil of Misery
        :AddSpell(202137,  6,"Crowd", F.AOE) -- Sigil of Silence
        :AddSpell(204596,  6,"Default", F.TICKS) -- Sigil of Flame

        :AddSpell(204021,  8,"Crowd") -- Fiery Brand
        :AddSpell(185245,  3,"Crowd") -- Torment
        :AddSpell(218679, 15,"Crowd", F.AOE) -- Spirit Bomb !!! This might not work. The debuff it applies is "Frailty"

        :AddSpell(214743,  3,"Default", F.TICKS):SetTickSpeed(1) -- Soul Carver (Artifact weapon)
        -- Havoc Spells
        :AddSpell(179057,  5,"Crowd", F.AOE) -- Chaos Nova

        -- General Buffs
        :AddBuff(187827) -- Metamorphosis

        -- Vengeance Buffs
        :AddBuff(218256) -- Empower Wards
        :AddBuff(203720) -- Demon Spikes
        :AddBuff(178740) -- Immolation Aura
        :AddBuff(207810) -- Nether Bond
        :AddBuff(227225) -- Soul Barrier

        -- Havoc Buffs
        :AddBuff(196718) -- Darkness

        :AddMeleeBuffs()
        :AddCasterBuffs()

    end
    if CD then
        CD:AddMeleePowerupCooldowns();
    end
    if CA then
        --local metamorphosis = FW:SpellName()
--[[
        local ibf = FW:SpellName(48792);
        local vb = FW:SpellName(55233);
        local ams = FW:SpellName(48707);
        local lb = FW:SpellName(49039);
        local drw = FW:SpellName(49028);
        local ra = FW:SpellName(61999);

        CA:RegisterOnSelfCastSuccess(
            function(s, t)
                if s == ibf then
                    CA:CastShow("IBFStart");
                elseif s == vb then
                    CA:CastShow("VBStart");
                elseif s == ams then
                    CA:CastShow("AMSStart");
                elseif s == lb then
                    CA:CastShow("LBStart");
                elseif s == drw then
                    CA:CastShow("DRWStart");
                elseif s == ra then
                    CA:CastShow("RAStart",t);
                end
            end
        );

        FW:SetMainCategory(FWL.RAID_MESSAGES);

            FW:SetSubCategory("Self Damage Reduction",FW.ICON.SPECIFIC,2);
                FW:AddOption("MS2",ibf,  "",    "IBFStart");
                FW.Default.IBFStart = {[0]=1,"+++ Icebound Fortitude (12 sec) +++"};

                FW:AddOption("MS2",vb,  "", "VBStart");
                FW.Default.VBStart = {[0]=1,"+++ Vamparic Blood (10 sec) +++"};

                FW:AddOption("MS2",ams, "", "AMSStart");
                FW.Default.AMSStart = {[0]=1,"+++ Anti-Magic Shell (7 sec) +++"};

                FW:AddOption("MS2",lb,  "", "LBStart");
                FW.Default.LBStart = {[0]=1,"+++ Lichborne (10 sec) +++"};

                FW:AddOption("MS2",drw, "", "DRWStart");
                FW.Default.DRWStart = {[0]=1,"+++ Dancing Rune Weapon (12 sec) +++"};

            FW:SetSubCategory("Other",FW.ICON.SPECIFIC,2);
                FW:AddOption("MS2",ra,  "", "RAStart");
                FW.Default.RAStart = {[0]=1,">>> Raise Ally on %s <<<"};
]]--
    end
end
