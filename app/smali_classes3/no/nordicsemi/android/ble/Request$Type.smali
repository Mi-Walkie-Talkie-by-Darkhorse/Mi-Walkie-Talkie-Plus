.class final enum Lno/nordicsemi/android/ble/Request$Type;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/ble/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lno/nordicsemi/android/ble/Request$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lno/nordicsemi/android/ble/Request$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum B:Lno/nordicsemi/android/ble/Request$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum C:Lno/nordicsemi/android/ble/Request$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum D:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum E:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum F:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum G:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum H:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum I:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum J:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum K:Lno/nordicsemi/android/ble/Request$Type;

.field private static final synthetic L:[Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum a:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum b:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum c:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum d:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum e:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum f:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum g:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum h:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum i:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum j:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum k:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum l:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum m:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum n:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum o:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum p:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum q:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum r:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum s:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum t:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum u:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum v:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum w:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum x:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum y:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum z:Lno/nordicsemi/android/ble/Request$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v1, "SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->a:Lno/nordicsemi/android/ble/Request$Type;

    .line 2
    new-instance v1, Lno/nordicsemi/android/ble/Request$Type;

    const-string v3, "CONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    .line 3
    new-instance v3, Lno/nordicsemi/android/ble/Request$Type;

    const-string v5, "DISCONNECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    .line 4
    new-instance v5, Lno/nordicsemi/android/ble/Request$Type;

    const-string v7, "CREATE_BOND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lno/nordicsemi/android/ble/Request$Type;->d:Lno/nordicsemi/android/ble/Request$Type;

    .line 5
    new-instance v7, Lno/nordicsemi/android/ble/Request$Type;

    const-string v9, "ENSURE_BOND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lno/nordicsemi/android/ble/Request$Type;->e:Lno/nordicsemi/android/ble/Request$Type;

    .line 6
    new-instance v9, Lno/nordicsemi/android/ble/Request$Type;

    const-string v11, "REMOVE_BOND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lno/nordicsemi/android/ble/Request$Type;->f:Lno/nordicsemi/android/ble/Request$Type;

    .line 7
    new-instance v11, Lno/nordicsemi/android/ble/Request$Type;

    const-string v13, "WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lno/nordicsemi/android/ble/Request$Type;->g:Lno/nordicsemi/android/ble/Request$Type;

    .line 8
    new-instance v13, Lno/nordicsemi/android/ble/Request$Type;

    const-string v15, "NOTIFY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lno/nordicsemi/android/ble/Request$Type;->h:Lno/nordicsemi/android/ble/Request$Type;

    .line 9
    new-instance v15, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "INDICATE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lno/nordicsemi/android/ble/Request$Type;->i:Lno/nordicsemi/android/ble/Request$Type;

    .line 10
    new-instance v14, Lno/nordicsemi/android/ble/Request$Type;

    const-string v12, "READ"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lno/nordicsemi/android/ble/Request$Type;->j:Lno/nordicsemi/android/ble/Request$Type;

    .line 11
    new-instance v12, Lno/nordicsemi/android/ble/Request$Type;

    const-string v10, "WRITE_DESCRIPTOR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lno/nordicsemi/android/ble/Request$Type;->k:Lno/nordicsemi/android/ble/Request$Type;

    .line 12
    new-instance v10, Lno/nordicsemi/android/ble/Request$Type;

    const-string v8, "READ_DESCRIPTOR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lno/nordicsemi/android/ble/Request$Type;->l:Lno/nordicsemi/android/ble/Request$Type;

    .line 13
    new-instance v8, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "BEGIN_RELIABLE_WRITE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lno/nordicsemi/android/ble/Request$Type;->m:Lno/nordicsemi/android/ble/Request$Type;

    .line 14
    new-instance v6, Lno/nordicsemi/android/ble/Request$Type;

    const-string v4, "EXECUTE_RELIABLE_WRITE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lno/nordicsemi/android/ble/Request$Type;->n:Lno/nordicsemi/android/ble/Request$Type;

    .line 15
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v2, "ABORT_RELIABLE_WRITE"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->o:Lno/nordicsemi/android/ble/Request$Type;

    .line 16
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "ENABLE_NOTIFICATIONS"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->p:Lno/nordicsemi/android/ble/Request$Type;

    .line 17
    new-instance v6, Lno/nordicsemi/android/ble/Request$Type;

    const-string v4, "ENABLE_INDICATIONS"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lno/nordicsemi/android/ble/Request$Type;->q:Lno/nordicsemi/android/ble/Request$Type;

    .line 18
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v2, "DISABLE_NOTIFICATIONS"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->r:Lno/nordicsemi/android/ble/Request$Type;

    .line 19
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "DISABLE_INDICATIONS"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->s:Lno/nordicsemi/android/ble/Request$Type;

    .line 20
    new-instance v6, Lno/nordicsemi/android/ble/Request$Type;

    const-string v4, "WAIT_FOR_NOTIFICATION"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lno/nordicsemi/android/ble/Request$Type;->t:Lno/nordicsemi/android/ble/Request$Type;

    .line 21
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v2, "WAIT_FOR_INDICATION"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->u:Lno/nordicsemi/android/ble/Request$Type;

    .line 22
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "WAIT_FOR_READ"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->v:Lno/nordicsemi/android/ble/Request$Type;

    .line 23
    new-instance v6, Lno/nordicsemi/android/ble/Request$Type;

    const-string v4, "WAIT_FOR_WRITE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lno/nordicsemi/android/ble/Request$Type;->w:Lno/nordicsemi/android/ble/Request$Type;

    .line 24
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v4, "WAIT_FOR_CONDITION"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->x:Lno/nordicsemi/android/ble/Request$Type;

    .line 25
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "SET_VALUE"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->y:Lno/nordicsemi/android/ble/Request$Type;

    .line 26
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "SET_DESCRIPTOR_VALUE"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->z:Lno/nordicsemi/android/ble/Request$Type;

    .line 27
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "READ_BATTERY_LEVEL"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->A:Lno/nordicsemi/android/ble/Request$Type;

    .line 28
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "ENABLE_BATTERY_LEVEL_NOTIFICATIONS"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->B:Lno/nordicsemi/android/ble/Request$Type;

    .line 29
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "DISABLE_BATTERY_LEVEL_NOTIFICATIONS"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->C:Lno/nordicsemi/android/ble/Request$Type;

    .line 30
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "ENABLE_SERVICE_CHANGED_INDICATIONS"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->D:Lno/nordicsemi/android/ble/Request$Type;

    .line 31
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "REQUEST_MTU"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->E:Lno/nordicsemi/android/ble/Request$Type;

    .line 32
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "REQUEST_CONNECTION_PRIORITY"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->F:Lno/nordicsemi/android/ble/Request$Type;

    .line 33
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "SET_PREFERRED_PHY"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->G:Lno/nordicsemi/android/ble/Request$Type;

    .line 34
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "READ_PHY"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->H:Lno/nordicsemi/android/ble/Request$Type;

    .line 35
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "READ_RSSI"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->I:Lno/nordicsemi/android/ble/Request$Type;

    .line 36
    new-instance v2, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "REFRESH_CACHE"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->J:Lno/nordicsemi/android/ble/Request$Type;

    .line 37
    new-instance v4, Lno/nordicsemi/android/ble/Request$Type;

    const-string v6, "SLEEP"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lno/nordicsemi/android/ble/Request$Type;->K:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x25

    new-array v2, v2, [Lno/nordicsemi/android/ble/Request$Type;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v4, v2, v0

    .line 38
    sput-object v2, Lno/nordicsemi/android/ble/Request$Type;->L:[Lno/nordicsemi/android/ble/Request$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lno/nordicsemi/android/ble/Request$Type;
    .locals 1

    .line 1
    const-class v0, Lno/nordicsemi/android/ble/Request$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lno/nordicsemi/android/ble/Request$Type;

    return-object p0
.end method

.method public static values()[Lno/nordicsemi/android/ble/Request$Type;
    .locals 1

    .line 1
    sget-object v0, Lno/nordicsemi/android/ble/Request$Type;->L:[Lno/nordicsemi/android/ble/Request$Type;

    invoke-virtual {v0}, [Lno/nordicsemi/android/ble/Request$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lno/nordicsemi/android/ble/Request$Type;

    return-object v0
.end method
