-----------------------------------
-- func: godmode
-- desc: Toggles god mode on the player, granting them several special abilities.
-- Pass variable of 1 to command to enable a "soft" god mode.
-----------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
}

local godModeOn = function(player)
    -- Add bonus effects to the player..
    player:addStatusEffect(xi.effect.MAX_HP_BOOST, 1000, 0, 0)
    player:addStatusEffect(xi.effect.MAX_MP_BOOST, 1000, 0, 0)
    player:addStatusEffect(xi.effect.MIGHTY_STRIKES, 1, 0, 0)
    player:addStatusEffect(xi.effect.HUNDRED_FISTS, 1, 0, 0)
    player:addStatusEffect(xi.effect.CHAINSPELL, 1, 0, 0)
    player:addStatusEffect(xi.effect.PERFECT_DODGE, 1, 0, 0)
    player:addStatusEffect(xi.effect.INVINCIBLE, 1, 0, 0)
    player:addStatusEffect(xi.effect.ELEMENTAL_SFORZO, 1, 0, 0)
    player:addStatusEffect(xi.effect.MANAFONT, 1, 0, 0)
    player:addStatusEffect(xi.effect.REGAIN, 300, 0, 0)
    player:addStatusEffect(xi.effect.REFRESH, 99, 0, 0)
    player:addStatusEffect(xi.effect.REGEN, 99, 0, 0)

    -- Add bonus mods to the player..
    player:addMod(xi.mod.RACC, 2500)
    player:addMod(xi.mod.RATT, 2500)
    player:addMod(xi.mod.ACC, 2500)
    player:addMod(xi.mod.ATT, 2500)
    player:addMod(xi.mod.MATT, 2500)
    player:addMod(xi.mod.MACC, 2500)
    player:addMod(xi.mod.RDEF, 2500)
    player:addMod(xi.mod.DEF, 2500)
    player:addMod(xi.mod.MDEF, 2500)

    -- Heal the player from the new buffs..
    player:addHP(50000)
    player:setMP(50000)
end

local godModeOff = function(player)
    -- Remove bonus effects..
    player:delStatusEffect(xi.effect.MAX_HP_BOOST)
    player:delStatusEffect(xi.effect.MAX_MP_BOOST)
    player:delStatusEffect(xi.effect.MIGHTY_STRIKES)
    player:delStatusEffect(xi.effect.HUNDRED_FISTS)
    player:delStatusEffect(xi.effect.CHAINSPELL)
    player:delStatusEffect(xi.effect.PERFECT_DODGE)
    player:delStatusEffect(xi.effect.INVINCIBLE)
    player:delStatusEffect(xi.effect.ELEMENTAL_SFORZO)
    player:delStatusEffect(xi.effect.MANAFONT)
    player:delStatusEffect(xi.effect.REGAIN)
    player:delStatusEffect(xi.effect.REFRESH)
    player:delStatusEffect(xi.effect.REGEN)

    -- Remove bonus mods..
    player:delMod(xi.mod.RACC, 2500)
    player:delMod(xi.mod.RATT, 2500)
    player:delMod(xi.mod.ACC, 2500)
    player:delMod(xi.mod.ATT, 2500)
    player:delMod(xi.mod.MATT, 2500)
    player:delMod(xi.mod.MACC, 2500)
    player:delMod(xi.mod.RDEF, 2500)
    player:delMod(xi.mod.DEF, 2500)
    player:delMod(xi.mod.MDEF, 2500)
end

function onTrigger(player, target)
    -- validate target
    local targ
    local cursorTarget = player:getCursorTarget()

    if target then
        targ = GetPlayerByName(target)
        if not targ then
            error(player, string.format("Player named '%s' not found!", target))
            return
        end
    elseif cursorTarget and not cursorTarget:isNPC() then
        targ = cursorTarget
    else
        targ = player
    end
	
	local state = targ:getCharVar("GodMode")
	
	if state == 0 then
        targ:setCharVar("GodMode", 1)
        godModeOn(targ)
        targ:PrintToPlayer("God Mode enabled.")
    elseif state == 1 then
        targ:setCharVar("GodMode", 0)
        godModeOff(targ)
        targ:PrintToPlayer("God Mode disabled.")
    elseif state == 2 then
        targ:setCharVar("GodMode", 1)
        godModeTierOneOff(targ)
        godModeOn(targ)
        targ:PrintToPlayer("God Mode enabled.")
    end
end