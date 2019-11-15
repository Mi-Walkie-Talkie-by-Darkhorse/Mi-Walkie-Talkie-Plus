.class public Lcom/xiaomi/channel/common/audio/VoipMediaUtils;
.super Ljava/lang/Object;
.source "VoipMediaUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static volatile mInstance:Lcom/xiaomi/channel/common/audio/VoipMediaUtils;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/common/audio/VoipMediaUtils;
    .locals 2

    sget-object v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mInstance:Lcom/xiaomi/channel/common/audio/VoipMediaUtils;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mInstance:Lcom/xiaomi/channel/common/audio/VoipMediaUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mInstance:Lcom/xiaomi/channel/common/audio/VoipMediaUtils;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mInstance:Lcom/xiaomi/channel/common/audio/VoipMediaUtils;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 3

    sget-object v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpeakerphoneOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 3

    sget-object v0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeakerphoneOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->isSpeakerphoneOn()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/VoipMediaUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    return-void
.end method
