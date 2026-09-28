// SM64Mario.asm

// This file contains file inclusions, action edits, and assembly for Super Mario 64 Mario
scope SM64Mario {

    OS.align(16)

    // Modify Action Parameters                     // Action                 // Animation                     // Moveset Data             // Flags
    Character.edit_action_parameters(SM64MARIO,     Action.ReviveWait,        File.SM64MARIO_ANIM_IDLE,        -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Taunt,             File.SM64MARIO_ANIM_VICTORY,       TAUNT,                      -1)
    Character.edit_action_parameters(SM64MARIO,     Action.DashAttack,        -1,                              DASH_ATTACK,                -1)
    Character.edit_action_parameters(SM64MARIO,     0xE1,                     -1,                              UP_SPECIAL,                 -1)
    Character.edit_action_parameters(SM64MARIO,     0xE2,                     -1,                              UP_SPECIAL,                 -1)
    Character.edit_action_parameters(SM64MARIO,     Action.DTilt,             File.SM64MARIO_ANIM_DTILT,       DOWN_TILT,                  -1)
    Character.edit_action_parameters(SM64MARIO,     Action.FSmashHigh,        -1,                              FORWARD_SMASH_HIGH,         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.FSmashMidHigh,     -1,                              FORWARD_SMASH_MID_HIGH,     -1)
    Character.edit_action_parameters(SM64MARIO,     Action.FSmash,            -1,                              FORWARD_SMASH,              -1)
    Character.edit_action_parameters(SM64MARIO,     Action.FSmashMidLow,      -1,                              FORWARD_SMASH_MID_LOW,      -1)
    Character.edit_action_parameters(SM64MARIO,     Action.USmash,            -1,                              UP_SMASH,                   -1)
    Character.edit_action_parameters(SM64MARIO,     Action.DSmash,            -1,                              DOWN_SMASH,                 -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Idle,              File.SM64MARIO_ANIM_IDLE,        -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Walk1,             File.SM64MARIO_ANIM_WALK1,       -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Walk2,             File.SM64MARIO_ANIM_WALK2,       -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Walk3,             File.SM64MARIO_ANIM_WALK3,       -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     0x00E,                    File.SM64MARIO_ANIM_WALKEND,     -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Dash,              File.SM64MARIO_ANIM_DASH,        -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Run,               File.SM64MARIO_ANIM_RUN,         -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.RunBrake,          File.SM64MARIO_ANIM_RUNBRAKE,    -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.TurnRun,           File.SM64MARIO_ANIM_TURNRUN,     -1,                         -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Jab1,              File.SM64MARIO_ANIM_JAB1,        JAB1,                       -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Jab2,              File.SM64MARIO_ANIM_JAB2,        JAB2,                       -1)
    Character.edit_action_parameters(SM64MARIO,     0xDC,                     -1,                              JAB3,                       -1)
    Character.edit_action_parameters(SM64MARIO,     Action.JumpF,             -1,                              JUMP,                       -1)
    Character.edit_action_parameters(SM64MARIO,     Action.JumpB,             -1,                              JUMP,                       -1)
    Character.edit_action_parameters(SM64MARIO,     Action.JumpAerialF,       -1,                              DOUBLEJUMP,                 -1)
    Character.edit_action_parameters(SM64MARIO,     Action.JumpAerialB,       -1,                              DOUBLEJUMP,                 -1)
    Character.edit_action_parameters(SM64MARIO,     Action.CliffCatch,        -1,                              CLIFFCATCH,                 -1)
    Character.edit_action_parameters(SM64MARIO,     Action.Tech,              -1,                              TECH,                       -1)


    // Modify Menu Action Parameters                  // Action  // Animation                   // Moveset Data  // Flags
    Character.edit_menu_action_parameters(SM64MARIO,  0x0,       File.SM64MARIO_ANIM_IDLE,      -1,              -1) // CSS IDLE
    Character.edit_menu_action_parameters(SM64MARIO,  0x1,       File.SM64MARIO_ANIM_VICTORY,   WIN,             -1) // VICTORY 3 and CSS animation
    Character.edit_menu_action_parameters(SM64MARIO,  0x2,       File.SM64MARIO_ANIM_VICTORY,   WIN,             -1) // VICTORY 2
    Character.edit_menu_action_parameters(SM64MARIO,  0x3,       File.SM64MARIO_ANIM_VICTORY,   WIN,             -1) // VICTORY 1

    //Set yellow team color for Matrix Mario
    Teams.add_team_costume(YELLOW, SM64MARIO, 0x1)
    
}


