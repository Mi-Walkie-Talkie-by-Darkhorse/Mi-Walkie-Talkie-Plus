.class public Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;
.super Ljava/lang/Object;
.source "AudioTalkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;,
        Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;
    }
.end annotation


# static fields
.field private static instance:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayStatus:Lcom/xiaomi/channel/common/audio/PlayerStatus;

.field private mLastSensorEventValue:F

.field private mMediaCallback:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

.field private mPlayCache:Ljava/lang/String;

.field private mPlayList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private sensorListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->paused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    new-instance v0, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mCurrentPlayStatus:Lcom/xiaomi/channel/common/audio/PlayerStatus;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mLastSensorEventValue:F

    iput-object p1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->initPlayCache()V

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mLastSensorEventValue:F

    return v0
.end method

.method static synthetic access$302(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;F)F
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mLastSensorEventValue:F

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;
    .locals 3

    const-class v1, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->instance:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->instance:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->instance:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    sget-object v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->instance:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;
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

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

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

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "play_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/upload/PreferenceUtils;->getSettingInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    if-nez v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mLastSensorEventValue:F

    new-instance v2, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;-><init>(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)V

    iput-object v2, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addToPlayList(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    new-instance v3, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;-><init>(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    iget-wide v4, v2, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move-object/from16 v0, p6

    iput-object v0, v2, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;
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

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    return-void
.end method

.method public declared-synchronized clearPlayList()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

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

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerStatus(Ljava/lang/String;)Lcom/xiaomi/channel/common/audio/PlayerStatus;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mCurrentPlayStatus:Lcom/xiaomi/channel/common/audio/PlayerStatus;

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
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

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

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isAlive()Z

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

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isPlaying(Ljava/lang/String;)Z

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

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isPlaying(Ljava/lang/String;J)Z

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
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playNext(I)V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->paused:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    iget-object v3, v2, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    move-object/from16 v16, v0

    new-instance v5, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v3, v1, v2}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;-><init>(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;Landroid/os/Handler;Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    iget-object v2, v2, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;->onStarted(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, v16

    iget v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->messageType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    move-object/from16 v0, v16

    iget v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->messageType:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->localPlay(Landroid/content/Context;Ljava/lang/String;Ljava/util/Observer;J)V

    :cond_1
    :goto_0
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->mMarkAsHeard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->initPlayCache()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v7, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayCache:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v0, v16

    iget-wide v14, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    move-object v11, v5

    move/from16 v12, p1

    invoke-direct/range {v7 .. v15}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;IZJ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stream mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeFromPlayList(J)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mPlayList:Ljava/util/LinkedList;

    new-instance v1, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    const-wide/16 v4, 0x0

    const/16 v6, 0x64

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    check-cast v9, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;

    const/4 v10, 0x0

    move-wide v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;-><init>(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V

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
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->paused:Z
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

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->LOG_TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->switchMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->switchMode(I)V

    goto :goto_0
.end method

.method public setMediaCallback(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mMediaCallback:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    return-void
.end method

.method public setPlayerStatus(Lcom/xiaomi/channel/common/audio/PlayerStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mCurrentPlayStatus:Lcom/xiaomi/channel/common/audio/PlayerStatus;

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->stopPlay()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    :cond_0
    invoke-static {}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->stop()V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->unregisterProximitySensor()V

    return-void
.end method

.method public switchEarphoneMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mAudioPlayer:Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->switchMode(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->initProximitySensor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->unregisterProximitySensor()V

    goto :goto_0
.end method

.method public unregisterProximitySensor()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->sensorListener:Landroid/hardware/SensorEventListener;

    :cond_0
    return-void
.end method
