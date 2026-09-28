// MatrixMario.asm

// This file contains file inclusions, action edits, and assembly for Matrix Mario
scope MatrixMario {
    
    OS.align(16)

    // Modify Action Parameters                     // Action                 // Animation                     // Moveset Data             // Flags
    Character.edit_action_parameters(MATRIXMARIO,   Action.Taunt,             File.MATRIXMARIO_ANIM_TAUNT,     TAUNT,                      -1)
    Character.edit_action_parameters(MATRIXMARIO,   Action.DashAttack,        -1,                              DASH_ATTACK,                -1)
    Character.edit_action_parameters(MATRIXMARIO,   0xE1,                     -1,                              UP_SPECIAL,                 -1)
    Character.edit_action_parameters(MATRIXMARIO,   0xE2,                     -1,                              UP_SPECIAL,                 -1)
    Character.edit_action_parameters(MATRIXMARIO,   Action.AttackAirU,        -1,                              UP_AERIAL,                  -1)
    Character.edit_action_parameters(MATRIXMARIO,   Action.DTilt,             File.MATRIXMARIO_ANIM_DTILT,     DOWN_TILT,                  -1)
    Character.edit_action_parameters(MATRIXMARIO,   Action.FSmashHigh,        -1,                              FORWARD_SMASH_HIGH,         -1)
    Character.edit_action_parameters(MATRIXMARIO,   Action.FSmashMidHigh,     -1,                              FORWARD_SMASH_MID_HIGH,     -1)
    Character.edit_action_parameters(MATRIXMARIO,   Action.FSmash,            -1,                              FORWARD_SMASH,              -1)
    Character.edit_action_parameters(MATRIXMARIO,   Action.FSmashMidLow,      -1,                              FORWARD_SMASH_MID_LOW,      -1)
    Character.edit_action_parameters(MATRIXMARIO,   Action.FSmashLow,         -1,                              FORWARD_SMASH_LOW,          -1)


    //Set yellow team color for Matrix Mario
    Teams.add_team_costume(YELLOW, MATRIXMARIO, 0x1)
    
}


