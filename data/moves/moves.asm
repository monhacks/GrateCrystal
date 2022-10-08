; Characteristics of each move.

move: MACRO
	db \1 ; animation
	db \2 ; effect
	db \3 ; power
	db \4 | \5 ; type
	db \6 percent ; accuracy
	db \7 ; pp
	db \8 percent ; effect chance
ENDM

Moves:
; entries correspond to move ids (see constants/move_constants.asm)
	table_width MOVE_LENGTH, Moves
	move POUND,        EFFECT_NORMAL_HIT,         40, NORMAL,       PHYSICAL, 100, 40,   0
	move KARATE_CHOP,  EFFECT_NORMAL_HIT,         50, FIGHTING,     PHYSICAL, 100, 30,   0
	move DOUBLESLAP,   EFFECT_MULTI_HIT,          20, FAIRY,        PHYSICAL,  90, 20,   0
	move COMET_PUNCH,  EFFECT_MULTI_HIT,          25, FIGHTING,     PHYSICAL,  90, 15,   0
	move MEGA_PUNCH,   EFFECT_NORMAL_HIT,         90, NORMAL,       PHYSICAL, 100, 15,   0
	move PAY_DAY,      EFFECT_PAY_DAY,            40, STEEL,        PHYSICAL, 100, 30,   0
	move FIRE_PUNCH,   EFFECT_BURN_HIT,           75, FIRE,         PHYSICAL, 100, 15,  10
	move ICE_PUNCH,    EFFECT_FREEZE_HIT,         75, ICE,          PHYSICAL, 100, 15,  10
	move THUNDERPUNCH, EFFECT_PARALYZE_HIT,       75, ELECTRIC,     PHYSICAL, 100, 15,  10
	move SCRATCH,      EFFECT_NORMAL_HIT,         40, NORMAL,       PHYSICAL, 100, 40,   0
	move VICEGRIP,     EFFECT_NORMAL_HIT,         55, NORMAL,       PHYSICAL, 100, 30,   0
	move GUILLOTINE,   EFFECT_OHKO,                0, STEEL,        PHYSICAL,  30,  5,   0
	move SIGNAL_BEAM,  EFFECT_CONFUSE_HIT,        75, BUG,          SPECIAL,  100, 15,  10
	move SWORDS_DANCE, EFFECT_ATTACK_UP_2,         0, FIGHTING,     STATUS,   100, 20,   0
	move CUT,          EFFECT_NORMAL_HIT,         80, BUG,          PHYSICAL, 100, 15,   0
	move GUST,         EFFECT_GUST,               40, FLYING,       SPECIAL,  100, 30,   0
	move WING_ATTACK,  EFFECT_NORMAL_HIT,         60, FLYING,       PHYSICAL, 100, 25,   0
	move WHIRLWIND,    EFFECT_FORCE_SWITCH,        0, FLYING,       STATUS,   100, 15,   0
	move FLY,          EFFECT_FLY,                70, FLYING,       PHYSICAL, 100, 15,   0
	move BIND,         EFFECT_TRAP_TARGET,        20, NORMAL,       PHYSICAL,  85, 20,   0
	move SLAM,         EFFECT_NORMAL_HIT,        100, DRAGON,       PHYSICAL,  80, 20,   0
	move VINE_WHIP,    EFFECT_NORMAL_HIT,         40, GRASS,        PHYSICAL, 100, 35,   0
	move STOMP,        EFFECT_STOMP,              65, NORMAL,       PHYSICAL, 100, 20,  30
	move DOUBLE_KICK,  EFFECT_DOUBLE_HIT,         30, FIGHTING,     PHYSICAL, 100, 20,   0
	move MEGA_KICK,    EFFECT_NORMAL_HIT,        130, NORMAL,       PHYSICAL,  75,  5,   0
	move JUMP_KICK,    EFFECT_JUMP_KICK,          75, FIGHTING,     PHYSICAL,  95, 25,   0
	move ROLLING_KICK, EFFECT_FLINCH_HIT,         55, FIGHTING,     PHYSICAL,  70, 15, 100
	move SAND_ATTACK,  EFFECT_ACCURACY_DOWN,       0, GROUND,       STATUS,   100, 15,   0
	move HEADBUTT,     EFFECT_FLINCH_HIT,         70, NORMAL,       PHYSICAL, 100, 15,  30
	move HORN_ATTACK,  EFFECT_NORMAL_HIT,         65, NORMAL,       PHYSICAL, 100, 25,   0
	move FURY_ATTACK,  EFFECT_MULTI_HIT,          20, FLYING,       PHYSICAL,  90, 20,   0
	move HORN_DRILL,   EFFECT_OHKO,                1, NORMAL,       PHYSICAL,  30,  5,   0
	move TACKLE,       EFFECT_NORMAL_HIT,         40, NORMAL,       PHYSICAL, 100, 40,   0
	move BODY_SLAM,    EFFECT_PARALYZE_HIT,       85, NORMAL,       PHYSICAL, 100, 15,  30
	move WRAP,         EFFECT_TRAP_TARGET,        20, DRAGON,       PHYSICAL,  85, 20,   0
	move TAKE_DOWN,    EFFECT_RECOIL_HIT,         90, NORMAL,       PHYSICAL,  90, 25,   0
	move THRASH,       EFFECT_RAMPAGE,            90, NORMAL,       PHYSICAL,  90, 15,   0
	move DOUBLE_EDGE,  EFFECT_RECOIL_HIT,        120, NORMAL,       PHYSICAL, 100, 15,   0
	move TAIL_WHIP,    EFFECT_DEFENSE_DOWN,        0, NORMAL,       STATUS,   100, 30,   0
	move POISON_STING, EFFECT_POISON_HIT,         40, POISON,       PHYSICAL, 100, 30,  30
	move TWINEEDLE,    EFFECT_POISON_MULTI_HIT,   40, BUG,          PHYSICAL, 100, 20,  21
	move PIN_MISSILE,  EFFECT_MULTI_HIT,          20, BUG,          PHYSICAL,  90, 20,   0
	move LEER,         EFFECT_SP_DEF_DOWN,         0, DARK,         STATUS,   100, 30,   0
	move BITE,         EFFECT_FLINCH_HIT,         60, DARK,         PHYSICAL, 100, 25,  30
	move GROWL,        EFFECT_ATTACK_DOWN,         0, NORMAL,       STATUS,   100, 40,   0
	move ROAR,         EFFECT_FORCE_SWITCH,        0, DRAGON,       STATUS,    90, 20,   0
	move SING,         EFFECT_SLEEP,               0, NORMAL,       STATUS,    60, 25,   0
	move SUPERSONIC,   EFFECT_CONFUSE,             0, NORMAL,       STATUS,    60, 30,   0
	move SONICBOOM,    EFFECT_STATIC_DAMAGE,      42, NORMAL,       SPECIAL,   90, 20,   0
	move DISABLE,      EFFECT_DISABLE,             0, DARK,         STATUS,   100, 10,   0
	move ACID,         EFFECT_DEFENSE_DOWN_HIT,   50, POISON,       SPECIAL,  100, 25, 100
	move EMBER,        EFFECT_BURN_HIT,           40, FIRE,         SPECIAL,  100, 30,  10
	move FLAMETHROWER, EFFECT_BURN_HIT,           95, FIRE,         SPECIAL,  100, 15,  10
	move MIST,         EFFECT_MIST,                0, ICE,          STATUS,   100, 25,   0
	move WATER_GUN,    EFFECT_NORMAL_HIT,         40, WATER,        SPECIAL,  100, 35,   0
	move HYDRO_PUMP,   EFFECT_NORMAL_HIT,        120, WATER,        SPECIAL,   85,  5,   0
	move SURF,         EFFECT_NORMAL_HIT,         95, WATER,        SPECIAL,  100, 15,   0
	move ICE_BEAM,     EFFECT_FREEZE_HIT,         95, ICE,          SPECIAL,  100, 10,  10
	move BLIZZARD,     EFFECT_BLIZZARD,          120, ICE,          SPECIAL,   75,  5,  10
	move PSYBEAM,      EFFECT_CONFUSE_HIT,        65, PSYCHIC_TYPE, SPECIAL,  100, 20,  10
	move BUBBLEBEAM,   EFFECT_SPEED_DOWN_HIT,     65, WATER,        SPECIAL,  100, 20,  10
	move AURORA_BEAM,  EFFECT_ATTACK_DOWN_HIT,    65, ICE,          SPECIAL,  100, 20,  10
	move HYPER_BEAM,   EFFECT_HYPER_BEAM,        200, NORMAL,       SPECIAL,   95,  5,   0
	move PECK,         EFFECT_NORMAL_HIT,         40, FLYING,       PHYSICAL, 100, 35,   0
	move DRILL_PECK,   EFFECT_NORMAL_HIT,         80, FLYING,       PHYSICAL, 100, 20,   0
	move SUBMISSION,   EFFECT_RECOIL_HIT,         90, FIGHTING,     PHYSICAL,  90, 25,   0
	move LOW_KICK,     EFFECT_EVASION_DOWN_HIT,   50, FIGHTING,     PHYSICAL,  90, 25, 100
	move COUNTER,      EFFECT_COUNTER,             1, FIGHTING,     PHYSICAL, 100, 20,   0
	move SEISMIC_TOSS, EFFECT_LEVEL_DAMAGE,        1, FIGHTING,     PHYSICAL, 100, 20,   0
	move STRENGTH,     EFFECT_NORMAL_HIT,         80, PSYCHIC_TYPE, PHYSICAL, 100, 15,   0
	move ABSORB,       EFFECT_LEECH_HIT,          40, GRASS,        SPECIAL,  100, 20,   0
	move MEGA_DRAIN,   EFFECT_LEECH_HIT,          60, GRASS,        SPECIAL,  100, 10,   0
	move LEECH_SEED,   EFFECT_LEECH_SEED,          0, GRASS,        STATUS,   100, 10,   0
	move GROWTH,       EFFECT_SP_ATK_UP,           0, GRASS,        STATUS,   100, 40,   0
	move RAZOR_LEAF,   EFFECT_NORMAL_HIT,         55, GRASS,        PHYSICAL, 100, 25,   0
	move SOLARBEAM,    EFFECT_SOLARBEAM,         120, GRASS,        SPECIAL,  100, 10,   0
	move POISONPOWDER, EFFECT_POISON,              0, POISON,       STATUS,    75, 25,   0
	move STUN_SPORE,   EFFECT_PARALYZE,            0, GRASS,        STATUS,    75, 20,   0
	move SLEEP_POWDER, EFFECT_SLEEP,               0, GRASS,        STATUS,    75, 15,   0
	move PETAL_DANCE,  EFFECT_RAMPAGE,            90, GRASS,        PHYSICAL,  90, 15,   0
	move STRING_SHOT,  EFFECT_SPEED_DOWN,          0, BUG,          STATUS,   100, 40,   0
	move DRAGON_RAGE,  EFFECT_STATIC_DAMAGE,      42, DRAGON,       SPECIAL,  100, 10,   0
	move FIRE_SPIN,    EFFECT_TRAP_TARGET,        20, FIRE,         SPECIAL,  100, 15,   0
	move THUNDERSHOCK, EFFECT_PARALYZE_HIT,       40, ELECTRIC,     SPECIAL,  100, 30,  10
	move THUNDERBOLT,  EFFECT_PARALYZE_HIT,       95, ELECTRIC,     SPECIAL,  100, 15,  10
	move THUNDER_WAVE, EFFECT_PARALYZE,            0, ELECTRIC,     STATUS,   100, 10,   0
	move THUNDER,      EFFECT_THUNDER,           120, ELECTRIC,     SPECIAL,   75, 10,  30
	move ROCK_THROW,   EFFECT_NORMAL_HIT,         50, ROCK,         PHYSICAL,  90, 25,   0
	move EARTHQUAKE,   EFFECT_EARTHQUAKE,        100, GROUND,       PHYSICAL, 100, 10,   0
	move FISSURE,      EFFECT_OHKO,                1, GROUND,       PHYSICAL,  30,  5,   0
	move DIG,          EFFECT_FLY,                70, GROUND,       PHYSICAL, 100, 15,   0
	move TOXIC,        EFFECT_TOXIC,               0, POISON,       STATUS,   100, 10,   0
	move CONFUSION,    EFFECT_CONFUSE_HIT,        50, PSYCHIC_TYPE, SPECIAL,  100, 25,  10
	move PSYCHIC_M,    EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC_TYPE, SPECIAL,  100, 10,  10
	move HYPNOSIS,     EFFECT_SLEEP,               0, PSYCHIC_TYPE, STATUS,    70, 20,   0
	move MEDITATE,     EFFECT_ATTACK_UP,           0, PSYCHIC_TYPE, STATUS,   100, 40,   0
	move AGILITY,      EFFECT_SPEED_UP_2,          0, PSYCHIC_TYPE, STATUS,   100, 20,   0
	move QUICK_ATTACK, EFFECT_PRIORITY_HIT,       40, NORMAL,       PHYSICAL, 100, 30,   0
	move RAGE,         EFFECT_RAGE,               20, NORMAL,       PHYSICAL, 100, 40,   0
	move TELEPORT,     EFFECT_BATON_PASS,          0, PSYCHIC_TYPE, STATUS,   100, 20,   0
	move NIGHT_SHADE,  EFFECT_LEVEL_DAMAGE,        1, GHOST,        SPECIAL,  100, 20,   0
	move IRON_HEAD,    EFFECT_FLINCH_HIT,         80, STEEL,        PHYSICAL, 100, 15,  30
	move SCREECH,      EFFECT_DEFENSE_DOWN_2,      0, NORMAL,       STATUS,   100, 20,   0
	move DOUBLE_TEAM,  EFFECT_EVASION_UP,          0, PSYCHIC_TYPE, STATUS,   100, 15,   0
	move RECOVER,      EFFECT_HEAL,                0, NORMAL,       STATUS,   100, 10,   0
	move HARDEN,       EFFECT_DEFENSE_UP,          0, ROCK,         STATUS,   100, 40,   0
	move MINIMIZE,     EFFECT_EVASION_UP,          0, FAIRY,        STATUS,   100, 20,   0
	move SMOKESCREEN,  EFFECT_ACCURACY_DOWN,       0, FIRE,         STATUS,   100, 20,   0
	move CONFUSE_RAY,  EFFECT_CONFUSE,             0, GHOST,        STATUS,   100, 10,   0
	move SCALD,        EFFECT_BURN_HIT,           80, WATER,        SPECIAL,  100, 15,  30
	move DEFENSE_CURL, EFFECT_DEFENSE_CURL,        0, NORMAL,       STATUS,   100, 40,   0
	move BARRIER,      EFFECT_DEFENSE_UP_2,        0, PSYCHIC_TYPE, STATUS,   100, 20,   0
	move LIGHT_SCREEN, EFFECT_LIGHT_SCREEN,        0, PSYCHIC_TYPE, STATUS,   100, 25,   0
	move HAZE,         EFFECT_RESET_STATS,         0, POISON,       STATUS,   100, 25,   0
	move REFLECT,      EFFECT_REFLECT,             0, PSYCHIC_TYPE, STATUS,   100, 25,   0
	move FOCUS_ENERGY, EFFECT_FOCUS_ENERGY,        0, FIGHTING,     STATUS,   100, 25,   0
	move BIDE,         EFFECT_BIDE,                0, NORMAL,       PHYSICAL, 100, 10,   0
	move METRONOME,    EFFECT_METRONOME,           0, FAIRY,        STATUS,   100, 20,   0
	move MIRROR_MOVE,  EFFECT_MIRROR_MOVE,         0, FLYING,       STATUS,   100, 20,   0
	move SELFDESTRUCT, EFFECT_SELFDESTRUCT,      250, NORMAL,       PHYSICAL, 100,  5,   0
	move EGG_BOMB,     EFFECT_NORMAL_HIT,        100, NORMAL,       PHYSICAL,  80, 20,   0
	move LICK,         EFFECT_PARALYZE_HIT,       40, GHOST,        PHYSICAL, 100, 30,  30
	move SMOG,         EFFECT_POISON_HIT,         40, POISON,       SPECIAL,   67, 20, 100
	move SLUDGE,       EFFECT_POISON_HIT,         65, POISON,       SPECIAL,  100, 20,  30
	move BONE_CLUB,    EFFECT_FLINCH_HIT,         65, GROUND,       PHYSICAL, 100, 20,  10
	move FIRE_BLAST,   EFFECT_BURN_HIT,          120, FIRE,         SPECIAL,   85,  5,  10
	move WATERFALL,    EFFECT_FLINCH_HIT,         80, WATER,        PHYSICAL, 100, 15,  20
	move CLAMP,        EFFECT_TRAP_TARGET,        40, WATER,        PHYSICAL,  85, 10,   0
	move SWIFT,        EFFECT_ALWAYS_HIT,         60, NORMAL,       SPECIAL,  100, 20,   0
	move SKULL_BASH,   EFFECT_SKULL_BASH,        100, NORMAL,       PHYSICAL, 100, 15,   0
	move SPIKE_CANNON, EFFECT_MULTI_HIT,          20, STEEL,        PHYSICAL, 100, 15,   0
	move HAIL,         EFFECT_HAIL,                0, ICE,          STATUS,   100,  5,   0
	move AMNESIA,      EFFECT_SP_DEF_UP_2,         0, PSYCHIC_TYPE, STATUS,   100, 20,   0
	move KINESIS,      EFFECT_SP_ATK_UP_2,         0, PSYCHIC_TYPE, STATUS,   100, 20,   0
	move SOFTBOILED,   EFFECT_HEAL,                0, NORMAL,       STATUS,   100, 10,   0
	move HI_JUMP_KICK, EFFECT_JUMP_KICK,          95, FIGHTING,     PHYSICAL,  90, 20,   0
	move GLARE,        EFFECT_PARALYZE,            0, NORMAL,       STATUS,    84, 15,   0
	move DREAM_EATER,  EFFECT_DREAM_EATER,       100, PSYCHIC_TYPE, SPECIAL,  100, 15,   0
	move POISON_GAS,   EFFECT_POISON,              0, POISON,       STATUS,    60, 30,   0
	move DAZZLY_GLEAM, EFFECT_NORMAL_HIT,         80, FAIRY,        SPECIAL,  100, 15,   0
	move LEECH_LIFE,   EFFECT_LEECH_HIT,          50, BUG,          PHYSICAL, 100, 15,   0
	move LOVELY_KISS,  EFFECT_SLEEP,               0, NORMAL,       STATUS,    84, 15,   0
	move SKY_ATTACK,   EFFECT_FLY,               140, FLYING,       PHYSICAL,  95,  5,   0
	move TRANSFORM,    EFFECT_TRANSFORM,           0, NORMAL,       STATUS,   100, 10,   0
	move BUBBLE,       EFFECT_SPEED_DOWN_HIT,     20, WATER,        SPECIAL,  100, 35,  20
	move DIZZY_PUNCH,  EFFECT_CONFUSE_HIT,        70, NORMAL,       PHYSICAL, 100, 15,  30
	move SPORE,        EFFECT_SLEEP,               0, GRASS,        STATUS,   100, 10,   0
	move FLASH,        EFFECT_ACCURACY_DOWN_HIT,  80, STEEL,        SPECIAL,  100, 10,  20
	move AIR_SLASH,    EFFECT_FLINCH_HIT,         80, FLYING,       SPECIAL,  100, 15,  20
	move EARTH_POWER,  EFFECT_SP_DEF_DOWN_HIT,    90, GROUND,       SPECIAL,  100, 10,  10
	move ACID_ARMOR,   EFFECT_DEFENSE_UP_2,        0, POISON,       STATUS,   100, 20,   0
	move CRABHAMMER,   EFFECT_NORMAL_HIT,        110, WATER,        PHYSICAL,  85, 10,   0
	move DARK_PULSE,   EFFECT_FLINCH_HIT,         80, DARK,         SPECIAL,  100, 15,  20
	move FURY_SWIPES,  EFFECT_MULTI_HIT,          25, NORMAL,       PHYSICAL,  90, 15,   0
	move BONEMERANG,   EFFECT_DOUBLE_HIT,         45, GROUND,       PHYSICAL,  95, 15,   0
	move REST,         EFFECT_HEAL,                0, NORMAL,       STATUS,   100, 10,   0
	move ROCK_SLIDE,   EFFECT_FLINCH_HIT,         80, ROCK,         PHYSICAL, 100, 15,  30
	move HYPER_FANG,   EFFECT_LEECH_HIT,          80, NORMAL,       PHYSICAL,  90, 10,   0
	move SILVER_WIND,  EFFECT_ALL_UP_HIT,         60, BUG,          SPECIAL,  100, 10,  10
	move CONVERSION,   EFFECT_CONVERSION,          0, NORMAL,       STATUS,   100, 30,   0
	move TRI_ATTACK,   EFFECT_TRI_ATTACK,         90, CURSE_TYPE,   SPECIAL,  100, 10,  33
	move SUPER_FANG,   EFFECT_SUPER_FANG,          1, NORMAL,       PHYSICAL, 100, 10,   0
	move SLASH,        EFFECT_NORMAL_HIT,         70, NORMAL,       PHYSICAL, 100, 20,   0
	move SUBSTITUTE,   EFFECT_SUBSTITUTE,          0, FAIRY,        STATUS,   100, 10,   0
	move PLAY_ROUGH,   EFFECT_ATTACK_DOWN_HIT,    90, FAIRY,        PHYSICAL,  90, 15,  10
	move SKETCH,       EFFECT_SKETCH,              0, NORMAL,       STATUS,   100,  1,   0
	move TRIPLE_KICK,  EFFECT_TRIPLE_KICK,        15, FIGHTING,     PHYSICAL, 100, 10,   0
	move THIEF,        EFFECT_THIEF,              40, DARK,         PHYSICAL, 100, 30, 100
	move SPIDER_WEB,   EFFECT_MEAN_LOOK,           0, BUG,          STATUS,   100, 10,   0
	move MIND_READER,  EFFECT_LOCK_ON,             0, PSYCHIC_TYPE, STATUS,   100,  5,   0
	move NIGHTMARE,    EFFECT_NIGHTMARE,           0, GHOST,        STATUS,   100, 15,   0
	move FLAME_WHEEL,  EFFECT_BURN_HIT,           60, FIRE,         PHYSICAL, 100, 25,  10
	move SNORE,        EFFECT_SNORE,              40, NORMAL,       SPECIAL,  100, 20,  30
	move CURSE,        EFFECT_CURSE,               0, GHOST,        STATUS,   100, 10,   0
	move FLAIL,        EFFECT_REVERSAL,            1, NORMAL,       PHYSICAL, 100, 15,   0
	move CONVERSION2,  EFFECT_CONVERSION2,         0, NORMAL,       STATUS,   100, 30,   0
	move AEROBLAST,    EFFECT_NORMAL_HIT,        100, ICE,          SPECIAL,  100,  5,   0
	move COTTON_SPORE, EFFECT_SPEED_DOWN_2,        0, GRASS,        STATUS,   100, 20,   0
	move REVERSAL,     EFFECT_REVERSAL,            1, FIGHTING,     PHYSICAL, 100, 15,   0
	move SPITE,        EFFECT_SPITE,               0, GHOST,        STATUS,   100, 10,   0
	move POWDER_SNOW,  EFFECT_FREEZE_HIT,         40, ICE,          SPECIAL,  100, 30,  10
	move PROTECT,      EFFECT_PROTECT,             0, NORMAL,       STATUS,   100, 10,   0
	move MACH_PUNCH,   EFFECT_PRIORITY_HIT,       40, FIGHTING,     PHYSICAL, 100, 30,   0
	move SCARY_FACE,   EFFECT_SPEED_DOWN_2,        0, NORMAL,       STATUS,   100, 20,   0
	move FAINT_ATTACK, EFFECT_ALWAYS_HIT,         60, DARK,         PHYSICAL, 100, 20,   0
	move SWEET_KISS,   EFFECT_CONFUSE,             0, FAIRY,        STATUS,    75, 20,   0
	move BELLY_DRUM,   EFFECT_BELLY_DRUM,          0, NORMAL,       STATUS,   100, 10,   0
	move SLUDGE_BOMB,  EFFECT_POISON_HIT,         90, POISON,       SPECIAL,  100, 10,  30
	move MUD_SLAP,     EFFECT_ACCURACY_DOWN_HIT,  40, GROUND,       SPECIAL,  100, 10, 100
	move OCTAZOOKA,    EFFECT_ACCURACY_DOWN_HIT,  65, WATER,        SPECIAL,   85, 10, 100
	move SPIKES,       EFFECT_SPIKES,              0, GROUND,       STATUS,   100, 10,   0
	move ZAP_CANNON,   EFFECT_PARALYZE_HIT,      100, ELECTRIC,     SPECIAL,   50,  5, 100
	move FORESIGHT,    EFFECT_FORESIGHT,           0, NORMAL,       STATUS,   100, 40,   0
	move DESTINY_BOND, EFFECT_DESTINY_BOND,        0, GHOST,        STATUS,   100,  5,   0
	move PERISH_SONG,  EFFECT_PERISH_SONG,         0, GHOST,        STATUS,   100,  5,   0
	move ICY_WIND,     EFFECT_SPEED_DOWN_HIT,     55, ICE,          SPECIAL,  100, 15, 100
	move AURA_SPHERE,  EFFECT_ALWAYS_HIT,         90, FIGHTING,     SPECIAL,  100, 10,   0
	move BONE_RUSH,    EFFECT_MULTI_HIT,          30, GROUND,       PHYSICAL,  90, 10,   0
	move LOCK_ON,      EFFECT_LOCK_ON,             0, NORMAL,       STATUS,   100,  5,   0
	move OUTRAGE,      EFFECT_RAMPAGE,            90, DRAGON,       PHYSICAL,  90, 15,   0
	move SANDSTORM,    EFFECT_SANDSTORM,           0, ROCK,         STATUS,   100,  5,   0
	move GIGA_DRAIN,   EFFECT_LEECH_HIT,          80, GRASS,        SPECIAL,  100,  5,   0
	move ENDURE,       EFFECT_ENDURE,              0, NORMAL,       STATUS,   100, 10,   0
	move CHARM,        EFFECT_ATTACK_DOWN_2,       0, FAIRY,        STATUS,   100, 20,   0
	move ROLLOUT,      EFFECT_ROLLOUT,            30, ROCK,         PHYSICAL,  90, 20,   0
	move FALSE_SWIPE,  EFFECT_FALSE_SWIPE,        42, NORMAL,       PHYSICAL, 100, 40,   0
	move SWAGGER,      EFFECT_SWAGGER,             0, NORMAL,       STATUS,   100, 15, 100
	move MILK_DRINK,   EFFECT_HEAL,                0, NORMAL,       STATUS,   100, 10,   0
	move SPARK,        EFFECT_PARALYZE_HIT,       65, ELECTRIC,     PHYSICAL, 100, 20,  30
	move FURY_CUTTER,  EFFECT_FURY_CUTTER,        20, BUG,          PHYSICAL,  95, 30,   0
	move STEEL_WING,   EFFECT_DEFENSE_UP_HIT,     70, STEEL,        PHYSICAL,  90, 25,  30
	move MEAN_LOOK,    EFFECT_MEAN_LOOK,           0, DARK,         STATUS,   100,  5,   0
	move ATTRACT,      EFFECT_ATTRACT,             0, FAIRY,        STATUS,   100, 10,   0
	move SLEEP_TALK,   EFFECT_SLEEP_TALK,          0, NORMAL,       STATUS,   100, 10,   0
	move HEAL_BELL,    EFFECT_HEAL_BELL,           0, NORMAL,       STATUS,   100,  5,   0
	move RETURN,       EFFECT_RETURN,              1, NORMAL,       PHYSICAL, 100, 20,   0
	move PRESENT,      EFFECT_PRESENT,             1, FAIRY,        PHYSICAL, 100, 20,   0
	move FRUSTRATION,  EFFECT_FRUSTRATION,         1, NORMAL,       PHYSICAL, 100, 20,   0
	move SAFEGUARD,    EFFECT_SAFEGUARD,           0, NORMAL,       STATUS,   100, 25,   0
	move NIGHT_TERROR, EFFECT_SNORE,             120, GHOST,        PHYSICAL,  90, 10,  30
	move SACRED_FIRE,  EFFECT_BURN_HIT,          100, FIRE,         PHYSICAL, 100,  5,  50
	move MAGNITUDE,    EFFECT_MAGNITUDE,           1, GROUND,       PHYSICAL, 100, 25,   0
	move DYNAMICPUNCH, EFFECT_CONFUSE_HIT,       100, FIGHTING,     PHYSICAL,  50,  5, 100
	move MEGAHORN,     EFFECT_NORMAL_HIT,        120, BUG,          PHYSICAL,  85,  5,   0
	move DRAGONBREATH, EFFECT_PARALYZE_HIT,       60, DRAGON,       SPECIAL,  100, 20,  30
	move BATON_PASS,   EFFECT_BATON_PASS,          0, FAIRY,        STATUS,   100, 20,   0
	move ENCORE,       EFFECT_ENCORE,              0, NORMAL,       STATUS,   100,  5,   0
	move PURSUIT,      EFFECT_PURSUIT,            42, DARK,         PHYSICAL, 100, 30,   0
	move RAPID_SPIN,   EFFECT_RAPID_SPIN,         40, NORMAL,       PHYSICAL, 100, 35,   0
	move SWEET_SCENT,  EFFECT_EVASION_DOWN,        0, NORMAL,       STATUS,   100, 40,   0
	move IRON_TAIL,    EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,        PHYSICAL,  80, 15,  30
	move METAL_CLAW,   EFFECT_ATTACK_UP_HIT,      50, STEEL,        PHYSICAL, 100, 30,  10
	move VITAL_THROW,  EFFECT_ALWAYS_HIT,         70, FIGHTING,     PHYSICAL, 100, 15,   0
	move MORNING_SUN,  EFFECT_MORNING_SUN,         0, FIRE,         STATUS,   100,  5,   0
	move SYNTHESIS,    EFFECT_SYNTHESIS,           0, GRASS,        STATUS,   100,  5,   0
	move MOONLIGHT,    EFFECT_MOONLIGHT,           0, FAIRY,        STATUS,   100,  5,   0
	move HIDDEN_POWER, EFFECT_HIDDEN_POWER,        1, CURSE_TYPE,   SPECIAL,  100, 20,   0
	move CROSS_CHOP,   EFFECT_NORMAL_HIT,        100, FIGHTING,     PHYSICAL,  85,  5,   0
	move TWISTER,      EFFECT_TWISTER,            40, DRAGON,       SPECIAL,  100, 25,  20
	move RAIN_DANCE,   EFFECT_RAIN_DANCE,          0, WATER,        STATUS,   100,  5,   0
	move SUNNY_DAY,    EFFECT_SUNNY_DAY,           0, FIRE,         STATUS,   100,  5,   0
	move CRUNCH,       EFFECT_DEFENSE_DOWN_HIT,   80, DARK,         PHYSICAL, 100, 15,  20
	move MIRROR_COAT,  EFFECT_MIRROR_COAT,         1, PSYCHIC_TYPE, SPECIAL,  100, 20,   0
	move PSYCH_UP,     EFFECT_PSYCH_UP,            0, PSYCHIC_TYPE, STATUS,   100, 10,   0
	move EXTREMESPEED, EFFECT_PRIORITY_HIT,       80, NORMAL,       PHYSICAL, 100,  5,   0
	move ANCIENTPOWER, EFFECT_ALL_UP_HIT,         60, ROCK,         SPECIAL,  100, 10,  10
	move SHADOW_BALL,  EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,        SPECIAL,  100, 15,  20
	move FUTURE_SIGHT, EFFECT_FUTURE_SIGHT,       80, PSYCHIC_TYPE, SPECIAL,  100, 15,   0
	move ROCK_SMASH,   EFFECT_DEFENSE_DOWN_HIT,   40, FIGHTING,     PHYSICAL, 100, 15, 100
	move WHIRLPOOL,    EFFECT_TRAP_TARGET,        20, WATER,        SPECIAL,  100, 15,   0
	move BEAT_UP,      EFFECT_BEAT_UP,            30, DARK,         PHYSICAL, 100, 10,   0
	move FAIRY_WIND,   EFFECT_NORMAL_HIT,         40, FAIRY,        SPECIAL,  100, 35,   0
	move DRAIN_KISS,   EFFECT_LEECH_HIT,          50, FAIRY,        PHYSICAL, 100, 15,   0
	move MOONBLAST,    EFFECT_SP_ATK_DOWN_HIT,   120, FAIRY,        SPECIAL,   85,  5,  30
	move STRUGGLE,     EFFECT_RECOIL_HIT,         50, NORMAL,       PHYSICAL, 100,  1,   0
	assert_table_length NUM_ATTACKS
