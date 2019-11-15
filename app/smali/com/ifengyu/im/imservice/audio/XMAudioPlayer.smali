.class public Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;
.super Ljava/lang/Thread;
.source "XMAudioPlayer.java"


# static fields
.field public static final PREF_KEY_PLAY_MODE:Ljava/lang/String; = "play_mode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackerLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mEncodedPath:Ljava/lang/String;

.field private mFrameSize:I

.field private mHasPendingSeekProgress:Z

.field private mMode:I

.field private mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

.field private mPausePlay:Z

.field private mPlayLock:Ljava/lang/Object;

.field private mReadCount:J

.field private mSampleRate:I

.field private mSeekProgress:I

.field private mStopPlay:Z

.field private final mTempFile:Ljava/lang/String;

.field private final mUniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;I)V
    .locals 10

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;IZJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;IZ)V
    .locals 10

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;IZJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;IZJ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mStopPlay:Z

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPausePlay:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mReadCount:J

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mHasPendingSeekProgress:Z

    iput v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSeekProgress:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mEncodedPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mTempFile:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/channel/common/audio/AudioCodec;

    invoke-direct {v0}, Lcom/xiaomi/channel/common/audio/AudioCodec;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    new-instance v0, Lcom/xiaomi/channel/common/audio/PlayerObservable;

    invoke-direct {v0}, Lcom/xiaomi/channel/common/audio/PlayerObservable;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    invoke-virtual {v0, p4}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->addObserver(Ljava/util/Observer;)V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mContext:Landroid/content/Context;

    iput p5, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mMode:I

    iput-wide p7, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mUniqueId:J

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->TAG:Ljava/lang/String;

    const-string v1, "failed to abandon audio focus in KMusicActivity"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private flushAudioTrack()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(III)V
    .locals 8

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    iget-object v7, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput p1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSampleRate:I

    iput p2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mFrameSize:I

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, p2, 0x4

    move v2, v0

    :goto_0
    iput p3, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mMode:I

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mMode:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    sget-object v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the play mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v2, v0

    goto :goto_0
.end method

.method private play()V
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mEncodedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mTempFile:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/channel/common/audio/AudioCodec;->decode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    sget v4, Lcom/xiaomi/channel/common/audio/AudioCodec;->DECODE_RESULT_FAILED:I

    if-ne v4, v6, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->requestAudioFocus()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->getFrameSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v4}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->init(III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->releaseAudioTrack()V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->abandonAudioFocus()V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->TAG:Ljava/lang/String;

    const-string v5, "Decode performance: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v2, 0x2

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->startAudioTrack()V

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mTempFile:Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v9, v2

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    mul-int/lit8 v2, v7, 0x4

    :try_start_1
    new-array v10, v2, [B

    const/4 v3, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mReadCount:J

    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isStopped()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v5, v10}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isPaused()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isPaused()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v12}, Landroid/media/AudioTrack;->pause()V

    const/4 v12, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V

    :cond_3
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isStopped()Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->play()V

    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mHasPendingSeekProgress:Z

    if-eqz v11, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSeekProgress:I

    int-to-long v14, v3

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    int-to-long v14, v7

    :try_start_4
    div-long v14, v12, v14

    int-to-long v0, v7

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    invoke-virtual {v4, v14, v15}, Ljava/io/BufferedInputStream;->skip(J)J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mHasPendingSeekProgress:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSeekProgress:I

    long-to-int v3, v12

    int-to-long v12, v3

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mReadCount:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_2
    move-object v5, v4

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v2

    :goto_3
    const/4 v3, 0x0

    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    sget-object v3, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->releaseAudioTrack()V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->abandonAudioFocus()V

    goto/16 :goto_0

    :cond_6
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v4}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->writeAudioData([BII)I

    move-result v11

    if-gez v11, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->flushAudioTrack()V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->stopAudioTrack()V

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->setStopped()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v5, :cond_8

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->releaseAudioTrack()V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->abandonAudioFocus()V

    goto/16 :goto_0

    :cond_9
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    mul-int/lit16 v11, v4, 0x3e8

    mul-int/lit8 v16, v6, 0x2

    div-int v11, v11, v16
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    int-to-long v0, v11

    move-wide/from16 v16, v0

    sub-long v12, v14, v12

    sub-long v12, v16, v12

    const-wide/16 v14, 0x5

    cmp-long v11, v12, v14

    if-lez v11, :cond_a

    const-wide/16 v14, 0x5

    sub-long/2addr v12, v14

    :try_start_c
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_a
    :goto_6
    add-int/2addr v3, v4

    int-to-long v12, v3

    :try_start_d
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mReadCount:J

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v4, v2, 0x3

    const/4 v11, 0x1

    if-ne v4, v11, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mHasPendingSeekProgress:Z

    if-nez v4, :cond_b

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v3}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(III)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_b
    move-object v4, v5

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    move-object v5, v4

    :goto_7
    if-eqz v5, :cond_c

    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    :cond_c
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->releaseAudioTrack()V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->abandonAudioFocus()V

    throw v2

    :catch_1
    move-exception v11

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_5

    :catch_3
    move-exception v2

    goto/16 :goto_4

    :catch_4
    move-exception v3

    goto :goto_8

    :catchall_2
    move-exception v2

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object v5, v4

    goto :goto_7

    :catch_5
    move-exception v2

    move-object v5, v4

    goto/16 :goto_3

    :catch_6
    move-exception v2

    move-object v5, v4

    goto/16 :goto_3
.end method

.method private requestAudioFocus()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private sendPlayStatusMessage(I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    new-instance v1, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mUniqueId:J

    invoke-direct {v1, p1, v2, v3}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private sendPlayStatusMessage(III)V
    .locals 7

    iget-object v6, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    new-instance v0, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    iget-wide v4, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mUniqueId:J

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(IIIJ)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private startAudioTrack()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopAudioTrack()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writeAudioData([BII)I
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSampleRate:I

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSampleRate:I

    div-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    :cond_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPausePlay:Z

    return v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mEncodedPath:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying(Ljava/lang/String;J)Z
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mUniqueId:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mEncodedPath:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mStopPlay:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseAudioTrack()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumePlay()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPausePlay:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->sInitialized:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->releaseAudioTrack()V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->deleteObservers()V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->sendPlayStatusMessage(I)V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->play()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mHasPendingSeekProgress:Z

    iput p1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSeekProgress:I

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPaused()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPausePlay:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStopped()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mStopPlay:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopPlay()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mStopPlay:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mPlayLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrackerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mMode:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSampleRate:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mFrameSize:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mSampleRate:I

    iget v2, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mFrameSize:I

    invoke-direct {p0, v0, v2, p1}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->init(III)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/audio/XMAudioPlayer;->stopPlay()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
