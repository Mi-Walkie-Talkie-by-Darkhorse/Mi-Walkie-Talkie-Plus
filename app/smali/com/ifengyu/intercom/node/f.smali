.class public Lcom/ifengyu/intercom/node/f;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/f$a;
    }
.end annotation


# static fields
.field private static b:Lcom/ifengyu/intercom/node/f;


# instance fields
.field private a:Lcom/ifengyu/intercom/node/j;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private d:Lcom/ifengyu/intercom/node/f$a;

.field private e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

.field private f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/intercom/node/f;->b:Lcom/ifengyu/intercom/node/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;
    .locals 2
    .annotation runtime Lcom/squareup/otto/Produce;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    return-object v0
.end method

.method public static a()Lcom/ifengyu/intercom/node/f;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/f;->b:Lcom/ifengyu/intercom/node/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/f;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/f;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/node/f;->b:Lcom/ifengyu/intercom/node/f;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/f;->b:Lcom/ifengyu/intercom/node/f;

    return-object v0
.end method

.method private a(Lcom/google/protobuf/Message;)V
    .locals 4

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->d:Lcom/ifengyu/intercom/node/f$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->d:Lcom/ifengyu/intercom/node/f$a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/f$a;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDeviceId()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "deviceId"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasSosText()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "sosText"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getSosText()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    const-string v6, "GB2312"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameGBK()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    const-string v4, "GB2312"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/ifengyu/intercom/b/w;->m(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionBLE()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "versionBLE"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionBLE()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "versionHW"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionHW()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "versionMCU"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionMCU()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v4, "is_public_loc_info"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v2

    if-eqz v2, :cond_b

    move v2, v0

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasStateMode()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "is_double_frequency_model"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "stateMode"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getNumber()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasLowPower()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v4, "lowPower"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getLowPower()Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    move-result-object v2

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->PROHIBITEUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    if-ne v2, v5, :cond_d

    move v2, v0

    :goto_2
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasActivateChannel()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getActivateChannel()I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_3
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->p(Z)V

    :cond_a
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getLanguage()I

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "mcu_language_type_chinese"

    :goto_4
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->b(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_6
    return-void

    :cond_b
    move v2, v1

    goto :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "is_double_frequency_model"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    move v2, v1

    goto :goto_2

    :cond_e
    move v0, v1

    goto :goto_3

    :cond_f
    :try_start_1
    const-string v0, "mcu_language_type_english"

    goto :goto_4

    :cond_10
    const-string v0, "mcu_language_type_chinese"

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 3

    const/4 v2, -0x1

    sget-object v0, Lcom/ifengyu/intercom/node/f$1;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_USERDEF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/ifengyu/intercom/node/f$1;->c:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/node/f$1;->b:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVerHw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerHw()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->b(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVerSoft()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerSoft()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->c(I)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getDeviceName()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    const-string v4, "GB2312"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getActivate()I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->p(Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_10

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->c(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasBtAudio()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getBtAudio()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->d(I)V

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVoiceAlert()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVoiceAlert()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->d(Z)V

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasIsAllPublic()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getIsAllPublic()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_12

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->e(Z)V

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasPwsaveMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getPwsaveMode()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->e(I)V

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVoiceType()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVoiceType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->f(I)V

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChSq()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChSq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->h(I)V

    :cond_a
    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChVox()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChVox()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->g(I)V

    :cond_b
    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChElim()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChElim()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v4, :cond_13

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->f(Z)V

    :cond_c
    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChBand()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChBand()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->i(I)V

    :cond_d
    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChPolite()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChPolite()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_14

    :goto_6
    invoke-static {v1}, Lcom/ifengyu/intercom/b/w;->g(Z)V

    :cond_e
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_1

    :cond_10
    move v0, v2

    goto/16 :goto_2

    :cond_11
    move v0, v2

    goto/16 :goto_3

    :cond_12
    move v0, v2

    goto/16 :goto_4

    :cond_13
    move v0, v2

    goto :goto_5

    :cond_14
    move v1, v2

    goto :goto_6
.end method

.method private a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_USERDEF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/ifengyu/intercom/node/f$1;->e:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/node/f$1;->d:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasVerHw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getVerHw()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->j(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasVerSoft()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getVerSoft()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->k(I)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getDeviceName()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    const-string v4, "GB2312"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getActivate()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->p(Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    if-ne v0, v3, :cond_7

    :goto_2
    invoke-static {v1}, Lcom/ifengyu/intercom/b/w;->j(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChTxPower()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChTxPower()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->l(I)V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private a(ILcom/google/protobuf/Message;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->a:Lcom/ifengyu/intercom/node/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->a:Lcom/ifengyu/intercom/node/j;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v2, p2, v3}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/ifengyu/intercom/node/j;->a(ILcom/ifengyu/intercom/node/SendDataWrap;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "DataService"

    const-string v1, "Device has disconnected."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v1, "DataService"

    const-string v2, "Got exception while sending Data, "

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private b(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/node/f$1;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private c(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "is_sos_model"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v4, v5, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "is_double_frequency_model"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "stateMode"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "is_double_frequency_model"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "is_sos_model"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v4, v5, :cond_5

    :goto_1
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "is_double_frequency_model"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/f;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "is_sos_model"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v4, v5, :cond_7

    :goto_2
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_2
.end method

.method private d(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private f(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private g(Lcom/google/protobuf/Message;)V
    .locals 4

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerOn()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Device_Mi_PTT_1S"

    const-string v1, "powerOnCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerOn()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFactoryReset()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "Device_Mi_PTT_1S"

    const-string v1, "factoryResetCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFactoryReset()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDeviceIdQuery()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Device_Mi_PTT_1S"

    const-string v1, "deviceIdQueryCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDeviceIdQuery()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getKeyLock()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Device_Mi_PTT_1S"

    const-string v1, "keyLockCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getKeyLock()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerLevelQuery()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "Device_Mi_PTT_1S"

    const-string v1, "powerLevelQueryCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerLevelQuery()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFmOpen()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "Device_Mi_PTT_1S"

    const-string v1, "fmOpenCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFmOpen()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getConnBtEar()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "Device_Mi_PTT_1S"

    const-string v1, "connBtEarCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getConnBtEar()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    return-void
.end method

.method private h(Lcom/google/protobuf/Message;)V
    .locals 4

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->d:Lcom/ifengyu/intercom/node/f$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->d:Lcom/ifengyu/intercom/node/f$a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/f$a;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private i(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    :cond_0
    return-void
.end method

.method private j(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    :cond_0
    return-void
.end method

.method private k(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private l(Lcom/google/protobuf/Message;)V
    .locals 4

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getPowerOn()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "powerOnCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getPowerOn()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getAzimuthMap()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "azimuthMapCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getAzimuthMap()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getFmRadio()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "fmRadioCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getFmRadio()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getQuickTeam()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "quickTeamCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getQuickTeam()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getBluetoothDevice()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "bluetoothDeviceCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getBluetoothDevice()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getHandsFree()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "handsFreeCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getHandsFree()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getChannelScan()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "channelScanCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getChannelScan()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getDoubleFreq()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "doubleFreqCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getDoubleFreq()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getSosMode()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "sosModeCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getSosMode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getPowerLevel()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "powerLevelCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getPowerLevel()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getBusyLock()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "busyLockCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getBusyLock()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_a
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getSquelchTail()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "squelchTailCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getSquelchTail()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_b
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getWideNarrow()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "wideNarrowCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getWideNarrow()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getRestoreFactory()I

    move-result v0

    if-lez v0, :cond_d

    const-string v0, "Device_Mi_PTT_2"

    const-string v1, "restoreFactoryCount"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getRestoreFactory()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_d
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;I)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/f;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;ILjava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/f;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/f;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/f;->d:Lcom/ifengyu/intercom/node/f$a;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/j;)V
    .locals 2

    const-string v0, "DataService"

    const-string v1, "onDeviceConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/f;->a:Lcom/ifengyu/intercom/node/j;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->d(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->g()Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/f;->e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->e:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->deleteAll()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->f()Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/f;->f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/f;->f:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->deleteAll()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/f;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/f;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DataService"

    const-string v1, "onDeviceDisConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/f;->a:Lcom/ifengyu/intercom/node/j;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/c;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/m;)V
    .locals 2

    const-string v0, "DataService"

    const-string v1, "onSealCmdReceived"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/m;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/m;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->b(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->c(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->d(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->e(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->f(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->g(Lcom/google/protobuf/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e25 -> :sswitch_0
        0x4e28 -> :sswitch_1
        0x4e2b -> :sswitch_2
        0x4e30 -> :sswitch_3
        0x4e33 -> :sswitch_4
        0x4e35 -> :sswitch_5
        0x4e39 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/n;)V
    .locals 2

    const-string v0, "DataService"

    const-string v1, "onSharkCmdReceived"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/n;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/n;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->h(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->i(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->j(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->k(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->l(Lcom/google/protobuf/Message;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->c()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4e25 -> :sswitch_0
        0x4e28 -> :sswitch_1
        0x4e2b -> :sswitch_2
        0x4e30 -> :sswitch_3
        0x4e39 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "DataService"

    const-string v1, "onDolphinCmdReceived"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    const-string v1, "DataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasParamUpdate:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->d:Lcom/ifengyu/intercom/node/f$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->d:Lcom/ifengyu/intercom/node/f$a;

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/node/f$a;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamResp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    const-string v1, "DataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasParamResp:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateResp()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v1, v2, :cond_4

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    if-ne v1, v4, :cond_d

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    :cond_4
    :goto_2
    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "DataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasStateResp:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v1, v2, :cond_e

    :cond_7
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->n()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_8
    :goto_3
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    :cond_9
    return-void

    :cond_a
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->n()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    :cond_d
    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->j()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_3
.end method

.method public a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->a:Lcom/ifengyu/intercom/node/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/f;->a:Lcom/ifengyu/intercom/node/j;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/ifengyu/intercom/node/j;->a(ILcom/ifengyu/intercom/node/SendDataWrap;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "DataService"

    const-string v1, "Device has disconnected."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v1, "DataService"

    const-string v2, "Got exception while sending Data, "

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/f;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, "DataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPttKeyEvent valueInt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_CONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value()I

    move-result v0

    if-ne v0, p1, :cond_1

    const-string v0, "DataService"

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_CONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_CONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_DISCONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value()I

    move-result v0

    if-ne v0, p1, :cond_2

    const-string v0, "DataService"

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_DISCONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_DISCONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value()I

    move-result v0

    if-ne v0, p1, :cond_3

    const-string v0, "DataService"

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value()I

    move-result v0

    if-ne v0, p1, :cond_4

    const-string v0, "DataService"

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_ACK:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value()I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string v0, "DataService"

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_ACK:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_ACK:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/d;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/f;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/f;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/f;->d:Lcom/ifengyu/intercom/node/f$a;

    return-void
.end method
