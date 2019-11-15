.class public Lcom/xiaomi/conferencemanager/ConferenceManager;
.super Ljava/lang/Object;
.source "ConferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;,
        Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;,
        Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;
    }
.end annotation


# static fields
.field static final AUTO:I = 0x0

.field static final EARPIECE:I = 0x2

.field static final HEADSET:I = 0x3

.field static final SPEAKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConferenceManager"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private audioOutputDevice:I

.field final audioStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field gslb_test_config:[B

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    new-array v0, v2, [B

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->gslb_test_config:[B

    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/conferencemanager/ConferenceManager$1;-><init>(Lcom/xiaomi/conferencemanager/ConferenceManager;)V

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static WriteSettings(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "ConferenceManagerwrite setting files"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->WriteSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/xiaomi/conferencemanager/ConferenceManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/conferencemanager/ConferenceManager;->getOutPutDevice()I

    move-result v0

    return v0
.end method

.method private getAudioManagerMode()I
    .locals 4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mi 4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi 3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hm note 1lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hm 1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hm2 lte-cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi 4i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi-4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hm 2a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi 5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2014813"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2014811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getVoiceMode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConferenceManager The device model is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " use the setting mode :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    const-string v1, "2014501"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2014011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2013022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2013023"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hm note 1td"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hm note 1w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "redmi note 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi-one"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi-one plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi 1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sch-i959"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sm-n7100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "huawei g750-t00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "h30-t00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vivo x3t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0
.end method

.method public static getEngineVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ConferenceManager get Engine Version!!!!"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEngineVersionInt()I
    .locals 1

    const-string v0, "getting getEngineVersionInt"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineVersionInt()I

    move-result v0

    return v0
.end method

.method private getOutPutDevice()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    :goto_0
    iget v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "destorying voip engine..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagerdestroy error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->uninitialize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const-string v0, "destory voip engine done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "ConferenceManager"

    const-string v1, "audioStateChangeReceiver is not registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "audioStateChangeReceiver is not registered!"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enableCameraRotation(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Eanble camera rotate with:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagerenableCameraRotation error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->enableCameraRotation(Z)V

    const-string v0, "set camera rotate done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableMonitorTraffic(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting enableMonitorTraffic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->enableMonitorTraffic(Z)V

    return-void
.end method

.method public getAddress()J
    .locals 2

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIceStat()Ljava/lang/String;
    .locals 1

    const-string v0, "getting ice Stat"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagergetIceStat error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getIceStat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;
    .locals 1

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;

    move-result-object v0

    return-object v0
.end method

.method public getMonitorData()Lcom/xiaomi/conferencemanager/Model/MonitorData;
    .locals 1

    const-string v0, "getting monitor data"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagergetMonitorData error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getMonitorData()Lcom/xiaomi/conferencemanager/Model/MonitorData;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkEnv()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagerget network environment error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getNetworkEnv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;
    .locals 1

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getOutVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantVolume(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager get participants name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " volume!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManager getParticipantsVolume error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getParticipantVolume(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getRunHorseTime()I
    .locals 1

    const-string v0, "getting RunHorseTime"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagergetRunHorseTime error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getRunHorseTime()I

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;II)Z
    .locals 10

    const-string v0, "Initializing voip engine..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "ConferenceManagerinit error, please destroy the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/xiaomi/conferencemanager/ConferenceManager;->getOutPutDevice()I

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->gslb_test_config:[B

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->initialize(Landroid/content/Context;JLjava/lang/String;[BLcom/xiaomi/conferencemanager/callback/ConferenceCallback;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Monitor Successed: On load succeeded."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-interface {p5, v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLoad(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Monitor Failed:On load failed."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLoad(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "joining room, roomId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManager joinRoom error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/conferencemanager/ConferenceManager;->getAudioManagerMode()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "ConferenceManager Could not change audio routing - no audio manager"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getNetworkEnv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConferenceManager Current network environment is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->AutoStartCamera(Z)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->Join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ConferenceManagerjoin room failed"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/conferencemanager/ConferenceManager;->getOutPutDevice()I

    const-string v0, "join room succeeded"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public leaveRoom()V
    .locals 2

    const-string v0, "leaving conference room"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagerleaveRoom error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "ConferenceManagerCould not change audio routing - no audio manager"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->Leave()V

    const-string v0, "Set the mode to normal"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    const-string v0, "leave conference room done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public localParticipantSetDynamicViewPolicy(Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;)V
    .locals 1

    const-string v0, "setting local participant dynamic view policy"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagerlocalParticipantSetDynamicViewPolicy error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->localParticipantSetDynamicViewPolicy(Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;)V

    const-string v0, "set local participant dynamic view policy done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public muteMicrophone()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "muting Microphone..."

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v0, "ConferenceManagermuteMic error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->MuteMicrophone(Z)V

    const-string v1, "mute Microphone succeeded"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public muteUserAudio(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager set user name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManager muteUserAudio error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->muteUserAudio(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public muteVideo()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "muting video..."

    invoke-static {v2}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v1, "ConferenceManagermuteVideo error, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->MuteVideo(Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "ConferenceManagermute video failed"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "mute video succeeded"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public setAutoStartDevice(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager setAutoStartDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagerset AutoStart Device error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->AutoStartMicrophone(Z)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->AutoStartSpeaker(Z)V

    goto :goto_0
.end method

.method public setCallResolutionMode(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager setCallResolutionMode to width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManager setCallResolutionMode error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setCallResolutionMode(II)V

    goto :goto_0
.end method

.method public setEncoderMaxBitRate(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting encoder max bitrate to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagersetEncoderMaxBitRate error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setEncoderMaxBitRate(I)V

    const-string v0, "set encoder max bitrate done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGslbConfig([B)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGslbConfig, config_str pb pb_config length :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ConferenceManager setGslbConfig, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->gslb_test_config:[B

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->SetGslbConfig([B)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConferenceManagersetGslbConfig failed"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "setGslbConfig succeeded"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLocalNetWork(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting local netWork to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " netID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagersetLocalNetwork error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setLocalNetWork(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "set local netWork done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMirrorCamera(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager setMirrorCamera :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManager setMirrorCamera error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setMirrorCamera(Z)V

    goto :goto_0
.end method

.method public setPlayoutVolume(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager setPlayoutVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManager setVolume error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setPlayoutVolume(I)V

    goto :goto_0
.end method

.method public setPowerStatus(IZ)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting power status: power left to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCharge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagersetPowerStatus error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setPowerStatus(IZ)V

    const-string v0, "set power status done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRemoteNetWork(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting remotel netWork to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " netID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagersetRemoteNetwork error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setRemoteNetWork(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "set remote netWork done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScreenFps(I)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Screen fps to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ConferenceManagersetScreenFps error, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setScreenFps(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConferenceManagerset screen fps false"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "set screen fps done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScreenResolution(II)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Screen Resotuon to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ConferenceManagersetScreenResolution error, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setScreenResolution(II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConferenceManagerset screen resolution false"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "set screen resolution done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUserPlayoutVolume(Ljava/lang/String;D)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager set user name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManager setVolume error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setUserPlayoutVolume(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public startVideo()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "starting video..."

    invoke-static {v2}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v1, "ConferenceManagerstartVideo error, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->StartVideo(Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "ConferenceManagerstart video failed"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "start video succeeded"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public stopVideo()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "stopping video..."

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ConferenceManagerstopVideo error, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->StartVideo(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConferenceManagerstop video failed"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "stop video succeeded"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public switchVideoContent(Lcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch video content type to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ConferenceManagerswitch video content error, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->switchVideoContent(Lcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConferenceManagerswitch video content false"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "switch video content done"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unMuteMicrophone()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "unmuting unMuteMicrophone..."

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ConferenceManagerunMuteMic error, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->MuteMicrophone(Z)V

    const-string v0, "unmute unMuteMicrophone succeeded"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unMuteVideo()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "unmuting video..."

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ConferenceManagerunMuteVideo error, please init the engine first"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->MuteVideo(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConferenceManagerunmute video failed"

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "unmute video succeeded"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
