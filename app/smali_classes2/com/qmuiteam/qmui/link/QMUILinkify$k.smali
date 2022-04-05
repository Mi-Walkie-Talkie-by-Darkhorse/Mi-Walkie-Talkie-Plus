.class Lcom/qmuiteam/qmui/link/QMUILinkify$k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/link/QMUILinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "top"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "net"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "org"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "edu"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "gov"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "int"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "mil"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "tel"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "biz"

    aput-object v3, v0, v1

    const-string v1, "cc"

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v3, "tv"

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v4, 0xc

    const-string v5, "info"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "zw"

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const-string v5, "name"

    aput-object v5, v0, v4

    const-string v4, "hk"

    const/16 v5, 0xf

    aput-object v4, v0, v5

    const/16 v5, 0x10

    const-string v6, "mobi"

    aput-object v6, v0, v5

    const/16 v5, 0x11

    const-string v6, "asia"

    aput-object v6, v0, v5

    const/16 v5, 0x12

    const-string v6, "cd"

    aput-object v6, v0, v5

    const/16 v5, 0x13

    const-string v6, "travel"

    aput-object v6, v0, v5

    const/16 v5, 0x14

    const-string v6, "pro"

    aput-object v6, v0, v5

    const/16 v5, 0x15

    const-string v6, "museum"

    aput-object v6, v0, v5

    const/16 v5, 0x16

    const-string v6, "coop"

    aput-object v6, v0, v5

    const/16 v5, 0x17

    const-string v6, "aero"

    aput-object v6, v0, v5

    const/16 v5, 0x18

    const-string v6, "ad"

    aput-object v6, v0, v5

    const/16 v5, 0x19

    const-string v6, "ae"

    aput-object v6, v0, v5

    const/16 v5, 0x1a

    const-string v6, "af"

    aput-object v6, v0, v5

    const/16 v5, 0x1b

    const-string v6, "ag"

    aput-object v6, v0, v5

    const/16 v5, 0x1c

    const-string v6, "ai"

    aput-object v6, v0, v5

    const/16 v5, 0x1d

    const-string v6, "al"

    aput-object v6, v0, v5

    const/16 v5, 0x1e

    const-string v6, "am"

    aput-object v6, v0, v5

    const/16 v5, 0x1f

    const-string v6, "an"

    aput-object v6, v0, v5

    const/16 v5, 0x20

    const-string v6, "ao"

    aput-object v6, v0, v5

    const/16 v5, 0x21

    const-string v6, "aq"

    aput-object v6, v0, v5

    const/16 v5, 0x22

    const-string v6, "ar"

    aput-object v6, v0, v5

    const/16 v5, 0x23

    const-string v6, "as"

    aput-object v6, v0, v5

    const/16 v5, 0x24

    const-string v6, "at"

    aput-object v6, v0, v5

    const/16 v5, 0x25

    const-string v6, "au"

    aput-object v6, v0, v5

    const/16 v5, 0x26

    const-string v6, "aw"

    aput-object v6, v0, v5

    const/16 v5, 0x27

    const-string v6, "az"

    aput-object v6, v0, v5

    const/16 v5, 0x28

    const-string v6, "ba"

    aput-object v6, v0, v5

    const/16 v5, 0x29

    const-string v6, "bb"

    aput-object v6, v0, v5

    const/16 v5, 0x2a

    const-string v6, "bd"

    aput-object v6, v0, v5

    const/16 v5, 0x2b

    const-string v6, "be"

    aput-object v6, v0, v5

    const/16 v5, 0x2c

    const-string v6, "bf"

    aput-object v6, v0, v5

    const/16 v5, 0x2d

    const-string v6, "bg"

    aput-object v6, v0, v5

    const/16 v5, 0x2e

    const-string v6, "bh"

    aput-object v6, v0, v5

    const/16 v5, 0x2f

    const-string v6, "bi"

    aput-object v6, v0, v5

    const/16 v5, 0x30

    const-string v6, "bj"

    aput-object v6, v0, v5

    const/16 v5, 0x31

    const-string v6, "bm"

    aput-object v6, v0, v5

    const/16 v5, 0x32

    const-string v6, "bn"

    aput-object v6, v0, v5

    const/16 v5, 0x33

    const-string v6, "bo"

    aput-object v6, v0, v5

    const/16 v5, 0x34

    const-string v6, "br"

    aput-object v6, v0, v5

    const/16 v5, 0x35

    const-string v6, "bs"

    aput-object v6, v0, v5

    const/16 v5, 0x36

    const-string v6, "bt"

    aput-object v6, v0, v5

    const/16 v5, 0x37

    const-string v6, "bv"

    aput-object v6, v0, v5

    const/16 v5, 0x38

    const-string v6, "bw"

    aput-object v6, v0, v5

    const/16 v5, 0x39

    const-string v6, "by"

    aput-object v6, v0, v5

    const/16 v5, 0x3a

    const-string v6, "bz"

    aput-object v6, v0, v5

    const/16 v5, 0x3b

    const-string v6, "ca"

    aput-object v6, v0, v5

    const/16 v5, 0x3c

    aput-object v1, v0, v5

    const/16 v1, 0x3d

    const-string v5, "cf"

    aput-object v5, v0, v1

    const/16 v1, 0x3e

    const-string v5, "cg"

    aput-object v5, v0, v1

    const/16 v1, 0x3f

    const-string v5, "ch"

    aput-object v5, v0, v1

    const/16 v1, 0x40

    const-string v5, "ci"

    aput-object v5, v0, v1

    const/16 v1, 0x41

    const-string v5, "ck"

    aput-object v5, v0, v1

    const/16 v1, 0x42

    const-string v5, "cl"

    aput-object v5, v0, v1

    const/16 v1, 0x43

    const-string v5, "cm"

    aput-object v5, v0, v1

    const/16 v1, 0x44

    const-string v5, "cn"

    aput-object v5, v0, v1

    const/16 v1, 0x45

    const-string v5, "co"

    aput-object v5, v0, v1

    const/16 v1, 0x46

    const-string v5, "cq"

    aput-object v5, v0, v1

    const/16 v1, 0x47

    const-string v5, "cr"

    aput-object v5, v0, v1

    const/16 v1, 0x48

    const-string v5, "cu"

    aput-object v5, v0, v1

    const/16 v1, 0x49

    const-string v5, "cv"

    aput-object v5, v0, v1

    const/16 v1, 0x4a

    const-string v5, "cx"

    aput-object v5, v0, v1

    const/16 v1, 0x4b

    const-string v5, "cy"

    aput-object v5, v0, v1

    const/16 v1, 0x4c

    const-string v5, "cz"

    aput-object v5, v0, v1

    const/16 v1, 0x4d

    const-string v5, "de"

    aput-object v5, v0, v1

    const/16 v1, 0x4e

    const-string v5, "dj"

    aput-object v5, v0, v1

    const/16 v1, 0x4f

    const-string v5, "dk"

    aput-object v5, v0, v1

    const/16 v1, 0x50

    const-string v5, "dm"

    aput-object v5, v0, v1

    const/16 v1, 0x51

    const-string v5, "do"

    aput-object v5, v0, v1

    const/16 v1, 0x52

    const-string v5, "dz"

    aput-object v5, v0, v1

    const/16 v1, 0x53

    const-string v5, "ec"

    aput-object v5, v0, v1

    const/16 v1, 0x54

    const-string v5, "ee"

    aput-object v5, v0, v1

    const/16 v1, 0x55

    const-string v5, "eg"

    aput-object v5, v0, v1

    const/16 v1, 0x56

    const-string v5, "eh"

    aput-object v5, v0, v1

    const/16 v1, 0x57

    const-string v5, "es"

    aput-object v5, v0, v1

    const/16 v1, 0x58

    const-string v5, "et"

    aput-object v5, v0, v1

    const/16 v1, 0x59

    const-string v5, "ev"

    aput-object v5, v0, v1

    const/16 v1, 0x5a

    const-string v5, "fi"

    aput-object v5, v0, v1

    const/16 v1, 0x5b

    const-string v5, "fj"

    aput-object v5, v0, v1

    const/16 v1, 0x5c

    const-string v5, "fk"

    aput-object v5, v0, v1

    const/16 v1, 0x5d

    const-string v5, "fm"

    aput-object v5, v0, v1

    const/16 v1, 0x5e

    const-string v5, "fo"

    aput-object v5, v0, v1

    const/16 v1, 0x5f

    const-string v5, "fr"

    aput-object v5, v0, v1

    const/16 v1, 0x60

    const-string v5, "ga"

    aput-object v5, v0, v1

    const/16 v1, 0x61

    const-string v5, "gb"

    aput-object v5, v0, v1

    const/16 v1, 0x62

    const-string v5, "gd"

    aput-object v5, v0, v1

    const/16 v1, 0x63

    const-string v5, "ge"

    aput-object v5, v0, v1

    const/16 v1, 0x64

    const-string v5, "gf"

    aput-object v5, v0, v1

    const/16 v1, 0x65

    const-string v5, "gh"

    aput-object v5, v0, v1

    const/16 v1, 0x66

    const-string v5, "gi"

    aput-object v5, v0, v1

    const/16 v1, 0x67

    const-string v5, "gl"

    aput-object v5, v0, v1

    const/16 v1, 0x68

    const-string v5, "gm"

    aput-object v5, v0, v1

    const/16 v1, 0x69

    const-string v5, "gn"

    aput-object v5, v0, v1

    const/16 v1, 0x6a

    const-string v5, "gp"

    aput-object v5, v0, v1

    const/16 v1, 0x6b

    const-string v5, "gr"

    aput-object v5, v0, v1

    const/16 v1, 0x6c

    const-string v5, "gt"

    aput-object v5, v0, v1

    const/16 v1, 0x6d

    const-string v5, "gu"

    aput-object v5, v0, v1

    const/16 v1, 0x6e

    const-string v5, "gw"

    aput-object v5, v0, v1

    const/16 v1, 0x6f

    const-string v5, "gy"

    aput-object v5, v0, v1

    const/16 v1, 0x70

    aput-object v4, v0, v1

    const/16 v1, 0x71

    const-string v4, "hm"

    aput-object v4, v0, v1

    const/16 v1, 0x72

    const-string v4, "hn"

    aput-object v4, v0, v1

    const/16 v1, 0x73

    const-string v4, "hr"

    aput-object v4, v0, v1

    const/16 v1, 0x74

    const-string v4, "ht"

    aput-object v4, v0, v1

    const/16 v1, 0x75

    const-string v4, "hu"

    aput-object v4, v0, v1

    const/16 v1, 0x76

    const-string v4, "id"

    aput-object v4, v0, v1

    const/16 v1, 0x77

    const-string v4, "ie"

    aput-object v4, v0, v1

    const/16 v1, 0x78

    const-string v4, "il"

    aput-object v4, v0, v1

    const/16 v1, 0x79

    const-string v4, "in"

    aput-object v4, v0, v1

    const/16 v1, 0x7a

    const-string v4, "io"

    aput-object v4, v0, v1

    const/16 v1, 0x7b

    const-string v4, "iq"

    aput-object v4, v0, v1

    const/16 v1, 0x7c

    const-string v4, "ir"

    aput-object v4, v0, v1

    const/16 v1, 0x7d

    const-string v4, "is"

    aput-object v4, v0, v1

    const/16 v1, 0x7e

    const-string v4, "it"

    aput-object v4, v0, v1

    const/16 v1, 0x7f

    const-string v4, "jm"

    aput-object v4, v0, v1

    const/16 v1, 0x80

    const-string v4, "jo"

    aput-object v4, v0, v1

    const/16 v1, 0x81

    const-string v4, "jp"

    aput-object v4, v0, v1

    const/16 v1, 0x82

    const-string v4, "ke"

    aput-object v4, v0, v1

    const/16 v1, 0x83

    const-string v4, "kg"

    aput-object v4, v0, v1

    const/16 v1, 0x84

    const-string v4, "kh"

    aput-object v4, v0, v1

    const/16 v1, 0x85

    const-string v4, "ki"

    aput-object v4, v0, v1

    const/16 v1, 0x86

    const-string v4, "km"

    aput-object v4, v0, v1

    const/16 v1, 0x87

    const-string v4, "kn"

    aput-object v4, v0, v1

    const/16 v1, 0x88

    const-string v4, "kp"

    aput-object v4, v0, v1

    const/16 v1, 0x89

    const-string v4, "kr"

    aput-object v4, v0, v1

    const/16 v1, 0x8a

    const-string v4, "kw"

    aput-object v4, v0, v1

    const/16 v1, 0x8b

    const-string v4, "ky"

    aput-object v4, v0, v1

    const/16 v1, 0x8c

    const-string v4, "kz"

    aput-object v4, v0, v1

    const/16 v1, 0x8d

    const-string v4, "la"

    aput-object v4, v0, v1

    const/16 v1, 0x8e

    const-string v4, "lb"

    aput-object v4, v0, v1

    const/16 v1, 0x8f

    const-string v4, "lc"

    aput-object v4, v0, v1

    const/16 v1, 0x90

    const-string v4, "li"

    aput-object v4, v0, v1

    const/16 v1, 0x91

    const-string v4, "lk"

    aput-object v4, v0, v1

    const/16 v1, 0x92

    const-string v4, "lr"

    aput-object v4, v0, v1

    const/16 v1, 0x93

    const-string v4, "ls"

    aput-object v4, v0, v1

    const/16 v1, 0x94

    const-string v4, "lt"

    aput-object v4, v0, v1

    const/16 v1, 0x95

    const-string v4, "lu"

    aput-object v4, v0, v1

    const/16 v1, 0x96

    const-string v4, "lv"

    aput-object v4, v0, v1

    const/16 v1, 0x97

    const-string v4, "ly"

    aput-object v4, v0, v1

    const/16 v1, 0x98

    const-string v4, "ma"

    aput-object v4, v0, v1

    const/16 v1, 0x99

    const-string v4, "mc"

    aput-object v4, v0, v1

    const/16 v1, 0x9a

    const-string v4, "md"

    aput-object v4, v0, v1

    const/16 v1, 0x9b

    const-string v4, "mg"

    aput-object v4, v0, v1

    const/16 v1, 0x9c

    const-string v4, "mh"

    aput-object v4, v0, v1

    const/16 v1, 0x9d

    const-string v4, "ml"

    aput-object v4, v0, v1

    const/16 v1, 0x9e

    const-string v4, "mm"

    aput-object v4, v0, v1

    const/16 v1, 0x9f

    const-string v4, "mn"

    aput-object v4, v0, v1

    const/16 v1, 0xa0

    const-string v4, "mo"

    aput-object v4, v0, v1

    const/16 v1, 0xa1

    const-string v4, "mp"

    aput-object v4, v0, v1

    const/16 v1, 0xa2

    const-string v4, "mq"

    aput-object v4, v0, v1

    const/16 v1, 0xa3

    const-string v4, "mr"

    aput-object v4, v0, v1

    const/16 v1, 0xa4

    const-string v4, "ms"

    aput-object v4, v0, v1

    const/16 v1, 0xa5

    const-string v4, "mt"

    aput-object v4, v0, v1

    const/16 v1, 0xa6

    const-string v4, "mv"

    aput-object v4, v0, v1

    const/16 v1, 0xa7

    const-string v4, "mw"

    aput-object v4, v0, v1

    const/16 v1, 0xa8

    const-string v4, "mx"

    aput-object v4, v0, v1

    const/16 v1, 0xa9

    const-string v4, "my"

    aput-object v4, v0, v1

    const/16 v1, 0xaa

    const-string v4, "mz"

    aput-object v4, v0, v1

    const/16 v1, 0xab

    const-string v4, "na"

    aput-object v4, v0, v1

    const/16 v1, 0xac

    const-string v4, "nc"

    aput-object v4, v0, v1

    const/16 v1, 0xad

    const-string v4, "ne"

    aput-object v4, v0, v1

    const/16 v1, 0xae

    const-string v4, "nf"

    aput-object v4, v0, v1

    const/16 v1, 0xaf

    const-string v4, "ng"

    aput-object v4, v0, v1

    const/16 v1, 0xb0

    const-string v4, "ni"

    aput-object v4, v0, v1

    const/16 v1, 0xb1

    const-string v4, "nl"

    aput-object v4, v0, v1

    const/16 v1, 0xb2

    const-string v4, "no"

    aput-object v4, v0, v1

    const/16 v1, 0xb3

    const-string v4, "np"

    aput-object v4, v0, v1

    const/16 v1, 0xb4

    const-string v4, "nr"

    aput-object v4, v0, v1

    const/16 v1, 0xb5

    const-string v4, "nt"

    aput-object v4, v0, v1

    const/16 v1, 0xb6

    const-string v4, "nu"

    aput-object v4, v0, v1

    const/16 v1, 0xb7

    const-string v4, "nz"

    aput-object v4, v0, v1

    const/16 v1, 0xb8

    const-string v4, "om"

    aput-object v4, v0, v1

    const/16 v1, 0xb9

    const-string v4, "qa"

    aput-object v4, v0, v1

    const/16 v1, 0xba

    const-string v4, "pa"

    aput-object v4, v0, v1

    const/16 v1, 0xbb

    const-string v4, "pe"

    aput-object v4, v0, v1

    const/16 v1, 0xbc

    const-string v4, "pf"

    aput-object v4, v0, v1

    const/16 v1, 0xbd

    const-string v4, "pg"

    aput-object v4, v0, v1

    const/16 v1, 0xbe

    const-string v4, "ph"

    aput-object v4, v0, v1

    const/16 v1, 0xbf

    const-string v4, "pk"

    aput-object v4, v0, v1

    const/16 v1, 0xc0

    const-string v4, "pl"

    aput-object v4, v0, v1

    const/16 v1, 0xc1

    const-string v4, "pm"

    aput-object v4, v0, v1

    const/16 v1, 0xc2

    const-string v4, "pn"

    aput-object v4, v0, v1

    const/16 v1, 0xc3

    const-string v4, "pr"

    aput-object v4, v0, v1

    const/16 v1, 0xc4

    const-string v4, "pt"

    aput-object v4, v0, v1

    const/16 v1, 0xc5

    const-string v4, "pw"

    aput-object v4, v0, v1

    const/16 v1, 0xc6

    const-string v4, "py"

    aput-object v4, v0, v1

    const/16 v1, 0xc7

    const-string v4, "re"

    aput-object v4, v0, v1

    const/16 v1, 0xc8

    const-string v4, "ro"

    aput-object v4, v0, v1

    const/16 v1, 0xc9

    const-string v4, "ru"

    aput-object v4, v0, v1

    const/16 v1, 0xca

    const-string v4, "rw"

    aput-object v4, v0, v1

    const/16 v1, 0xcb

    const-string v4, "sa"

    aput-object v4, v0, v1

    const/16 v1, 0xcc

    const-string v4, "sb"

    aput-object v4, v0, v1

    const/16 v1, 0xcd

    const-string v4, "sc"

    aput-object v4, v0, v1

    const/16 v1, 0xce

    const-string v4, "sd"

    aput-object v4, v0, v1

    const/16 v1, 0xcf

    const-string v4, "se"

    aput-object v4, v0, v1

    const/16 v1, 0xd0

    const-string v4, "sg"

    aput-object v4, v0, v1

    const/16 v1, 0xd1

    const-string v4, "sh"

    aput-object v4, v0, v1

    const/16 v1, 0xd2

    const-string v4, "si"

    aput-object v4, v0, v1

    const/16 v1, 0xd3

    const-string v4, "sj"

    aput-object v4, v0, v1

    const/16 v1, 0xd4

    const-string v4, "sk"

    aput-object v4, v0, v1

    const/16 v1, 0xd5

    const-string v4, "sl"

    aput-object v4, v0, v1

    const/16 v1, 0xd6

    const-string v4, "sm"

    aput-object v4, v0, v1

    const/16 v1, 0xd7

    const-string v4, "sn"

    aput-object v4, v0, v1

    const/16 v1, 0xd8

    const-string v4, "so"

    aput-object v4, v0, v1

    const/16 v1, 0xd9

    const-string v4, "sr"

    aput-object v4, v0, v1

    const/16 v1, 0xda

    const-string v4, "st"

    aput-object v4, v0, v1

    const/16 v1, 0xdb

    const-string v4, "su"

    aput-object v4, v0, v1

    const/16 v1, 0xdc

    const-string v4, "sy"

    aput-object v4, v0, v1

    const/16 v1, 0xdd

    const-string v4, "sz"

    aput-object v4, v0, v1

    const/16 v1, 0xde

    const-string v4, "tc"

    aput-object v4, v0, v1

    const/16 v1, 0xdf

    const-string v4, "td"

    aput-object v4, v0, v1

    const/16 v1, 0xe0

    const-string v4, "tf"

    aput-object v4, v0, v1

    const/16 v1, 0xe1

    const-string v4, "tg"

    aput-object v4, v0, v1

    const/16 v1, 0xe2

    const-string v4, "th"

    aput-object v4, v0, v1

    const/16 v1, 0xe3

    const-string v4, "tj"

    aput-object v4, v0, v1

    const/16 v1, 0xe4

    const-string v4, "tk"

    aput-object v4, v0, v1

    const/16 v1, 0xe5

    const-string v4, "tm"

    aput-object v4, v0, v1

    const/16 v1, 0xe6

    const-string v4, "tn"

    aput-object v4, v0, v1

    const/16 v1, 0xe7

    const-string v4, "to"

    aput-object v4, v0, v1

    const/16 v1, 0xe8

    const-string v4, "tp"

    aput-object v4, v0, v1

    const/16 v1, 0xe9

    const-string v4, "tr"

    aput-object v4, v0, v1

    const/16 v1, 0xea

    const-string v4, "tt"

    aput-object v4, v0, v1

    const/16 v1, 0xeb

    aput-object v3, v0, v1

    const/16 v1, 0xec

    const-string v3, "tw"

    aput-object v3, v0, v1

    const/16 v1, 0xed

    const-string v3, "tz"

    aput-object v3, v0, v1

    const/16 v1, 0xee

    const-string v3, "ua"

    aput-object v3, v0, v1

    const/16 v1, 0xef

    const-string v3, "ug"

    aput-object v3, v0, v1

    const/16 v1, 0xf0

    const-string v3, "uk"

    aput-object v3, v0, v1

    const/16 v1, 0xf1

    const-string v3, "us"

    aput-object v3, v0, v1

    const/16 v1, 0xf2

    const-string v3, "uy"

    aput-object v3, v0, v1

    const/16 v1, 0xf3

    const-string v3, "va"

    aput-object v3, v0, v1

    const/16 v1, 0xf4

    const-string v3, "vc"

    aput-object v3, v0, v1

    const/16 v1, 0xf5

    const-string v3, "ve"

    aput-object v3, v0, v1

    const/16 v1, 0xf6

    const-string v3, "vg"

    aput-object v3, v0, v1

    const/16 v1, 0xf7

    const-string v3, "vn"

    aput-object v3, v0, v1

    const/16 v1, 0xf8

    const-string v3, "vu"

    aput-object v3, v0, v1

    const/16 v1, 0xf9

    const-string v3, "wf"

    aput-object v3, v0, v1

    const/16 v1, 0xfa

    const-string v3, "ws"

    aput-object v3, v0, v1

    const/16 v1, 0xfb

    const-string v3, "ye"

    aput-object v3, v0, v1

    const/16 v1, 0xfc

    const-string v3, "yu"

    aput-object v3, v0, v1

    const/16 v1, 0xfd

    const-string v3, "za"

    aput-object v3, v0, v1

    const/16 v1, 0xfe

    const-string v3, "zm"

    aput-object v3, v0, v1

    const/16 v1, 0xff

    const-string v3, "zr"

    aput-object v3, v0, v1

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify$k;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v1, Lcom/qmuiteam/qmui/link/QMUILinkify$k;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_1

    if-eqz v2, :cond_0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v1, Lcom/qmuiteam/qmui/link/QMUILinkify$k;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "((?:(www\\.|[a-zA-Z\\.\\-]+\\.)?[a-zA-Z0-9\\-]+)\\."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(((?i:http|https|rtsp)://)?(((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\:\\d{1,5}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[/\\?](?:(?:[a-zA-Z0-9[\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\ud800\udc00-\ud83f\udffd\ud840\udc00-\ud87f\udffd\ud880\udc00-\ud8bf\udffd\ud8c0\udc00-\ud8ff\udffd\ud900\udc00-\ud93f\udffd\ud940\udc00-\ud97f\udffd\ud980\udc00-\ud9bf\udffd\ud9c0\udc00-\ud9ff\udffd\uda00\udc00-\uda3f\udffd\uda40\udc00-\uda7f\udffd\uda80\udc00-\udabf\udffd\udac0\udc00-\udaff\udffd\udb00\udc00-\udb3f\udffd\udb44\udc00-\udb7f\udffd&&[^\u00a0[\u2000-\u200a]\u2028\u2029\u202f\u3000]];/\\?:@&=#~\\-\\.\\+!\\*\'\\(\\),_\\$])|(?:%[a-fA-F0-9]{2}))*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify$k;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify$k;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method
