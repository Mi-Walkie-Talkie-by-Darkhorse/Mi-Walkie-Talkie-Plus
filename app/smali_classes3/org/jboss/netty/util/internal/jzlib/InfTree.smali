.class final Lorg/jboss/netty/util/internal/jzlib/InfTree;
.super Ljava/lang/Object;
.source "InfTree.java"


# static fields
.field static final BMAX:I = 0xf

.field static final cpdext:[I

.field static final cpdist:[I

.field static final cplens:[I

.field static final cplext:[I

.field static final fixed_bd:I = 0x5

.field static final fixed_bl:I = 0x9

.field static final fixed_td:[I

.field static final fixed_tl:[I


# instance fields
.field private c:[I

.field private hn:[I

.field private r:[I

.field private u:[I

.field private v:[I

.field private x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x1f

    const/16 v1, 0x1e

    const/16 v0, 0x600

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->fixed_tl:[I

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->fixed_td:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cplens:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cplext:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cpdist:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cpdext:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x60
        0x7
        0x100
        0x0
        0x8
        0x50
        0x0
        0x8
        0x10
        0x54
        0x8
        0x73
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x70
        0x0
        0x8
        0x30
        0x0
        0x9
        0xc0
        0x50
        0x7
        0xa
        0x0
        0x8
        0x60
        0x0
        0x8
        0x20
        0x0
        0x9
        0xa0
        0x0
        0x8
        0x0
        0x0
        0x8
        0x80
        0x0
        0x8
        0x40
        0x0
        0x9
        0xe0
        0x50
        0x7
        0x6
        0x0
        0x8
        0x58
        0x0
        0x8
        0x18
        0x0
        0x9
        0x90
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x78
        0x0
        0x8
        0x38
        0x0
        0x9
        0xd0
        0x51
        0x7
        0x11
        0x0
        0x8
        0x68
        0x0
        0x8
        0x28
        0x0
        0x9
        0xb0
        0x0
        0x8
        0x8
        0x0
        0x8
        0x88
        0x0
        0x8
        0x48
        0x0
        0x9
        0xf0
        0x50
        0x7
        0x4
        0x0
        0x8
        0x54
        0x0
        0x8
        0x14
        0x55
        0x8
        0xe3
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x74
        0x0
        0x8
        0x34
        0x0
        0x9
        0xc8
        0x51
        0x7
        0xd
        0x0
        0x8
        0x64
        0x0
        0x8
        0x24
        0x0
        0x9
        0xa8
        0x0
        0x8
        0x4
        0x0
        0x8
        0x84
        0x0
        0x8
        0x44
        0x0
        0x9
        0xe8
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5c
        0x0
        0x8
        0x1c
        0x0
        0x9
        0x98
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7c
        0x0
        0x8
        0x3c
        0x0
        0x9
        0xd8
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6c
        0x0
        0x8
        0x2c
        0x0
        0x9
        0xb8
        0x0
        0x8
        0xc
        0x0
        0x8
        0x8c
        0x0
        0x8
        0x4c
        0x0
        0x9
        0xf8
        0x50
        0x7
        0x3
        0x0
        0x8
        0x52
        0x0
        0x8
        0x12
        0x55
        0x8
        0xa3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x72
        0x0
        0x8
        0x32
        0x0
        0x9
        0xc4
        0x51
        0x7
        0xb
        0x0
        0x8
        0x62
        0x0
        0x8
        0x22
        0x0
        0x9
        0xa4
        0x0
        0x8
        0x2
        0x0
        0x8
        0x82
        0x0
        0x8
        0x42
        0x0
        0x9
        0xe4
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5a
        0x0
        0x8
        0x1a
        0x0
        0x9
        0x94
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7a
        0x0
        0x8
        0x3a
        0x0
        0x9
        0xd4
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6a
        0x0
        0x8
        0x2a
        0x0
        0x9
        0xb4
        0x0
        0x8
        0xa
        0x0
        0x8
        0x8a
        0x0
        0x8
        0x4a
        0x0
        0x9
        0xf4
        0x50
        0x7
        0x5
        0x0
        0x8
        0x56
        0x0
        0x8
        0x16
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x76
        0x0
        0x8
        0x36
        0x0
        0x9
        0xcc
        0x51
        0x7
        0xf
        0x0
        0x8
        0x66
        0x0
        0x8
        0x26
        0x0
        0x9
        0xac
        0x0
        0x8
        0x6
        0x0
        0x8
        0x86
        0x0
        0x8
        0x46
        0x0
        0x9
        0xec
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5e
        0x0
        0x8
        0x1e
        0x0
        0x9
        0x9c
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7e
        0x0
        0x8
        0x3e
        0x0
        0x9
        0xdc
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6e
        0x0
        0x8
        0x2e
        0x0
        0x9
        0xbc
        0x0
        0x8
        0xe
        0x0
        0x8
        0x8e
        0x0
        0x8
        0x4e
        0x0
        0x9
        0xfc
        0x60
        0x7
        0x100
        0x0
        0x8
        0x51
        0x0
        0x8
        0x11
        0x55
        0x8
        0x83
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x71
        0x0
        0x8
        0x31
        0x0
        0x9
        0xc2
        0x50
        0x7
        0xa
        0x0
        0x8
        0x61
        0x0
        0x8
        0x21
        0x0
        0x9
        0xa2
        0x0
        0x8
        0x1
        0x0
        0x8
        0x81
        0x0
        0x8
        0x41
        0x0
        0x9
        0xe2
        0x50
        0x7
        0x6
        0x0
        0x8
        0x59
        0x0
        0x8
        0x19
        0x0
        0x9
        0x92
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x79
        0x0
        0x8
        0x39
        0x0
        0x9
        0xd2
        0x51
        0x7
        0x11
        0x0
        0x8
        0x69
        0x0
        0x8
        0x29
        0x0
        0x9
        0xb2
        0x0
        0x8
        0x9
        0x0
        0x8
        0x89
        0x0
        0x8
        0x49
        0x0
        0x9
        0xf2
        0x50
        0x7
        0x4
        0x0
        0x8
        0x55
        0x0
        0x8
        0x15
        0x50
        0x8
        0x102
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x75
        0x0
        0x8
        0x35
        0x0
        0x9
        0xca
        0x51
        0x7
        0xd
        0x0
        0x8
        0x65
        0x0
        0x8
        0x25
        0x0
        0x9
        0xaa
        0x0
        0x8
        0x5
        0x0
        0x8
        0x85
        0x0
        0x8
        0x45
        0x0
        0x9
        0xea
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5d
        0x0
        0x8
        0x1d
        0x0
        0x9
        0x9a
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7d
        0x0
        0x8
        0x3d
        0x0
        0x9
        0xda
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6d
        0x0
        0x8
        0x2d
        0x0
        0x9
        0xba
        0x0
        0x8
        0xd
        0x0
        0x8
        0x8d
        0x0
        0x8
        0x4d
        0x0
        0x9
        0xfa
        0x50
        0x7
        0x3
        0x0
        0x8
        0x53
        0x0
        0x8
        0x13
        0x55
        0x8
        0xc3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x73
        0x0
        0x8
        0x33
        0x0
        0x9
        0xc6
        0x51
        0x7
        0xb
        0x0
        0x8
        0x63
        0x0
        0x8
        0x23
        0x0
        0x9
        0xa6
        0x0
        0x8
        0x3
        0x0
        0x8
        0x83
        0x0
        0x8
        0x43
        0x0
        0x9
        0xe6
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5b
        0x0
        0x8
        0x1b
        0x0
        0x9
        0x96
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7b
        0x0
        0x8
        0x3b
        0x0
        0x9
        0xd6
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6b
        0x0
        0x8
        0x2b
        0x0
        0x9
        0xb6
        0x0
        0x8
        0xb
        0x0
        0x8
        0x8b
        0x0
        0x8
        0x4b
        0x0
        0x9
        0xf6
        0x50
        0x7
        0x5
        0x0
        0x8
        0x57
        0x0
        0x8
        0x17
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x77
        0x0
        0x8
        0x37
        0x0
        0x9
        0xce
        0x51
        0x7
        0xf
        0x0
        0x8
        0x67
        0x0
        0x8
        0x27
        0x0
        0x9
        0xae
        0x0
        0x8
        0x7
        0x0
        0x8
        0x87
        0x0
        0x8
        0x47
        0x0
        0x9
        0xee
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5f
        0x0
        0x8
        0x1f
        0x0
        0x9
        0x9e
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7f
        0x0
        0x8
        0x3f
        0x0
        0x9
        0xde
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6f
        0x0
        0x8
        0x2f
        0x0
        0x9
        0xbe
        0x0
        0x8
        0xf
        0x0
        0x8
        0x8f
        0x0
        0x8
        0x4f
        0x0
        0x9
        0xfe
        0x60
        0x7
        0x100
        0x0
        0x8
        0x50
        0x0
        0x8
        0x10
        0x54
        0x8
        0x73
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x70
        0x0
        0x8
        0x30
        0x0
        0x9
        0xc1
        0x50
        0x7
        0xa
        0x0
        0x8
        0x60
        0x0
        0x8
        0x20
        0x0
        0x9
        0xa1
        0x0
        0x8
        0x0
        0x0
        0x8
        0x80
        0x0
        0x8
        0x40
        0x0
        0x9
        0xe1
        0x50
        0x7
        0x6
        0x0
        0x8
        0x58
        0x0
        0x8
        0x18
        0x0
        0x9
        0x91
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x78
        0x0
        0x8
        0x38
        0x0
        0x9
        0xd1
        0x51
        0x7
        0x11
        0x0
        0x8
        0x68
        0x0
        0x8
        0x28
        0x0
        0x9
        0xb1
        0x0
        0x8
        0x8
        0x0
        0x8
        0x88
        0x0
        0x8
        0x48
        0x0
        0x9
        0xf1
        0x50
        0x7
        0x4
        0x0
        0x8
        0x54
        0x0
        0x8
        0x14
        0x55
        0x8
        0xe3
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x74
        0x0
        0x8
        0x34
        0x0
        0x9
        0xc9
        0x51
        0x7
        0xd
        0x0
        0x8
        0x64
        0x0
        0x8
        0x24
        0x0
        0x9
        0xa9
        0x0
        0x8
        0x4
        0x0
        0x8
        0x84
        0x0
        0x8
        0x44
        0x0
        0x9
        0xe9
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5c
        0x0
        0x8
        0x1c
        0x0
        0x9
        0x99
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7c
        0x0
        0x8
        0x3c
        0x0
        0x9
        0xd9
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6c
        0x0
        0x8
        0x2c
        0x0
        0x9
        0xb9
        0x0
        0x8
        0xc
        0x0
        0x8
        0x8c
        0x0
        0x8
        0x4c
        0x0
        0x9
        0xf9
        0x50
        0x7
        0x3
        0x0
        0x8
        0x52
        0x0
        0x8
        0x12
        0x55
        0x8
        0xa3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x72
        0x0
        0x8
        0x32
        0x0
        0x9
        0xc5
        0x51
        0x7
        0xb
        0x0
        0x8
        0x62
        0x0
        0x8
        0x22
        0x0
        0x9
        0xa5
        0x0
        0x8
        0x2
        0x0
        0x8
        0x82
        0x0
        0x8
        0x42
        0x0
        0x9
        0xe5
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5a
        0x0
        0x8
        0x1a
        0x0
        0x9
        0x95
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7a
        0x0
        0x8
        0x3a
        0x0
        0x9
        0xd5
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6a
        0x0
        0x8
        0x2a
        0x0
        0x9
        0xb5
        0x0
        0x8
        0xa
        0x0
        0x8
        0x8a
        0x0
        0x8
        0x4a
        0x0
        0x9
        0xf5
        0x50
        0x7
        0x5
        0x0
        0x8
        0x56
        0x0
        0x8
        0x16
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x76
        0x0
        0x8
        0x36
        0x0
        0x9
        0xcd
        0x51
        0x7
        0xf
        0x0
        0x8
        0x66
        0x0
        0x8
        0x26
        0x0
        0x9
        0xad
        0x0
        0x8
        0x6
        0x0
        0x8
        0x86
        0x0
        0x8
        0x46
        0x0
        0x9
        0xed
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5e
        0x0
        0x8
        0x1e
        0x0
        0x9
        0x9d
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7e
        0x0
        0x8
        0x3e
        0x0
        0x9
        0xdd
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6e
        0x0
        0x8
        0x2e
        0x0
        0x9
        0xbd
        0x0
        0x8
        0xe
        0x0
        0x8
        0x8e
        0x0
        0x8
        0x4e
        0x0
        0x9
        0xfd
        0x60
        0x7
        0x100
        0x0
        0x8
        0x51
        0x0
        0x8
        0x11
        0x55
        0x8
        0x83
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x71
        0x0
        0x8
        0x31
        0x0
        0x9
        0xc3
        0x50
        0x7
        0xa
        0x0
        0x8
        0x61
        0x0
        0x8
        0x21
        0x0
        0x9
        0xa3
        0x0
        0x8
        0x1
        0x0
        0x8
        0x81
        0x0
        0x8
        0x41
        0x0
        0x9
        0xe3
        0x50
        0x7
        0x6
        0x0
        0x8
        0x59
        0x0
        0x8
        0x19
        0x0
        0x9
        0x93
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x79
        0x0
        0x8
        0x39
        0x0
        0x9
        0xd3
        0x51
        0x7
        0x11
        0x0
        0x8
        0x69
        0x0
        0x8
        0x29
        0x0
        0x9
        0xb3
        0x0
        0x8
        0x9
        0x0
        0x8
        0x89
        0x0
        0x8
        0x49
        0x0
        0x9
        0xf3
        0x50
        0x7
        0x4
        0x0
        0x8
        0x55
        0x0
        0x8
        0x15
        0x50
        0x8
        0x102
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x75
        0x0
        0x8
        0x35
        0x0
        0x9
        0xcb
        0x51
        0x7
        0xd
        0x0
        0x8
        0x65
        0x0
        0x8
        0x25
        0x0
        0x9
        0xab
        0x0
        0x8
        0x5
        0x0
        0x8
        0x85
        0x0
        0x8
        0x45
        0x0
        0x9
        0xeb
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5d
        0x0
        0x8
        0x1d
        0x0
        0x9
        0x9b
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7d
        0x0
        0x8
        0x3d
        0x0
        0x9
        0xdb
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6d
        0x0
        0x8
        0x2d
        0x0
        0x9
        0xbb
        0x0
        0x8
        0xd
        0x0
        0x8
        0x8d
        0x0
        0x8
        0x4d
        0x0
        0x9
        0xfb
        0x50
        0x7
        0x3
        0x0
        0x8
        0x53
        0x0
        0x8
        0x13
        0x55
        0x8
        0xc3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x73
        0x0
        0x8
        0x33
        0x0
        0x9
        0xc7
        0x51
        0x7
        0xb
        0x0
        0x8
        0x63
        0x0
        0x8
        0x23
        0x0
        0x9
        0xa7
        0x0
        0x8
        0x3
        0x0
        0x8
        0x83
        0x0
        0x8
        0x43
        0x0
        0x9
        0xe7
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5b
        0x0
        0x8
        0x1b
        0x0
        0x9
        0x97
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7b
        0x0
        0x8
        0x3b
        0x0
        0x9
        0xd7
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6b
        0x0
        0x8
        0x2b
        0x0
        0x9
        0xb7
        0x0
        0x8
        0xb
        0x0
        0x8
        0x8b
        0x0
        0x8
        0x4b
        0x0
        0x9
        0xf7
        0x50
        0x7
        0x5
        0x0
        0x8
        0x57
        0x0
        0x8
        0x17
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x77
        0x0
        0x8
        0x37
        0x0
        0x9
        0xcf
        0x51
        0x7
        0xf
        0x0
        0x8
        0x67
        0x0
        0x8
        0x27
        0x0
        0x9
        0xaf
        0x0
        0x8
        0x7
        0x0
        0x8
        0x87
        0x0
        0x8
        0x47
        0x0
        0x9
        0xef
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5f
        0x0
        0x8
        0x1f
        0x0
        0x9
        0x9f
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7f
        0x0
        0x8
        0x3f
        0x0
        0x9
        0xdf
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6f
        0x0
        0x8
        0x2f
        0x0
        0x9
        0xbf
        0x0
        0x8
        0xf
        0x0
        0x8
        0x8f
        0x0
        0x8
        0x4f
        0x0
        0x9
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x50
        0x5
        0x1
        0x57
        0x5
        0x101
        0x53
        0x5
        0x11
        0x5b
        0x5
        0x1001
        0x51
        0x5
        0x5
        0x59
        0x5
        0x401
        0x55
        0x5
        0x41
        0x5d
        0x5
        0x4001
        0x50
        0x5
        0x3
        0x58
        0x5
        0x201
        0x54
        0x5
        0x21
        0x5c
        0x5
        0x2001
        0x52
        0x5
        0x9
        0x5a
        0x5
        0x801
        0x56
        0x5
        0x81
        0xc0
        0x5
        0x6001
        0x50
        0x5
        0x2
        0x57
        0x5
        0x181
        0x53
        0x5
        0x19
        0x5b
        0x5
        0x1801
        0x51
        0x5
        0x7
        0x59
        0x5
        0x601
        0x55
        0x5
        0x61
        0x5d
        0x5
        0x6001
        0x50
        0x5
        0x4
        0x58
        0x5
        0x301
        0x54
        0x5
        0x31
        0x5c
        0x5
        0x3001
        0x52
        0x5
        0xd
        0x5a
        0x5
        0xc01
        0x56
        0x5
        0xc1
        0xc0
        0x5
        0x6001
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xd
        0xf
        0x11
        0x13
        0x17
        0x1b
        0x1f
        0x23
        0x2b
        0x33
        0x3b
        0x43
        0x53
        0x63
        0x73
        0x83
        0xa3
        0xc3
        0xe3
        0x102
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
        0x70
        0x70
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0x9
        0xd
        0x11
        0x19
        0x21
        0x31
        0x41
        0x61
        0x81
        0xc1
        0x101
        0x181
        0x201
        0x301
        0x401
        0x601
        0x801
        0xc01
        0x1001
        0x1801
        0x2001
        0x3001
        0x4001
        0x6001
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private huft_build([IIII[I[I[I[I[I[I[I)I
    .locals 24

    const/4 v5, 0x0

    move/from16 v6, p3

    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    add-int v8, p2, v5

    aget v8, p1, v8

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move/from16 v0, p3

    if-ne v5, v0, :cond_1

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, p7, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, p8, v5

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    aget v5, p8, v5

    const/4 v6, 0x1

    :goto_1
    const/16 v7, 0xf

    if-gt v6, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aget v7, v7, v6

    if-eqz v7, :cond_6

    :cond_2
    if-ge v5, v6, :cond_3

    move v5, v6

    :cond_3
    const/16 v7, 0xf

    :goto_2
    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aget v8, v8, v7

    if-eqz v8, :cond_7

    :cond_4
    if-le v5, v7, :cond_5

    move v5, v7

    :cond_5
    const/4 v8, 0x0

    aput v5, p8, v8

    const/4 v8, 0x1

    shl-int/2addr v8, v6

    move v9, v6

    :goto_3
    if-ge v9, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aget v10, v10, v9

    sub-int/2addr v8, v10

    if-gez v8, :cond_8

    const/4 v5, -0x3

    goto :goto_0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v9, v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aget v9, v9, v7

    sub-int v17, v8, v9

    if-gez v17, :cond_a

    const/4 v5, -0x3

    goto :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aget v9, v8, v7

    add-int v9, v9, v17

    aput v9, v8, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v8, 0x2

    move v11, v7

    :goto_4
    add-int/lit8 v11, v11, -0x1

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aget v13, v13, v9

    add-int/2addr v10, v13

    aput v10, v12, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    const/4 v8, 0x0

    :cond_c
    add-int v10, p2, v8

    aget v10, p1, v10

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    aget v12, v11, v10

    add-int/lit8 v13, v12, 0x1

    aput v13, v11, v10

    aput v9, p11, v12

    :cond_d
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p3

    if-lt v9, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    aget v18, v8, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    const/4 v9, 0x0

    const/4 v12, 0x0

    aput v12, v8, v9

    const/4 v11, 0x0

    const/4 v13, -0x1

    neg-int v9, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    const/4 v10, 0x0

    const/4 v14, 0x0

    aput v14, v8, v10

    const/4 v10, 0x0

    const/4 v8, 0x0

    move/from16 v23, v8

    move v8, v11

    move v11, v12

    move v12, v6

    move/from16 v6, v23

    :goto_5
    if-gt v12, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aget v14, v14, v12

    :goto_6
    add-int/lit8 v16, v14, -0x1

    if-eqz v14, :cond_19

    move v14, v10

    move v10, v13

    move v13, v6

    :goto_7
    add-int v6, v9, v5

    if-le v12, v6, :cond_13

    add-int/lit8 v15, v10, 0x1

    add-int v14, v9, v5

    sub-int v6, v7, v14

    if-le v6, v5, :cond_f

    move v13, v5

    :goto_8
    const/4 v9, 0x1

    sub-int v6, v12, v14

    shl-int/2addr v9, v6

    add-int/lit8 v10, v16, 0x1

    if-le v9, v10, :cond_e

    add-int/lit8 v10, v16, 0x1

    sub-int/2addr v9, v10

    if-ge v6, v13, :cond_e

    move v10, v9

    move v9, v12

    :goto_9
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v13, :cond_e

    shl-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v19, v0

    add-int/lit8 v9, v9, 0x1

    aget v19, v19, v9

    move/from16 v0, v19

    if-gt v10, v0, :cond_10

    :cond_e
    const/4 v9, 0x1

    shl-int/2addr v9, v6

    const/4 v10, 0x0

    aget v10, p10, v10

    add-int/2addr v10, v9

    const/16 v13, 0x5a0

    if-le v10, v13, :cond_11

    const/4 v5, -0x3

    goto/16 :goto_0

    :cond_f
    move v13, v6

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v19, v0

    aget v19, v19, v9

    sub-int v10, v10, v19

    goto :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    const/4 v10, 0x0

    aget v10, p10, v10

    aput v10, v13, v15

    const/4 v13, 0x0

    aget v19, p10, v13

    add-int v19, v19, v9

    aput v19, p10, v13

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    aput v11, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/16 v19, 0x0

    int-to-byte v6, v6

    aput v6, v13, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/4 v13, 0x1

    int-to-byte v0, v5

    move/from16 v19, v0

    aput v19, v6, v13

    sub-int v6, v14, v5

    ushr-int v6, v11, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v15, -0x1

    aget v20, v20, v21

    sub-int v20, v10, v20

    sub-int v20, v20, v6

    aput v20, v13, v19

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v15, -0x1

    aget v20, v20, v21

    add-int v6, v6, v20

    mul-int/lit8 v6, v6, 0x3

    const/16 v20, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p9

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v13, v9

    move v9, v14

    move v14, v10

    move v10, v15

    goto/16 :goto_7

    :cond_12
    const/4 v6, 0x0

    aput v10, p7, v6

    move v13, v9

    move v9, v14

    move v14, v10

    move v10, v15

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/4 v15, 0x1

    sub-int v19, v12, v9

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput v19, v6, v15

    move/from16 v0, v18

    if-lt v8, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/4 v15, 0x0

    const/16 v19, 0xc0

    aput v19, v6, v15

    move v6, v8

    :goto_a
    const/4 v8, 0x1

    sub-int v15, v12, v9

    shl-int v15, v8, v15

    ushr-int v8, v11, v9

    :goto_b
    if-ge v8, v13, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int v21, v14, v8

    mul-int/lit8 v21, v21, 0x3

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p9

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v15

    goto :goto_b

    :cond_14
    aget v6, p11, v8

    move/from16 v0, p4

    if-ge v6, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/16 v19, 0x0

    aget v6, p11, v8

    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v6, v0, :cond_15

    const/4 v6, 0x0

    :goto_c
    int-to-byte v6, v6

    aput v6, v15, v19

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/16 v19, 0x2

    add-int/lit8 v6, v8, 0x1

    aget v8, p11, v8

    aput v8, v15, v19

    goto :goto_a

    :cond_15
    const/16 v6, 0x60

    goto :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/4 v15, 0x0

    aget v19, p11, v8

    sub-int v19, v19, p4

    aget v19, p6, v19

    add-int/lit8 v19, v19, 0x10

    add-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput v19, v6, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    const/16 v19, 0x2

    add-int/lit8 v6, v8, 0x1

    aget v8, p11, v8

    sub-int v8, v8, p4

    aget v8, p5, v8

    aput v8, v15, v19

    goto :goto_a

    :cond_17
    const/4 v8, 0x1

    add-int/lit8 v15, v12, -0x1

    shl-int/2addr v8, v15

    :goto_d
    and-int v15, v11, v8

    if-eqz v15, :cond_18

    xor-int/2addr v11, v8

    ushr-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_18
    xor-int/2addr v11, v8

    const/4 v8, 0x1

    shl-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    move/from16 v23, v9

    move v9, v8

    move/from16 v8, v23

    :goto_e
    and-int/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    aget v15, v15, v10

    if-eq v9, v15, :cond_1c

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v8, v5

    const/4 v9, 0x1

    shl-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    :cond_1a
    if-eqz v17, :cond_1b

    const/4 v5, 0x1

    if-eq v7, v5, :cond_1b

    const/4 v5, -0x5

    goto/16 :goto_0

    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1c
    move v9, v8

    move v8, v6

    move v6, v13

    move v13, v10

    move v10, v14

    move/from16 v14, v16

    goto/16 :goto_6
.end method

.method static inflate_trees_fixed([I[I[[I[[I)I
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x9

    aput v0, p0, v1

    const/4 v0, 0x5

    aput v0, p1, v1

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->fixed_tl:[I

    aput-object v0, p2, v1

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->fixed_td:[I

    aput-object v0, p3, v1

    return v1
.end method

.method private initWorkArea(I)V
    .locals 6

    const/16 v5, 0xf

    const/4 v4, 0x3

    const/16 v3, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    new-array v0, v5, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    array-length v0, v0

    if-ge v0, p1, :cond_2

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    :cond_1
    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_4

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method inflate_trees_bits([I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 13

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->initWorkArea(I)V

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0x13

    const/16 v5, 0x13

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p3

    move-object v9, p2

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v12}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    const-string v2, "oversubscribed dynamic bit lengths tree"

    move-object/from16 v0, p5

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, -0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    aget v2, p2, v2

    if-nez v2, :cond_0

    :cond_2
    const-string v1, "incomplete dynamic bit lengths tree"

    move-object/from16 v0, p5

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v1, -0x3

    goto :goto_0
.end method

.method inflate_trees_dynamic(II[I[I[I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 13

    const/16 v1, 0x120

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->initWorkArea(I)V

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v3, 0x0

    const/16 v5, 0x101

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cplens:[I

    sget-object v7, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cplext:[I

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object/from16 v2, p3

    move v4, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    aget v2, p4, v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    const-string v2, "oversubscribed literal/length tree"

    move-object/from16 v0, p9

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v2, -0x4

    if-eq v1, v2, :cond_1

    const-string v1, "incomplete literal/length tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v1, -0x3

    goto :goto_0

    :cond_3
    const/16 v1, 0x120

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->initWorkArea(I)V

    const/4 v5, 0x0

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cpdist:[I

    sget-object v7, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cpdext:[I

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object/from16 v2, p3

    move v3, p1

    move v4, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v2, 0x0

    aget v2, p5, v2

    if-nez v2, :cond_7

    const/16 v2, 0x101

    if-le p1, v2, :cond_7

    :cond_4
    const/4 v2, -0x3

    if-ne v1, v2, :cond_5

    const-string v2, "oversubscribed distance tree"

    move-object/from16 v0, p9

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v2, -0x5

    if-ne v1, v2, :cond_6

    const-string v1, "incomplete distance tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v1, -0x3

    goto :goto_0

    :cond_6
    const/4 v2, -0x4

    if-eq v1, v2, :cond_1

    const-string v1, "empty distance tree with lengths"

    move-object/from16 v0, p9

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v1, -0x3

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method
