Scriptname BRMCDScript extends ActiveMagicEffect

Import PO3_SKSEfunctions

FormList Property MC_BodyPartsHuman Auto
FormList Property MC_BodyPartsHumanEffects1 Auto
FormList Property MC_BodyPartsHumanEffects2 Auto
FormList Property MC_Explosions Auto
FormList Property MC_ExplosionsGuts Auto
FormList Property MC_BloodSpellsHumanoids Auto
FormList Property MC_BloodSpellsHumanoids2 Auto

Weapon Property BRMCDDaggerBackGore Auto
Weapon Property BRMCDDaggerBodyCutR Auto
Weapon Property BRMCDDaggerBodyCutL Auto
Weapon Property BRMCDDaggerDecap Auto
Weapon Property BRMCDDaggerHandCutL Auto
Weapon Property BRMCDDaggerHandCutR Auto
Weapon Property BRMCDDaggerRunThrew Auto
Weapon Property BRMCDDaggerSpillGuts Auto

Actor TargetActor
ObjectReference TargetRef

ObjectReference explod1
ObjectReference explod2
ObjectReference explod3

Event OnEffectStart(Actor akTarget, Actor akCaster)
    TargetActor = akTarget
    TargetRef = akTarget as ObjectReference

    If akCaster.IsEquipped(BRMCDDaggerBackGore)
        BackGore()
    ElseIf akCaster.IsEquipped(BRMCDDaggerBodyCutR)
        BodyCutR()
    ElseIf akCaster.IsEquipped(BRMCDDaggerBodyCutL)
        BodyCutL()
    ElseIf akCaster.IsEquipped(BRMCDDaggerDecap)
        Decap()
    ElseIf akCaster.IsEquipped(BRMCDDaggerHandCutL)
        HandCutL()
    ElseIf akCaster.IsEquipped(BRMCDDaggerHandCutR)
        HandCutR()
    ElseIf akCaster.IsEquipped(BRMCDDaggerRunThrew)
        runthrew()
    ElseIf akCaster.IsEquipped(BRMCDDaggerSpillGuts)
        spillguts()
    EndIf
EndEvent

Function BackGore()

	(MC_BloodSpellsHumanoids2.GetAt(2) as Spell).Cast(TargetRef, none)

	TargetActor.EquipItem(MC_BodyPartsHumanEffects1.GetAt(3), true, true)

	(MC_BloodSpellsHumanoids2.GetAt(4) as Spell).Cast(TargetRef, TargetRef)

EndFunction

Function BodyCutR()

	(MC_BloodSpellsHumanoids.GetAt(5) as Spell).Cast(TargetRef, none)

	TargetActor.EquipItem(MC_BodyPartsHuman.GetAt(1), true, true)

	(MC_BloodSpellsHumanoids2.GetAt(3) as Spell).Cast(TargetRef, TargetRef)

	explod1 = TargetRef.placeatme(MC_ExplosionsGuts.GetAt(1) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod2 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod3 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(2.0)

	explod1.Delete()
	explod2.Delete()
	explod3.Delete()

EndFunction

Function BodyCutL()

	(MC_BloodSpellsHumanoids.GetAt(4) as Spell).Cast(TargetRef, none)

	TargetActor.EquipItem(MC_BodyPartsHuman.GetAt(0), true, true)

	(MC_BloodSpellsHumanoids2.GetAt(3) as Spell).Cast(TargetRef, TargetRef)

	explod1 = TargetRef.placeatme(MC_ExplosionsGuts.GetAt(1) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod2 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod3 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(2.0)

	explod1.Delete()
	explod2.Delete()
	explod3.Delete()

EndFunction

Function Decap()

	DecapitateActor(TargetActor)

EndFunction

Function HandCutL()

	(MC_BloodSpellsHumanoids.GetAt(0) as Spell).Cast(TargetRef, none)

	TargetActor.EquipItem(MC_BodyPartsHumanEffects2.GetAt(Utility.RandomInt(1, 2)) as Armor, true, true)
	TargetActor.EquipItem(MC_BodyPartsHuman.GetAt(4) as Armor, true, true)

	Utility.Wait(0.2)

	(MC_BloodSpellsHumanoids2.GetAt(3) as Spell).Cast(TargetRef, TargetRef)

	explod1 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod2 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod3 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(2.0)

	explod1.Delete()
	explod2.Delete()
	explod3.Delete()

EndFunction

Function HandCutR()

	(MC_BloodSpellsHumanoids.GetAt(1) as Spell).Cast(TargetRef, none)

	TargetActor.EquipItem(MC_BodyPartsHumanEffects2.GetAt(3) as Armor, true, true)
	TargetActor.EquipItem(MC_BodyPartsHuman.GetAt(5) as Armor, true, true)

	Utility.Wait(0.2)

	(MC_BloodSpellsHumanoids2.GetAt(3) as Spell).Cast(TargetRef, TargetRef)

	explod1 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod2 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod3 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(2.0)

	explod1.Delete()
	explod2.Delete()
	explod3.Delete()

EndFunction

Function runthrew()

	(MC_BloodSpellsHumanoids2.GetAt(2) as Spell).Cast(TargetRef, none)

	TargetActor.EquipItem(MC_BodyPartsHumanEffects1.GetAt(3), true, true)

	Utility.Wait(0.2)

	(MC_BloodSpellsHumanoids.GetAt(2) as Spell).Cast(TargetRef, none)

	TargetActor.EquipItem(MC_BodyPartsHuman.GetAt(2), true, true)

	explod1 = TargetRef.placeatme(MC_ExplosionsGuts.GetAt(0) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	(MC_BloodSpellsHumanoids2.GetAt(4) as Spell).Cast(TargetRef, TargetRef)

	explod2 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod3 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(2.0)

	explod1.Delete()
	explod2.Delete()
	explod3.Delete()

EndFunction

Function spillguts()

	(MC_BloodSpellsHumanoids.GetAt(2) as Spell).Cast(TargetRef, none)

	TargetActor.EquipItem(MC_BodyPartsHuman.GetAt(2), true, true)

	explod1 = TargetRef.placeatme(MC_ExplosionsGuts.GetAt(0) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	(MC_BloodSpellsHumanoids2.GetAt(4) as Spell).Cast(TargetRef, TargetRef)

	explod2 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(0.2)

	explod3 = TargetRef.placeatme(MC_Explosions.GetAt(2) as Explosion, 1, false, false)

	Utility.Wait(2.0)

	explod1.Delete()
	explod2.Delete()
	explod3.Delete()

EndFunction
