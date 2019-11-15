.class public Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;
.super Ljava/lang/Object;
.source "CommonAudioPlayer.java"


# static fields
.field private static final AUDIO_PLAY_BUFFER:Ljava/lang/String;

.field private static sInstance:Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/spx_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->AUDIO_PLAY_BUFFER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;
    .locals 3

    const-class v1, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->sInstance:Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->sInstance:Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->sInstance:Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;

    sget-object v0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->sInstance:Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public play(Ljava/io/File;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;)V
    .locals 6

    new-instance v0, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->AUDIO_PLAY_BUFFER:Ljava/lang/String;

    const/4 v5, 0x3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;I)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->stopPlay()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/CommonAudioPlayer;->mSPXAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    :cond_0
    return-void
.end method
