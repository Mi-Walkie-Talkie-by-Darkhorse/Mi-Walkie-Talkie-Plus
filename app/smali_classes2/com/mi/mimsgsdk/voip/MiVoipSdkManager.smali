.class public Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;
.super Ljava/lang/Object;
.source "MiVoipSdkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final onJoinRes:I = 0x3e8

.field public static final onOtherOffline:I = 0x3ed

.field public static final onSelfOffline:I = 0x3ee

.field public static final onSelfRejoin:I = 0x3ec

.field public static final onUserAdded:I = 0x3ea

.field public static final onUserDeleted:I = 0x3eb

.field public static final onUserMuteAudio:I = 0x7d2

.field public static final onUserSpeaker:I = 0x7d1

.field public static final onWriteLog:I = 0x3e9


# instance fields
.field afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private handlerThread:Landroid/os/HandlerThread;

.field private key:Ljava/lang/String;

.field private mAgoraCallThread:Ljava/util/concurrent/ExecutorService;

.field private volatile mAm:Landroid/media/AudioManager;

.field private volatile mAudioEngineCallback:Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

.field private volatile mContext:Landroid/content/Context;

.field private volatile mHandler:Landroid/os/Handler;

.field private volatile mMediaId:I

.field private volatile mNative:Lio/agora/rtc/c;

.field private volatile mSpeakerOn:Z

.field private userCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "303edc577206440ba5e65cb197b0e74b"

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->userCount:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "voipCallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAgoraCallThread:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$13;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$13;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAm:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAm:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method static synthetic access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAudioEngineCallback:Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAm:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$108(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)I
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->userCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->userCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)I
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->userCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->userCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mMediaId:I

    return v0
.end method

.method static synthetic access$202(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mMediaId:I

    return p1
.end method

.method static synthetic access$300(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->onUserAgoraActionScribe(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;Lio/agora/rtc/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->createRtcEngineInstance(Ljava/lang/String;Lio/agora/rtc/a;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lio/agora/rtc/c;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Lio/agora/rtc/c;)Lio/agora/rtc/c;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mSpeakerOn:Z

    return p1
.end method

.method private declared-synchronized createRtcEngineInstance(Ljava/lang/String;Lio/agora/rtc/a;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lio/agora/rtc/c;->a(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/a;)Lio/agora/rtc/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/agora/rtc/c;->b(Z)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/agora/rtc/c;->a(Z)Z

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Xiaomi/MiMsgSdk/agora"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/agora_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentAgoraLogFileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    invoke-virtual {v1, v0}, Lio/agora/rtc/c;->b(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "init agora engine fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v2, "agora-mixun_sdk_voip-launch-failed-uid-%s-appid-%s"

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInitParams()Lcom/mi/mimsgsdk/InitParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/InitParams;->getgUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [J

    invoke-static {v1, v2, v3, v4}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Lrx/a;->a(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAgoraCallThread:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Lrx/e/e;->a(Ljava/util/concurrent/Executor;)Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/d;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$2;

    invoke-direct {v1, p0, p1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$2;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/e;)Lrx/f;

    return-void
.end method

.method private onUserAgoraActionScribe(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;

    sget v1, Lcom/mi/mimsgsdk/utils/GlobalData;->mAppId:I

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;-><init>(Ljava/lang/String;I)V

    const-string v1, "agora"

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->setEngine(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/UserInfo;->getInstance()Lcom/mi/mimsgsdk/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/UserInfo;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->setSessionRoom(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->setStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/UserInfo;->getInstance()Lcom/mi/mimsgsdk/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/UserInfo;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->setUid(J)V

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendStat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private requestAudioFocus()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAm:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAm:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Trespass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setAudioOutput()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mSpeakerOn:Z

    invoke-virtual {v0, v1}, Lio/agora/rtc/c;->c(Z)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "native set speaker fail"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAm:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAm:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mSpeakerOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public MiVoipEngineInit(Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iput-object p2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mAudioEngineCallback:Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    const-string v0, "create agora engine"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$3;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$3;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public adjustPlaybackSignalVolume(I)V
    .locals 2

    const-string v0, ""

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$15;

    invoke-direct {v1, p0, p1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$15;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;I)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    if-eqz v0, :cond_0

    const-string v0, "destroy agora engine"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$12;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$12;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public enableAudioVolumeIndication(II)V
    .locals 2

    const-string v0, "enable aduio volume indication"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;II)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableLowBitrateMode(Z)V
    .locals 2

    const-string v0, "enable low bit rate mode"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$14;

    invoke-direct {v1, p0, p1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$14;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public joinRoom(Ljava/lang/String;I)V
    .locals 2

    const-string v0, ""

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public leaveRoom()V
    .locals 2

    const-string v0, "exit conference"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$5;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$5;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public muteUser(IZ)V
    .locals 2

    const-string v0, "mute user"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;IZ)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public requireGameSoundCancellation()Z
    .locals 4

    const-string v0, "true"

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->mNative:Lio/agora/rtc/c;

    const-string v2, "che.audio.game.sound.cancellation"

    const-string v3, "dummy"

    invoke-virtual {v1, v2, v3}, Lio/agora/rtc/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startListen()V
    .locals 2

    const-string v0, "start audio"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$6;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$6;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSpeaker()V
    .locals 2

    const-string v0, "open mic"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$8;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$8;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopListen()V
    .locals 2

    const-string v0, "stop audio"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$7;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$7;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopSpeaker()V
    .locals 2

    const-string v0, "close mic"

    new-instance v1, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$9;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$9;-><init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->execAgoraTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
