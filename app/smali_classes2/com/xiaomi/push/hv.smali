.class public final enum Lcom/xiaomi/push/hv;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/hv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/xiaomi/push/hv;

.field public static final enum B:Lcom/xiaomi/push/hv;

.field public static final enum C:Lcom/xiaomi/push/hv;

.field public static final enum D:Lcom/xiaomi/push/hv;

.field public static final enum E:Lcom/xiaomi/push/hv;

.field public static final enum F:Lcom/xiaomi/push/hv;

.field public static final enum G:Lcom/xiaomi/push/hv;

.field public static final enum H:Lcom/xiaomi/push/hv;

.field public static final enum I:Lcom/xiaomi/push/hv;

.field public static final enum J:Lcom/xiaomi/push/hv;

.field public static final enum K:Lcom/xiaomi/push/hv;

.field public static final enum a:Lcom/xiaomi/push/hv;

.field private static final synthetic a:[Lcom/xiaomi/push/hv;

.field public static final enum b:Lcom/xiaomi/push/hv;

.field public static final enum c:Lcom/xiaomi/push/hv;

.field public static final enum d:Lcom/xiaomi/push/hv;

.field public static final enum e:Lcom/xiaomi/push/hv;

.field public static final enum f:Lcom/xiaomi/push/hv;

.field public static final enum g:Lcom/xiaomi/push/hv;

.field public static final enum h:Lcom/xiaomi/push/hv;

.field public static final enum i:Lcom/xiaomi/push/hv;

.field public static final enum j:Lcom/xiaomi/push/hv;

.field public static final enum k:Lcom/xiaomi/push/hv;

.field public static final enum l:Lcom/xiaomi/push/hv;

.field public static final enum m:Lcom/xiaomi/push/hv;

.field public static final enum n:Lcom/xiaomi/push/hv;

.field public static final enum o:Lcom/xiaomi/push/hv;

.field public static final enum p:Lcom/xiaomi/push/hv;

.field public static final enum q:Lcom/xiaomi/push/hv;

.field public static final enum r:Lcom/xiaomi/push/hv;

.field public static final enum s:Lcom/xiaomi/push/hv;

.field public static final enum t:Lcom/xiaomi/push/hv;

.field public static final enum u:Lcom/xiaomi/push/hv;

.field public static final enum v:Lcom/xiaomi/push/hv;

.field public static final enum w:Lcom/xiaomi/push/hv;

.field public static final enum x:Lcom/xiaomi/push/hv;

.field public static final enum y:Lcom/xiaomi/push/hv;

.field public static final enum z:Lcom/xiaomi/push/hv;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/push/hv;

    const/4 v1, 0x1

    const-string v2, "Registration"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->a:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/4 v2, 0x2

    const-string v3, "UnRegistration"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->b:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/4 v1, 0x3

    const-string v3, "Subscription"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->c:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/4 v2, 0x4

    const-string v3, "UnSubscription"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->d:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/4 v1, 0x5

    const-string v3, "SendMessage"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->e:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/4 v2, 0x6

    const-string v3, "AckMessage"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->f:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/4 v1, 0x7

    const-string v3, "SetConfig"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->g:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v2, 0x8

    const-string v3, "ReportFeedback"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->h:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v1, 0x9

    const-string v3, "Notification"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v2, 0xa

    const-string v3, "Command"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->j:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v1, 0xb

    const-string v3, "MultiConnectionBroadcast"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->k:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v2, 0xc

    const-string v3, "MultiConnectionResult"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->l:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v1, 0xd

    const-string v3, "ConnectionKick"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->m:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v2, 0xe

    const-string v3, "ApnsMessage"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->n:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v1, 0xf

    const-string v3, "IOSDeviceTokenWrite"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->o:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v2, 0x10

    const-string v3, "SaveInvalidRegId"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->p:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v1, 0x11

    const-string v3, "ApnsCertChanged"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->q:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v2, 0x12

    const-string v3, "RegisterDevice"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->r:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v1, 0x13

    const-string v3, "ExpandTopicInXmq"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->s:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v2, 0x16

    const-string v3, "SendMessageNew"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->t:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v1, 0x17

    const-string v3, "ExpandTopicInXmqNew"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->u:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const/16 v3, 0x18

    const-string v4, "DeleteInvalidMessage"

    const/16 v5, 0x15

    invoke-direct {v0, v4, v5, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->v:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v4, "BadAction"

    const/16 v5, 0x63

    invoke-direct {v0, v4, v2, v5}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->w:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v2, "Presence"

    const/16 v4, 0x64

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->x:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "FetchOfflineMessage"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->y:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "SaveJob"

    const/16 v2, 0x19

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->z:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "Broadcast"

    const/16 v2, 0x1a

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->A:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "BatchPresence"

    const/16 v2, 0x1b

    const/16 v3, 0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->B:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "BatchMessage"

    const/16 v2, 0x1c

    const/16 v3, 0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->C:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "StatCounter"

    const/16 v2, 0x1d

    const/16 v3, 0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->D:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "FetchTopicMessage"

    const/16 v2, 0x1e

    const/16 v3, 0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->E:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "DeleteAliasCache"

    const/16 v2, 0x1f

    const/16 v3, 0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->F:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "UpdateRegistration"

    const/16 v2, 0x20

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->G:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "BatchMessageNew"

    const/16 v2, 0x21

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->H:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "PublicWelfareMessage"

    const/16 v2, 0x22

    const/16 v3, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->I:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "RevokeMessage"

    const/16 v2, 0x23

    const/16 v3, 0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->J:Lcom/xiaomi/push/hv;

    new-instance v0, Lcom/xiaomi/push/hv;

    const-string v1, "SimulatorJob"

    const/16 v2, 0x24

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hv;->K:Lcom/xiaomi/push/hv;

    invoke-static {}, Lcom/xiaomi/push/hv;->a()[Lcom/xiaomi/push/hv;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hv;->a:[Lcom/xiaomi/push/hv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/push/hv;->a:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/push/hv;
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/push/hv;->J:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/push/hv;->I:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/push/hv;->H:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/xiaomi/push/hv;->G:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/xiaomi/push/hv;->F:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/xiaomi/push/hv;->E:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/xiaomi/push/hv;->D:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/xiaomi/push/hv;->C:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/xiaomi/push/hv;->B:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/xiaomi/push/hv;->A:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/xiaomi/push/hv;->z:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/xiaomi/push/hv;->y:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/xiaomi/push/hv;->x:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/xiaomi/push/hv;->w:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/xiaomi/push/hv;->v:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/xiaomi/push/hv;->u:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/xiaomi/push/hv;->t:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/xiaomi/push/hv;->s:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/xiaomi/push/hv;->r:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/xiaomi/push/hv;->q:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/xiaomi/push/hv;->p:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/xiaomi/push/hv;->o:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/xiaomi/push/hv;->n:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/xiaomi/push/hv;->m:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/xiaomi/push/hv;->l:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/xiaomi/push/hv;->k:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/xiaomi/push/hv;->j:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/xiaomi/push/hv;->h:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/xiaomi/push/hv;->g:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_1e
    sget-object p0, Lcom/xiaomi/push/hv;->f:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_1f
    sget-object p0, Lcom/xiaomi/push/hv;->e:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/xiaomi/push/hv;->d:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_21
    sget-object p0, Lcom/xiaomi/push/hv;->c:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_22
    sget-object p0, Lcom/xiaomi/push/hv;->b:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/xiaomi/push/hv;->a:Lcom/xiaomi/push/hv;

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/push/hv;->K:Lcom/xiaomi/push/hv;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a()[Lcom/xiaomi/push/hv;
    .locals 3

    const/16 v0, 0x25

    new-array v0, v0, [Lcom/xiaomi/push/hv;

    sget-object v1, Lcom/xiaomi/push/hv;->a:Lcom/xiaomi/push/hv;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->b:Lcom/xiaomi/push/hv;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->c:Lcom/xiaomi/push/hv;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->d:Lcom/xiaomi/push/hv;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->e:Lcom/xiaomi/push/hv;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->f:Lcom/xiaomi/push/hv;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->g:Lcom/xiaomi/push/hv;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->h:Lcom/xiaomi/push/hv;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->j:Lcom/xiaomi/push/hv;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->k:Lcom/xiaomi/push/hv;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->l:Lcom/xiaomi/push/hv;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->m:Lcom/xiaomi/push/hv;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->n:Lcom/xiaomi/push/hv;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->o:Lcom/xiaomi/push/hv;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->p:Lcom/xiaomi/push/hv;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->q:Lcom/xiaomi/push/hv;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->r:Lcom/xiaomi/push/hv;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->s:Lcom/xiaomi/push/hv;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->t:Lcom/xiaomi/push/hv;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->u:Lcom/xiaomi/push/hv;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->v:Lcom/xiaomi/push/hv;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->w:Lcom/xiaomi/push/hv;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->x:Lcom/xiaomi/push/hv;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->y:Lcom/xiaomi/push/hv;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->z:Lcom/xiaomi/push/hv;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->A:Lcom/xiaomi/push/hv;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->B:Lcom/xiaomi/push/hv;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->C:Lcom/xiaomi/push/hv;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->D:Lcom/xiaomi/push/hv;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->E:Lcom/xiaomi/push/hv;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->F:Lcom/xiaomi/push/hv;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->G:Lcom/xiaomi/push/hv;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->H:Lcom/xiaomi/push/hv;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->I:Lcom/xiaomi/push/hv;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->J:Lcom/xiaomi/push/hv;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hv;->K:Lcom/xiaomi/push/hv;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hv;
    .locals 1

    const-class v0, Lcom/xiaomi/push/hv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/hv;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/hv;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/hv;->a:[Lcom/xiaomi/push/hv;

    invoke-virtual {v0}, [Lcom/xiaomi/push/hv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/hv;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/hv;->a:I

    return v0
.end method
