// Ralsei.asm

// This file contains file inclusions, action edits, and assembly for Ralsei
scope Ralsei {
    CUSTOMRAL_THROWB:; Moveset.THROW_DATA(THROW_B_DATA); Moveset.GO_TO(THROW_B)
    CUSTOMRAL_THROWF:; Moveset.THROW_DATA(THROW_F_DATA); Moveset.GO_TO(THROW_F)

    OS.align(16)

    // Modify Action Parameters               // Action                     // Animation                            // Moveset Data                     // Flags
    Character.edit_action_parameters(RALSEI, Action.ReviveWait,             File.RALSEI_ANIM_IDLERAL,                   -1,                       -1)
    Character.edit_action_parameters(RALSEI, Action.Idle,                   File.RALSEI_ANIM_IDLERAL,                   -1,                       -1)
    Character.edit_action_parameters(RALSEI, Action.Dash,                   File.RALSEI_ANIM_FIUMRAL,                   -1,                       -1)
    Character.edit_action_parameters(RALSEI, Action.Run,                    File.RALSEI_ANIM_RUNNINGRAL,                    -1,                        -1)
    Character.edit_action_parameters(RALSEI,   Action.UTilt,           -1,             ralutilt,                    -1)
    Character.edit_action_parameters(RALSEI,   Action.FSmashHigh,      File.RALSEI_ANIM_FSMASHRAL,            fsmash,              -1)
    Character.edit_action_parameters(RALSEI,   Action.FSmashMidHigh,   File.RALSEI_ANIM_FSMASHRAL,            fsmash,              -1)
    Character.edit_action_parameters(RALSEI,   Action.FSmash,          File.RALSEI_ANIM_FSMASHRAL,            fsmash,              -1)
    Character.edit_action_parameters(RALSEI,   Action.FSmashMidLow,    File.RALSEI_ANIM_FSMASHRAL,            fsmash,              -1)
    Character.edit_action_parameters(RALSEI,   Action.FSmashLow,       File.RALSEI_ANIM_FSMASHRAL,            fsmash,              -1)
    Character.edit_action_parameters(RALSEI,   Action.DashAttack,      -1,        dattackral,                -1)
    Character.edit_action_parameters(RALSEI, Action.Tech,                    -1,                          techral,             -1)
    Character.edit_action_parameters(RALSEI, Action.TechF,                   -1,                          techfral,            -1)
    Character.edit_action_parameters(RALSEI, Action.TechB,                   -1,                          techfral,            -1)
    Character.edit_action_parameters(RALSEI, Action.ThrowF,                 File.RALSEI_ANIM_THROWF,                CUSTOMRAL_THROWF,                    -1)
    Character.edit_action_parameters(RALSEI, Action.ThrowB,                 File.RALSEI_ANIM_THROWB,                CUSTOMRAL_THROWB,                    -1)
    Character.edit_action_parameters(RALSEI,   0xDC,                   -1,              jabthreeral,                      -1)
    Character.edit_action_parameters(RALSEI,   0xDD,                   File.RALSEI_ANIM_RALINTRORIGHT,            introralxd,                     -1)
    Character.edit_action_parameters(RALSEI,   0xDE,                   File.RALSEI_ANIM_INTRORALLEFT,            introralxd,                     -1)
    Character.edit_action_parameters(RALSEI, Action.CliffAttackQuick2,      -1,            cliffquicktworal,         -1)
    Character.edit_action_parameters(RALSEI, Action.CliffAttackSlow2,       -1,            clifflentotworal,           -1)
    Character.edit_action_parameters(RALSEI, Action.JumpF,             File.RALSEI_ANIM_PRIMERJUMPRAL,                          jumpsonido,             -1)
    Character.edit_action_parameters(RALSEI, Action.JumpB,             File.RALSEI_ANIM_PRIMERJUMPRAL,                          jumpsonido,             -1)
    Character.edit_action_parameters(RALSEI, Action.JumpAerialF,           File.RALSEI_ANIM_DOUBLEJUMPRAL,                                     doublejumpsonido,                           -1)
    Character.edit_action_parameters(RALSEI, Action.JumpAerialB,           File.RALSEI_ANIM_DOUBLEJUMPRAL,                                     doublejumpsonido,                           -1)
    Character.edit_action_parameters(RALSEI,   Action.Taunt,           File.RALSEI_ANIM_TAUNTRAL,             tauntralxd,                      -1)
    Character.edit_action_parameters(RALSEI,   0xE1,                   -1,               brincogroundral,                 -1)
    Character.edit_action_parameters(RALSEI,   0xE2,                   -1,               brincogroundral,                 -1)
    Character.edit_action_parameters(RALSEI,   0xE3,                   File.RALSEI_ANIM_GIROGROUNDRAL,            downpecialground,             -1)
    Character.edit_action_parameters(RALSEI,   0xE4,                   File.RALSEI_ANIM_GIROAIRRAL,            downpecialair,             -1)

    Character.edit_menu_action_parameters(RALSEI, 0x0,         File.RALSEI_ANIM_IDLERAL, -1, -1)
    Character.edit_menu_action_parameters(RALSEI, 0x1,         File.RALSEI_ANIM_SELECTRAL,                                 ralelegido,               -1)
    Character.edit_menu_action_parameters(RALSEI, 0x2,             File.RALSEI_ANIM_VICTORYALTRAL,        ralvictoryalt,                               -1)
    Character.edit_menu_action_parameters(RALSEI, 0x3,             File.RALSEI_ANIM_VICTORYCANTORAL,        ralcantoxd,                       -1)
    Character.edit_menu_action_parameters(RALSEI, 0x5,             File.RALSEI_ANIM_CLAPRAL,            -1,                                    -1)
    Character.edit_menu_action_parameters(RALSEI, 0xD,             File.RALSEI_ANIM_ADVENTURERAL,        	 -1,                                -1)
    Character.edit_menu_action_parameters(RALSEI, 0xE,             File.RALSEI_ANIM_ADVENTURERAL,        	 -1,                                -1)

    Character.set_default_costumes(Character.id.RALSEI, 0, 2, 3, 1, 3, 2, 0)
    Teams.add_team_costume(YELLOW, RALSEI, 0x1)

    Character.table_patch_start(entry_script, Character.id.RALSEI, 0x4)
    dw 0x8013DD68                           // skips entry script
    OS.patch_end()

    Character.table_patch_start(crowd_chant_fgm, Character.id.RALSEI, 0x2)
    dh  FGM.CHANT
    OS.patch_end()

}


