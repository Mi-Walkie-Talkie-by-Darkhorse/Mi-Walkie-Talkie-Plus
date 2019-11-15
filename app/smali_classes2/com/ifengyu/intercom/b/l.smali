.class public Lcom/ifengyu/intercom/b/l;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Landroid/graphics/Typeface;

.field public static final c:Landroid/graphics/Typeface;

.field public static final d:Landroid/graphics/Typeface;

.field public static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mitalki/imgcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "portrait.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/b/l;->a:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Klight_Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/b/l;->b:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Kmedium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/MI_LanTing_GB_Outside_YS_V2.3.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/b/l;->d:Landroid/graphics/Typeface;

    const/16 v0, 0xd0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5173\u95ed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "67Hz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "69.3Hz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "71.9Hz"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "74.4Hz"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "77Hz"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "79.7Hz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "82.5Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "85.4Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "88.5Hz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "91.5Hz"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "94.8Hz"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "97.4Hz"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "100Hz"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "103.5Hz"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "107.2Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "110.9Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "114.8Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "118.8Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "123Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "127.3Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "131.8Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "136.5Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "141.3Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "146.2Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "151.4Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "156.7Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "162.2Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "167.9Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "173.8Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "179.9Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "186.2Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "192.8Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "203.5Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "210.7Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "218.1Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "225.7Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "233.6Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "241.8Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "250.3Hz"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u5173\u95ed"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "D023N"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "D025N"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "D026N"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "D031N"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "D032N"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "D043N"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "D047N"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "D051N"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "D054N"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "D065N"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "D071N"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "D072N"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "D073N"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "D074N"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "D114N"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "D115N"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "D116N"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "D125N"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "D131N"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "D132N"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "D134N"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "D143N"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "D152N"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "D155N"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "D156N"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "D162N"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "D165N"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "D172N"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "D174N"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "D205N"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "D223N"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "D226N"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "D243N"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "D244N"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "D245N"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "D251N"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "D261N"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "D263N"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "D265N"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "D271N"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "D306N"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "D311N"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "D315N"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "D331N"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "D343N"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "D346N"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "D351N"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "D364N"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "D365N"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "D371N"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "D411N"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "D412N"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "D413N"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "D423N"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "D431N"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "D432N"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "D445N"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "D464N"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "D465N"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "D466N"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "D503N"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "D506N"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "D516N"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "D532N"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "D546N"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "D565N"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "D606N"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "D612N"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "D624N"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "D627N"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "D631N"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "D632N"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "D654N"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "D662N"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "D664N"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "D703N"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "D712N"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "D723N"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "D731N"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "D732N"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "D734N"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "D743N"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "D754N"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\u5173\u95ed"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "D023I"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "D025I"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "D026I"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "D031I"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "D032I"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "D043I"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "D047I"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "D051I"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "D054I"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "D065I"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "D071I"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "D072I"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "D073I"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "D074I"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "D114I"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "D115I"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "D116I"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "D125I"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "D131I"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "D132I"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "D134I"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "D143I"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "D152I"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "D155I"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "D156I"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "D162I"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "D165I"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "D172I"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "D174I"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "D205I"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "D223I"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "D226I"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "D243I"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "D244I"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "D245I"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "D251I"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "D261I"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "D263I"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "D265I"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "D271I"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "D306I"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "D311I"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "D315I"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "D331I"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "D343I"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "D346I"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "D351I"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "D364I"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "D365I"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "D371I"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "D411I"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "D412I"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "D413I"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "D423I"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "D431I"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "D432I"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "D445I"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "D464I"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "D465I"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "D466I"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "D503I"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "D506I"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "D516I"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "D532I"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "D546I"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "D565I"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "D606I"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "D612I"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "D624I"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "D627I"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "D631I"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "D632I"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "D654I"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "D662I"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "D664I"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "D703I"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "D712I"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "D723I"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "D731I"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "D732I"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "D734I"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "D743I"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "D754I"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    return-void
.end method
