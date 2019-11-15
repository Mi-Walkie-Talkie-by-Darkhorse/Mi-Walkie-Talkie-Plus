.class Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;
.super Ljava/util/TimerTask;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProgressTimerTask"
.end annotation


# instance fields
.field private final LONGEST_BUFFERING_TIME_THRESHOLD:J

.field private mLastPlayPosition:I

.field private mLastPlayTime:J

.field private final mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/PlayerObservable;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->LONGEST_BUFFERING_TIME_THRESHOLD:J

    iput-object p2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mLastPlayPosition:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mLastPlayTime:J

    return-void
.end method

.method private isBuffering(I)Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mLastPlayPosition:I

    if-eq v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mLastPlayTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1100(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->isBuffering(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    new-instance v2, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->notifyObservers(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mObservable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    new-instance v4, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v0, v2}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(III)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/channel/common/audio/PlayerObservable;->notifyObservers(Ljava/lang/Object;)V

    iput v2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mLastPlayPosition:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$UpdateProgressTimerTask;->mLastPlayTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
