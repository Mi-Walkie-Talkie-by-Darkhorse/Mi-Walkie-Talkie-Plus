.class public Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;
.super Ljava/lang/Object;
.source "AudioTalkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;,
        Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;
    }
.end annotation


# static fields
.field private static instance:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayStatus:Lcom/xiaomi/channel/common/audio/PlayerStatus;

.field private mLastSensorEventValue:F

.field private mMediaCallback:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

.field private mPlayCache:Ljava/lang/String;

.field private mPlayList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private sensorListener:Landroid/hardware/SensorEventListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->paused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    new-instance v0, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mCurrentPlayStatus:Lcom/xiaomi/channel/common/audio/PlayerStatus;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mLastSensorEventValue:F

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->initPlayCache()V

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;)Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;)F
    .locals 1

    iget v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mLastSensorEventValue:F

    return v0
.end method

.method static synthetic access$302(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;F)F
    .locals 0

    iput p1, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mLastSensorEventValue:F

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;
    .locals 3

    const-class v1, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->instance:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->instance:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->instance:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    sget-object v0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->instance:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initPlayCache()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$AttachmentUtils;->makeDirsIfNeeded(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "PlayingCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initProximitySensor()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/channel/common/audio/CommonUtils;->isAudioVoiceCallDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/CommonUtils;->shouldAvoidProximitySensor()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "play_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/upload/PreferenceUtils;->getSettingInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    if-nez v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mLastSensorEventValue:F

    new-instance v2, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$2;-><init>(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;)V

    iput-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addToPlayList(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;

    iget-wide v4, v2, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move-object/from16 v0, p6

    iput-object v0, v2, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    new-instance v3, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;-><init>(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clearMediaCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    return-void
.end method

.method public declared-synchronized clearPlayList()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlayerStatus(Ljava/lang/String;)Lcom/xiaomi/channel/common/audio/PlayerStatus;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mCurrentPlayStatus:Lcom/xiaomi/channel/common/audio/PlayerStatus;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(I)V

    goto :goto_0
.end method

.method public declared-synchronized hasNext()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying(Ljava/lang/String;J)Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->isPlaying(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isPlaying(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playNext(IZLjava/lang/String;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;

    iget-object v3, v2, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;

    move-object v13, v0

    new-instance v7, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$1;

    const/4 v3, 0x0

    invoke-direct {v7, p0, v3, v13, v2}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$1;-><init>(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;Landroid/os/Handler;Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;)V

    iget-object v3, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    iget-object v2, v2, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;->onStarted(Ljava/lang/String;)V

    :cond_2
    iget v2, v13, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->messageType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    iget v2, v13, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->messageType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    :cond_3
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

    if-eqz v2, :cond_5

    new-instance v3, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    iget-object v4, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v5, v13, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

    const/4 v9, 0x1

    iget-wide v10, v13, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    move v8, p1

    move/from16 v12, p2

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;IZJZ)V

    iput-object v3, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stream mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v2}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->start()V

    :cond_5
    :goto_2
    iget-boolean v2, v13, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->mMarkAsHeard:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->initPlayCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_7
    if-nez p2, :cond_8

    :try_start_2
    const-string v2, "play_error"

    const-string v3, "\u4e0d\u9700\u8981\u8f6c\u5316\uff01\uff01\uff01\uff01\uff01"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v6, v13, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    iget-wide v8, v13, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->localPlay(Landroid/content/Context;Ljava/lang/String;Ljava/util/Observer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized removeFromPlayList(J)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    new-instance v1, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;

    const-wide/16 v4, 0x0

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;-><init>(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEarphoneStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEarphoneStatus on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->switchMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->switchMode(I)V

    goto :goto_0
.end method

.method public setMediaCallback(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    return-void
.end method

.method public setPlayerStatus(Lcom/xiaomi/channel/common/audio/PlayerStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mCurrentPlayStatus:Lcom/xiaomi/channel/common/audio/PlayerStatus;

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->stopPlay()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    :cond_0
    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->stop()V

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->unregisterProximitySensor()V

    return-void
.end method

.method public switchEarphoneMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/xiaomi/channel/common/audio/XMAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/XMAudioPlayer;->switchMode(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->initProximitySensor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->unregisterProximitySensor()V

    goto :goto_0
.end method

.method public unregisterProximitySensor()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    :cond_0
    return-void
.end method
