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

.field public static final enum D:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum E:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum F:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum G:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum H:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum I:Lno/nordicsemi/android/ble/Request$Type;

.field public static final enum J:Lno/nordicsemi/android/ble/Request$Type;

.field private static final synthetic K:[Lno/nordicsemi/android/ble/Request$Type;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/4 v1, 0x0

    const-string v2, "SET"

    invoke-direct {v0, v2, v1}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->a:Lno/nordicsemi/android/ble/Request$Type;

    .line 2
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/4 v2, 0x1

    const-string v3, "CONNECT"

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    .line 3
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/4 v3, 0x2

    const-string v4, "DISCONNECT"

    invoke-direct {v0, v4, v3}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    .line 4
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/4 v4, 0x3

    const-string v5, "CREATE_BOND"

    invoke-direct {v0, v5, v4}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->d:Lno/nordicsemi/android/ble/Request$Type;

    .line 5
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/4 v5, 0x4

    const-string v6, "REMOVE_BOND"

    invoke-direct {v0, v6, v5}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->e:Lno/nordicsemi/android/ble/Request$Type;

    .line 6
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/4 v6, 0x5

    const-string v7, "WRITE"

    invoke-direct {v0, v7, v6}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->f:Lno/nordicsemi/android/ble/Request$Type;

    .line 7
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/4 v7, 0x6

    const-string v8, "NOTIFY"

    invoke-direct {v0, v8, v7}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->g:Lno/nordicsemi/android/ble/Request$Type;

    .line 8
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/4 v8, 0x7

    const-string v9, "INDICATE"

    invoke-direct {v0, v9, v8}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->h:Lno/nordicsemi/android/ble/Request$Type;

    .line 9
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v9, 0x8

    const-string v10, "READ"

    invoke-direct {v0, v10, v9}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->i:Lno/nordicsemi/android/ble/Request$Type;

    .line 10
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v10, 0x9

    const-string v11, "WRITE_DESCRIPTOR"

    invoke-direct {v0, v11, v10}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->j:Lno/nordicsemi/android/ble/Request$Type;

    .line 11
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v11, 0xa

    const-string v12, "READ_DESCRIPTOR"

    invoke-direct {v0, v12, v11}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->k:Lno/nordicsemi/android/ble/Request$Type;

    .line 12
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v12, 0xb

    const-string v13, "BEGIN_RELIABLE_WRITE"

    invoke-direct {v0, v13, v12}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->l:Lno/nordicsemi/android/ble/Request$Type;

    .line 13
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v13, 0xc

    const-string v14, "EXECUTE_RELIABLE_WRITE"

    invoke-direct {v0, v14, v13}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->m:Lno/nordicsemi/android/ble/Request$Type;

    .line 14
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v14, 0xd

    const-string v15, "ABORT_RELIABLE_WRITE"

    invoke-direct {v0, v15, v14}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->n:Lno/nordicsemi/android/ble/Request$Type;

    .line 15
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v15, 0xe

    const-string v14, "ENABLE_NOTIFICATIONS"

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->o:Lno/nordicsemi/android/ble/Request$Type;

    .line 16
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v14, 0xf

    const-string v15, "ENABLE_INDICATIONS"

    invoke-direct {v0, v15, v14}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->p:Lno/nordicsemi/android/ble/Request$Type;

    .line 17
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v15, 0x10

    const-string v14, "DISABLE_NOTIFICATIONS"

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->q:Lno/nordicsemi/android/ble/Request$Type;

    .line 18
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v14, 0x11

    const-string v15, "DISABLE_INDICATIONS"

    invoke-direct {v0, v15, v14}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->r:Lno/nordicsemi/android/ble/Request$Type;

    .line 19
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v15, 0x12

    const-string v14, "WAIT_FOR_NOTIFICATION"

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->s:Lno/nordicsemi/android/ble/Request$Type;

    .line 20
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v14, 0x13

    const-string v15, "WAIT_FOR_INDICATION"

    invoke-direct {v0, v15, v14}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->t:Lno/nordicsemi/android/ble/Request$Type;

    .line 21
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v15, 0x14

    const-string v14, "WAIT_FOR_READ"

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->u:Lno/nordicsemi/android/ble/Request$Type;

    .line 22
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const/16 v14, 0x15

    const-string v15, "WAIT_FOR_WRITE"

    invoke-direct {v0, v15, v14}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->v:Lno/nordicsemi/android/ble/Request$Type;

    .line 23
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v15, "WAIT_FOR_CONDITION"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->w:Lno/nordicsemi/android/ble/Request$Type;

    .line 24
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "SET_VALUE"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->x:Lno/nordicsemi/android/ble/Request$Type;

    .line 25
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "SET_DESCRIPTOR_VALUE"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->y:Lno/nordicsemi/android/ble/Request$Type;

    .line 26
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "READ_BATTERY_LEVEL"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->z:Lno/nordicsemi/android/ble/Request$Type;

    .line 27
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "ENABLE_BATTERY_LEVEL_NOTIFICATIONS"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->A:Lno/nordicsemi/android/ble/Request$Type;

    .line 28
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "DISABLE_BATTERY_LEVEL_NOTIFICATIONS"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->B:Lno/nordicsemi/android/ble/Request$Type;

    .line 29
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "ENABLE_SERVICE_CHANGED_INDICATIONS"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->C:Lno/nordicsemi/android/ble/Request$Type;

    .line 30
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "REQUEST_MTU"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->D:Lno/nordicsemi/android/ble/Request$Type;

    .line 31
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "REQUEST_CONNECTION_PRIORITY"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->E:Lno/nordicsemi/android/ble/Request$Type;

    .line 32
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "SET_PREFERRED_PHY"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->F:Lno/nordicsemi/android/ble/Request$Type;

    .line 33
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "READ_PHY"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->G:Lno/nordicsemi/android/ble/Request$Type;

    .line 34
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "READ_RSSI"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->H:Lno/nordicsemi/android/ble/Request$Type;

    .line 35
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "REFRESH_CACHE"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->I:Lno/nordicsemi/android/ble/Request$Type;

    .line 36
    new-instance v0, Lno/nordicsemi/android/ble/Request$Type;

    const-string v14, "SLEEP"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/ble/Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lno/nordicsemi/android/ble/Request$Type;->J:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v14, 0x24

    new-array v14, v14, [Lno/nordicsemi/android/ble/Request$Type;

    .line 37
    sget-object v15, Lno/nordicsemi/android/ble/Request$Type;->a:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v15, v14, v1

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v3

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->d:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v4

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->e:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v5

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->f:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v6

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->g:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v7

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->h:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v8

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->i:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v9

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->j:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v10

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->k:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v11

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->l:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v12

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->m:Lno/nordicsemi/android/ble/Request$Type;

    aput-object v1, v14, v13

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->n:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->o:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->p:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->q:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->r:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->s:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->t:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->u:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->v:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->w:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->x:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->y:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->z:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->A:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->B:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->C:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->D:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->E:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->F:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->G:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->H:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->I:Lno/nordicsemi/android/ble/Request$Type;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    const/16 v1, 0x23

    aput-object v0, v14, v1

    sput-object v14, Lno/nordicsemi/android/ble/Request$Type;->K:[Lno/nordicsemi/android/ble/Request$Type;

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
    sget-object v0, Lno/nordicsemi/android/ble/Request$Type;->K:[Lno/nordicsemi/android/ble/Request$Type;

    invoke-virtual {v0}, [Lno/nordicsemi/android/ble/Request$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lno/nordicsemi/android/ble/Request$Type;

    return-object v0
.end method
