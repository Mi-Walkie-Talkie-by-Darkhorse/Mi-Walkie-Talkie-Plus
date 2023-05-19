.class public Lcom/ifengyu/intercom/i/u0;
.super Lcom/ifengyu/intercom/i/z0/d;
.source "DolphinBleManager.java"


# static fields
.field public static final A:Ljava/util/UUID;

.field public static final B:Ljava/util/UUID;

.field public static final C:Ljava/util/UUID;

.field public static final D:Ljava/util/UUID;

.field private static E:I


# instance fields
.field private final r:Landroid/os/Handler;

.field private s:Landroid/content/SharedPreferences$Editor;

.field private t:Z

.field private u:Lcom/ifengyu/intercom/event/StateUpdateEvent;

.field private v:Z

.field private w:Z

.field private final x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/b;->a:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/u0;->A:Ljava/util/UUID;

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/j/b;->c:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/u0;->B:Ljava/util/UUID;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/j/b;->d:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/u0;->C:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/i/u0;->D:Ljava/util/UUID;

    const/4 v0, 0x1

    .line 5
    sput v0, Lcom/ifengyu/intercom/i/u0;->E:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/u0;->r:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/u0;->t:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/u0;->v:Z

    .line 5
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/u0;->w:Z

    .line 6
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/u0;->x:Ljava/util/HashMap;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/u0;->y:Ljava/util/HashMap;

    .line 8
    new-instance p1, Lcom/ifengyu/intercom/i/e;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/i/e;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/u0;->z:Ljava/lang/Runnable;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->i()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private A0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasParamResp:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->b1(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->a0()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private B0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasParamUpdate:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->b1(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->a0()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/service/ShareLocationService;->e()Lcom/ifengyu/intercom/service/ShareLocationService;

    move-result-object p1

    if-nez p1, :cond_2

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method

.method private B1([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 1
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    .line 2
    aput-byte v0, p1, v0

    int-to-long v0, p2

    const/4 p2, 0x2

    .line 3
    invoke-static {p1, v0, v1, p2, p2}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->g([BJII)V

    return-void
.end method

.method private C0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v1, v2, :cond_1

    .line 3
    sget v1, Lcom/ifengyu/intercom/p/d0;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/u0;->Z0(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/u0;->a1(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ifengyu/library/utils/k;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasStateResp:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/k;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    new-instance v1, Lcom/ifengyu/intercom/event/StateUpdateEvent;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/i/u0;->u:Lcom/ifengyu/intercom/event/StateUpdateEvent;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/i/u0;->u:Lcom/ifengyu/intercom/event/StateUpdateEvent;

    invoke-virtual {p1, v1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v1, :cond_7

    .line 11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq p1, v1, :cond_4

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v1, :cond_5

    .line 13
    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->a0()Z

    move-result p1

    if-nez p1, :cond_6

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->a0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Z()Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    .line 17
    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/u0;->c1(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    :cond_7
    return-void
.end method

.method private C1(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->r:Landroid/os/Handler;

    new-instance v1, Lcom/ifengyu/intercom/i/u0$j;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/i/u0$j;-><init>(Lcom/ifengyu/intercom/i/u0;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private D1(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/i/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/c;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/i/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/g;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    new-instance v1, Lcom/ifengyu/intercom/i/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/d;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic G0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic H0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic I0()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/u0;->X0(I)V

    .line 2
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/q2;->f()V

    return-void
.end method

.method private synthetic K0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data success, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic M0(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data failed, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", status: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "send data failed, invalid request"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic Q0(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->b()Lcom/ifengyu/intercom/device/oldDevice/v/b;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/v/a;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0, p1, v3}, Lcom/ifengyu/intercom/device/oldDevice/v/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    :cond_0
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->g(Z)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->c(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    return-object v2

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "device is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic S0(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    sget v1, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->STATE_CONNECTED:I

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/u0;->v:Z

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/u0;->w:Z

    .line 4
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/z0/d;->q:Z

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/i/u0;->x:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/i/u0;->y:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private synthetic U0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "update device param failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private W0([B)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->f([B)I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->c([B)I

    .line 3
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->a([B)I

    move-result v1

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->e([B)I

    move-result v2

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->b([B)[B

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse received pack-->cmdId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", seq: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v2, "parse protobuf error!!!"

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incoming DolphinCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/i/u0;->x0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ifengyu/library/utils/k;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    return-object p1
.end method

.method private X0(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private Z0(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/u0$a;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/a/d/a;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a1(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/u0$a;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b1(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceId"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasSosText()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "GB2312"

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    const-string v2, "sosText"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getSosText()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameGBK()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->j0(Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionBLE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionBLE"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionBLE()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionHW"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionHW()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionMCU"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionMCU()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    const-string v3, "is_public_loc_info"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 15
    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "is_double_frequency_model"

    if-ne v0, v3, :cond_8

    .line 17
    :try_start_2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 18
    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v3, :cond_9

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    const-string v3, "stateMode"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getNumber()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    :cond_a
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasLowPower()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    const-string v3, "lowPower"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getLowPower()Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->PROHIBITEUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasActivateChannel()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 24
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getActivateChannel()I

    move-result v0

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/i/u0;->x1(Z)V

    .line 25
    :cond_e
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasLanguage()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "mcu_language_type_chinese"

    if-eqz v0, :cond_10

    .line 26
    :try_start_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getLanguage()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    const-string v1, "mcu_language_type_english"

    :goto_3
    invoke-static {v1}, Lcom/ifengyu/intercom/p/d0;->u0(Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :cond_10
    invoke-static {v1}, Lcom/ifengyu/intercom/p/d0;->u0(Ljava/lang/String;)V

    .line 28
    :goto_4
    iget-object p1, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private c1(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    const-string v1, "is_sos_model"

    const-string v2, "is_double_frequency_model"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v5

    sget-object v6, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v5

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v2, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getNumber()I

    move-result p1

    const-string v1, "stateMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/i/u0;->s:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private j1(Lcom/google/protobuf/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->u0(Lcom/google/protobuf/Message;)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/u0;->d1([B)V

    return-void
.end method

.method static synthetic l0(Lcom/ifengyu/intercom/i/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m0(Lcom/ifengyu/intercom/i/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n0(Lcom/ifengyu/intercom/i/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o0(Lcom/ifengyu/intercom/i/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p0(Lcom/ifengyu/intercom/i/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q0(Lcom/ifengyu/intercom/i/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r0(Lcom/ifengyu/intercom/i/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s0(Lcom/ifengyu/intercom/i/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method private u0(Lcom/google/protobuf/Message;)[B
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p1

    .line 2
    array-length v0, p1

    add-int/lit8 v1, v0, 0x8

    .line 3
    new-array v2, v1, [B

    .line 4
    sget v3, Lcom/ifengyu/intercom/i/u0;->E:I

    const/16 v4, 0x2719

    invoke-direct {p0, v2, v1, v4, v3}, Lcom/ifengyu/intercom/i/u0;->y1([BIII)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 5
    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    sget p1, Lcom/ifengyu/intercom/i/u0;->E:I

    add-int/lit8 p1, p1, 0x1

    const v0, 0xffff

    rem-int/2addr p1, v0

    sput p1, Lcom/ifengyu/intercom/i/u0;->E:I

    return-object v2
.end method

.method public static x0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ConnectQuery"

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectResp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ConnectResp"

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasHeartbeat()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Heartbeat"

    return-object p0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasControl()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Control"

    return-object p0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "ParamQuery"

    return-object p0

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamResp()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "ParamResp"

    return-object p0

    .line 7
    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamUpdate()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "ParamUpdate"

    return-object p0

    .line 8
    :cond_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateQuery()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "StateQuery"

    return-object p0

    .line 9
    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateResp()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "StateResp"

    return-object p0

    .line 10
    :cond_8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationSync()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "LocationSync"

    return-object p0

    .line 11
    :cond_9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationCtl()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "LocationCtl"

    return-object p0

    .line 12
    :cond_a
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileReq()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "FileReq"

    return-object p0

    .line 13
    :cond_b
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFilePack()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "FilePack"

    return-object p0

    .line 14
    :cond_c
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileResp()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "FileResponse"

    return-object p0

    .line 15
    :cond_d
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasUpdateResponse()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "UpdateResponse"

    return-object p0

    :cond_e
    const-string p0, "UnknownType"

    return-object p0
.end method

.method private y1([BIII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 1
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    .line 2
    aput-byte v0, p1, v0

    int-to-long v0, p2

    const/4 p2, 0x2

    .line 3
    invoke-static {p1, v0, v1, p2, p2}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->g([BJII)V

    int-to-long v0, p3

    const/4 p3, 0x4

    .line 4
    invoke-static {p1, v0, v1, p3, p2}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->g([BJII)V

    int-to-long p3, p4

    const/4 v0, 0x6

    .line 5
    invoke-static {p1, p3, p4, v0, p2}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->g([BJII)V

    return-void
.end method

.method private z0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/u0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getConnCode()Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->ALLOW:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "Allow to connect"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->a()V

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->A0(I)V

    .line 8
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/d0;->i0(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/u0;->X0(I)V

    .line 10
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/b;->a(I)V

    .line 11
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v0

    iget v0, v0, Lcom/ifengyu/library/account/UserInfo;->userId:I

    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/i/u0;->r1(ILjava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->D1(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->WAIT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v0, p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "waiting confirm connection"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 15
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->X0(I)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/i/u0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->z:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 17
    :cond_1
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE_LOWPOWER:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v0, p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, device low power"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 19
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->X0(I)V

    .line 20
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_0

    .line 21
    :cond_2
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v0, p1, :cond_3

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, device refused"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 23
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->X0(I)V

    .line 24
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, other reason"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 26
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->X0(I)V

    .line 27
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    :goto_0
    return-void
.end method


# virtual methods
.method public A1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/u0;->w:Z

    return-void
.end method

.method public D0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/i/u0;->t:Z

    return v0
.end method

.method public E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/i/u0;->v:Z

    return v0
.end method

.method public F0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/i/u0;->w:Z

    return v0
.end method

.method public synthetic J0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/i/u0;->I0()V

    return-void
.end method

.method public synthetic L0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->K0(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic N0(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/u0;->M0(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method protected P(Lno/nordicsemi/android/ble/l2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    if-lez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lcom/ifengyu/intercom/i/u0;->D:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->L(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/i/u0$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/u0$c;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 3
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v2, Lcom/ifengyu/intercom/i/u0$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/u0$b;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 4
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 5
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/w1;->o(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/i/u0$e;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/u0$e;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v2, Lcom/ifengyu/intercom/i/u0$d;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/u0$d;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 7
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 8
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    :cond_0
    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/ifengyu/intercom/i/u0;->D:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->L(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/u0$g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/u0$g;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 10
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/i/u0$f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/u0$f;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 11
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 12
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/ble/w1;->n(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/u0$i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/u0$i;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/i/u0$h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/u0$h;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 14
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 15
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    :cond_1
    return-void
.end method

.method public synthetic P0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/i/u0;->O0()V

    return-void
.end method

.method public synthetic R0(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->Q0(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object p1

    return-object p1
.end method

.method protected S()Lno/nordicsemi/android/ble/data/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/d/a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/d/a;-><init>()V

    return-object v0
.end method

.method public synthetic T0(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->S0(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    return-void
.end method

.method protected U()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/u0;->C:Ljava/util/UUID;

    return-object v0
.end method

.method protected V()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/u0;->A:Ljava/util/UUID;

    return-object v0
.end method

.method public synthetic V0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->U0(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected W()I
    .locals 1

    const/16 v0, 0xa3

    return v0
.end method

.method public Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->x:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->y:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->C1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->C1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected b0()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/u0;->B:Ljava/util/UUID;

    return-object v0
.end method

.method protected c0(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/u0;->W0([B)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectResp()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    sput p2, Lcom/ifengyu/intercom/p/d0;->a:I

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->z0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationSync()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamUpdate()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->B0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamResp()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->A0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateResp()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->C0(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileResp()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasUpdateResponse()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 14
    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    :cond_6
    return-void
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/i/z0/d;->d(Landroid/bluetooth/BluetoothDevice;I)V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/i/u0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->z:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;->k0(Landroid/bluetooth/BluetoothDevice;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method protected d1([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "send data failed, device may be disconnected"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p1}, Lno/nordicsemi/android/ble/w1;->J(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/u2;->V()Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/i/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/f;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 5
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/i/h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/h;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 6
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/i/j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/j;-><init>(Lcom/ifengyu/intercom/i/u0;)V

    .line 7
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->O(Lno/nordicsemi/android/ble/v2/f;)Lno/nordicsemi/android/ble/u2;

    .line 8
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/i/z0/d;->e(Landroid/bluetooth/BluetoothDevice;I)V

    const/4 p1, 0x7

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->X0(I)V

    return-void
.end method

.method public e1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p0, p2, p1, v0}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p0, p2, v0, p1}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :goto_0
    return-void
.end method

.method public f1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/ifengyu/intercom/p/d0;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v10, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;IIII)V

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;IIII)V

    .line 5
    invoke-virtual {v0, v1, v10, v2}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :goto_0
    return-void
.end method

.method public g1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/ifengyu/intercom/p/d0;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v10, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;IIII)V

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;IIII)V

    .line 5
    invoke-virtual {v0, v1, v10, v2}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :goto_0
    return-void
.end method

.method public h1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method public i1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p0, v0, p1, p2}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method public k1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startConnectRequest deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public l1()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->a()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public m1(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->h(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public n1(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->i(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public o1(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->d(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public p1()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public q1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public r1(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->g(ILjava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    invoke-static {p2, p3, p1}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->j(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public t0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->x:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->y:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public t1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method public u1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p0, p2, p1, v0}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p0, p2, v0, p1}, Lcom/ifengyu/intercom/i/u0;->s1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :goto_0
    return-void
.end method

.method public v0()Lcom/ifengyu/intercom/event/StateUpdateEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/u0;->u:Lcom/ifengyu/intercom/event/StateUpdateEvent;

    return-object v0
.end method

.method public v1(Lcom/google/protobuf/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/u0;->j1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public w0()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/u0;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/i/k;->a:Lcom/ifengyu/intercom/i/k;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public w1([B)V
    .locals 4

    .line 1
    array-length v0, p1

    add-int/lit8 v1, v0, 0x4

    .line 2
    new-array v1, v1, [B

    const/16 v2, 0x2718

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/i/u0;->B1([BI)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 4
    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/i/u0;->d1([B)V

    return-void
.end method

.method public x1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/u0;->t:Z

    return-void
.end method

.method public y0()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/u0;->y:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/i/i;->a:Lcom/ifengyu/intercom/i/i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public z1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/u0;->v:Z

    return-void
.end method
