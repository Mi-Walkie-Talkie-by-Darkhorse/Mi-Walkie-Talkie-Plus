.class public Lcom/ifengyu/intercom/node/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/node/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/e$b;
    }
.end annotation


# static fields
.field private static f:Lcom/ifengyu/intercom/node/e;


# instance fields
.field private a:Lcom/ifengyu/intercom/node/i;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Lcom/ifengyu/intercom/node/e$b;

.field private d:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

.field private e:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;
    .locals 1
    .annotation runtime Lcom/squareup/otto/Produce;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    return-object v0
.end method

.method private a(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 6

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceId"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasSosText()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "GB2312"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "sosText"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getSosText()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameGBK()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->f(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionBLE()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionBLE"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionBLE()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionHW"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionHW()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionMCU"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionMCU()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

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

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "is_double_frequency_model"

    if-ne v0, v3, :cond_8

    :try_start_2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "stateMode"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getNumber()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_a
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasLowPower()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

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

    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasActivateChannel()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getActivateChannel()I

    move-result v0

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->a(Z)V

    :cond_e
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasLanguage()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "mcu_language_type_chinese"

    if-eqz v0, :cond_10

    :try_start_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getLanguage()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    const-string v1, "mcu_language_type_english"

    :goto_3
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->k(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->k(Ljava/lang/String;)V

    :goto_4
    iget-object p1, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/node/e$a;->a:[I

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

    :cond_0
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

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->d:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->d:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

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

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->d:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->d:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_USERDEF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/node/e$a;->c:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/node/e;->e:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/node/e;->e:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/node/e;->e:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/e$a;->b:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVerHw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerHw()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->i(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVerSoft()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerSoft()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->j(I)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getDeviceName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getActivate()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->a(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->m(Z)V

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasBtAudio()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getBtAudio()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->d(I)V

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVoiceAlert()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVoiceAlert()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->l(Z)V

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasIsAllPublic()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getIsAllPublic()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->k(Z)V

    :cond_b
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasPwsaveMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getPwsaveMode()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->g(I)V

    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVoiceType()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVoiceType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->o(I)V

    :cond_d
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChSq()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChSq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->h(I)V

    :cond_e
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChVox()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChVox()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->k(I)V

    :cond_f
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChElim()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChElim()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->j(Z)V

    :cond_11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChBand()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChBand()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->f(I)V

    :cond_12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChPolite()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChPolite()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne p1, v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->o(Z)V

    :cond_14
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_USERDEF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/node/e$a;->e:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/node/e;->e:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/node/e;->e:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/node/e;->e:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/e$a;->d:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasVerHw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getVerHw()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->m(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasVerSoft()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getVerSoft()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->n(I)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getDeviceName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getActivate()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->a(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    if-ne v0, v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->p(Z)V

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChTxPower()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChTxPower()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->l(I)V

    :cond_7
    return-void
.end method

.method private a(ILcom/google/protobuf/Message;)Z
    .locals 4

    const-string v0, "DataService"

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/e;->a:Lcom/ifengyu/intercom/node/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/e;->a:Lcom/ifengyu/intercom/node/i;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v3, p2, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/ifengyu/intercom/node/i;->a(ILcom/ifengyu/intercom/node/SendDataWrap;)V

    return v3

    :cond_0
    const-string p1, "Device has disconnected."

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "Got exception while sending Data, "

    invoke-static {v0, p2, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/node/e$a;->a:[I

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

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/e;->d:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->d:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

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

    sget-object v6, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

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

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

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

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getNumber()I

    move-result p1

    const-string v1, "stateMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/node/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static d()Lcom/ifengyu/intercom/node/e;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/e;->f:Lcom/ifengyu/intercom/node/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/e;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/e;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/node/e;->f:Lcom/ifengyu/intercom/node/e;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/e;->f:Lcom/ifengyu/intercom/node/e;

    return-object v0
.end method

.method private d(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/google/protobuf/Message;)V
    .locals 4

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_2
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->c:Lcom/ifengyu/intercom/node/e$b;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/e$b;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    :cond_3
    return-void
.end method

.method private f(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private g(Lcom/google/protobuf/Message;)V
    .locals 3

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerOn()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerOn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "powerOnCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFactoryReset()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFactoryReset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "factoryResetCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDeviceIdQuery()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDeviceIdQuery()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deviceIdQueryCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getKeyLock()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getKeyLock()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyLockCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerLevelQuery()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerLevelQuery()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getPowerLevelQuery"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFmOpen()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFmOpen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fmOpenCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getConnBtEar()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getConnBtEar()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "connBtEarCount"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v1, "Seal_Device_Event"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method private h(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    :cond_0
    return-void
.end method

.method private i(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    :cond_0
    return-void
.end method

.method private j(Lcom/google/protobuf/Message;)V
    .locals 4

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_2
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->c:Lcom/ifengyu/intercom/node/e$b;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/e$b;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    :cond_3
    return-void
.end method

.method private k(Lcom/google/protobuf/Message;)V
    .locals 1

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private l(Lcom/google/protobuf/Message;)V
    .locals 3

    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getPowerOn()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getPowerOn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "powerOnCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getAzimuthMap()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getAzimuthMap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "azimuthMapCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getFmRadio()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getFmRadio()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fmRadioCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getQuickTeam()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getQuickTeam()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quickTeamCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getBluetoothDevice()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getBluetoothDevice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bluetoothDeviceCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getHandsFree()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getHandsFree()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "handsFreeCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getChannelScan()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getChannelScan()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "channelScanCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getDoubleFreq()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getDoubleFreq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "doubleFreqCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getSosMode()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getSosMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sosModeCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getPowerLevel()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getPowerLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "powerLevelCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getBusyLock()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getBusyLock()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "busyLockCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getSquelchTail()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getSquelchTail()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "squelchTailCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getWideNarrow()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getWideNarrow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wideNarrowCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getRestoreFactory()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getRestoreFactory()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "restoreFactoryCount"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v1, "Shark_Device_Event"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/e;->c:Lcom/ifengyu/intercom/node/e$b;

    return-void
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPttKeyEvent valueInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->f:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->f:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/c;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->f:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->g:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->a()I

    move-result v0

    if-ne v0, p1, :cond_1

    sget-object p1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->g:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/c;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->g:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->h:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->a()I

    move-result v0

    if-ne v0, p1, :cond_2

    sget-object p1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->h:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/c;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->h:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->i:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->a()I

    move-result v0

    if-ne v0, p1, :cond_3

    sget-object p1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->i:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/c;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->i:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->j:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->a()I

    move-result v0

    if-ne v0, p1, :cond_4

    sget-object p1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->j:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/c;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->j:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;ILjava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/node/e;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/node/e;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/e;->c:Lcom/ifengyu/intercom/node/e$b;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/i;)V
    .locals 2

    const-string v0, "DataService"

    const-string v1, "onDeviceConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/e;->a:Lcom/ifengyu/intercom/node/i;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/e;->e:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->f()Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/e;->d:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    :goto_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0, p2, p3, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/node/e;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/node/e;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "DataService"

    const-string v0, "onDeviceDisConnected"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/e;->a:Lcom/ifengyu/intercom/node/i;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/b;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/l;)V
    .locals 1

    const-string p1, "DataService"

    const-string v0, "onSealCmdReceived"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->a()I

    move-result p2

    const/16 v0, 0x4e25

    if-eq p2, v0, :cond_6

    const/16 v0, 0x4e28

    if-eq p2, v0, :cond_5

    const/16 v0, 0x4e2b

    if-eq p2, v0, :cond_4

    const/16 v0, 0x4e30

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e33

    if-eq p2, v0, :cond_2

    const/16 v0, 0x4e35

    if-eq p2, v0, :cond_1

    const/16 v0, 0x4e39

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->g(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->b(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->f(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->c(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->d(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->e(Lcom/google/protobuf/Message;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/m;)V
    .locals 1

    const-string p1, "DataService"

    const-string v0, "onSharkCmdReceived"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->a()I

    move-result p2

    const/16 v0, 0x4e25

    if-eq p2, v0, :cond_4

    const/16 v0, 0x4e28

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e2b

    if-eq p2, v0, :cond_2

    const/16 v0, 0x4e30

    if-eq p2, v0, :cond_1

    const/16 v0, 0x4e39

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->l(Lcom/google/protobuf/Message;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->f()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->k(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->h(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->i(Lcom/google/protobuf/Message;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/e;->j(Lcom/google/protobuf/Message;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 5

    const-string p1, "DataService"

    const-string v0, "onDolphinCmdReceived"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamUpdate()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasParamUpdate:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/e;->c:Lcom/ifengyu/intercom/node/e$b;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/ifengyu/intercom/node/e$b;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamResp()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasParamResp:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a0()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateResp()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v2, v3, :cond_8

    sget v2, Lcom/ifengyu/intercom/i/d0;->a:I

    if-ne v2, v1, :cond_7

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    if-ne v2, v1, :cond_8

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/e;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    :cond_8
    :goto_2
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasStateResp:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, p2, :cond_e

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq p1, p2, :cond_b

    :cond_a
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SOS:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, p2, :cond_c

    :cond_b
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a0()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a0()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Z()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_d
    :goto_3
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/e;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V

    :cond_e
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z
    .locals 3

    const-string v0, "DataService"

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/e;->a:Lcom/ifengyu/intercom/node/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/e;->a:Lcom/ifengyu/intercom/node/i;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/ifengyu/intercom/node/i;->a(ILcom/ifengyu/intercom/node/SendDataWrap;)V

    return v2

    :cond_0
    const-string p1, "Device has disconnected."

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v1, "Got exception while sending Data, "

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/e;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;I)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/node/e;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/d;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/e;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/node/e;->a(ILcom/google/protobuf/Message;)Z

    return-void
.end method
