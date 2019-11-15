.class public Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$AttachmentUtils;,
        Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;,
        Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;,
        Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;,
        Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;,
        Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;
    }
.end annotation


# static fields
.field private static final COMPLETE:I = 0x3

.field private static final INTERVAL_OF_UPDATING_PROGRESS:I = 0x1f4

.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAsyncPlayerObserver:Ljava/util/Observer;

.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPlayCmd:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayerLock:Ljava/lang/Object;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;

.field private mUpdateProgressTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mState:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mPlayerLock:Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->sendPlayStatusMessage(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mPlayerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mThread:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->stopTimer()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->popNextUsableCommand()Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->startSound(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCurrentPlayCmd:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    return-object v0
.end method

.method static synthetic access$802(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCurrentPlayCmd:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/PlayerObservable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->startTimer(Lcom/xiaomi/channel/common/audio/PlayerObservable;)V

    return-void
.end method

.method private enqueueLocked(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mThread:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;-><init>(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mThread:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mThread:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->start()V

    :cond_0
    return-void
.end method

.method private popNextUsableCommand()Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;
    .locals 6

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    iget v1, v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->code:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, v5}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->sendPlayStatusMessage(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    iget v3, v1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->code:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v1, v5}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->sendPlayStatusMessage(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method

.method private sendPlayStatusMessage(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V
    .locals 2

    iget-object v0, p1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->observable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    new-instance v1, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    invoke-direct {v1, p2}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private startSound(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->sendPlayStatusMessage(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iget v2, p1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->stream:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v2, p1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-boolean v2, p1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->looping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    new-instance v2, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;-><init>(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v2, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;-><init>(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mPlayer:Landroid/media/MediaPlayer;

    monitor-exit v2

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException (content provider died?) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private startTimer(Lcom/xiaomi/channel/common/audio/PlayerObservable;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mUpdateProgressTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mUpdateProgressTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mUpdateProgressTimer:Ljava/util/Timer;

    new-instance v1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;-><init>(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/PlayerObservable;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mUpdateProgressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mUpdateProgressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mUpdateProgressTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    invoke-direct {v0, p1, v3, p2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;-><init>(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v1, v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->observable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mAsyncPlayerObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->addObserver(Ljava/util/Observer;)V

    new-instance v2, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    invoke-direct {v2, v3}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->notifyObservers(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->enqueueLocked(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mState:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Observer;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    invoke-direct {v1, p1, v4, p2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;-><init>(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v2, v1, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->observable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    invoke-virtual {v2, v0}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    invoke-direct {v0, v4}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->notifyObservers(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->enqueueLocked(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mState:I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Observer;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    invoke-direct {v0, p1, v3, p2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;-><init>(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v1, v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->observable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    invoke-virtual {v1, p3}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->addObserver(Ljava/util/Observer;)V

    new-instance v2, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    invoke-direct {v2, v3}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->notifyObservers(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->enqueueLocked(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mState:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlayerObserver(Ljava/util/Observer;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mAsyncPlayerObserver:Ljava/util/Observer;

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mState:I

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->enqueueLocked(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->mState:I

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
