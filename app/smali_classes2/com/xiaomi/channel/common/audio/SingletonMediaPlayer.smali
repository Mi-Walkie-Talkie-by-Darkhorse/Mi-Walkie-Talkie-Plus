.class public Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;
.super Ljava/lang/Object;
.source "SingletonMediaPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;


# instance fields
.field private mAsyncPlayer:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

.field private mPlayingPath:Ljava/lang/String;

.field private mUniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mUniqueId:J

    new-instance v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    sget-object v1, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mAsyncPlayer:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    return-void
.end method

.method public static instance()Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;
    .locals 2

    sget-object v0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->sInstance:Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->sInstance:Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    invoke-direct {v0}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->sInstance:Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->sInstance:Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;

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
.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mAsyncPlayer:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mPlayingPath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mAsyncPlayer:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->isPlaying()Z

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

    iget-wide v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mUniqueId:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mPlayingPath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mAsyncPlayer:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public localPlay(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Observer;",
            ">;J)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mAsyncPlayer:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->play(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)V

    iput-object p2, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mPlayingPath:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mUniqueId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public localPlay(Landroid/content/Context;Ljava/lang/String;Ljava/util/Observer;J)V
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->localPlay(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mPlayingPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/SingletonMediaPlayer;->mAsyncPlayer:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->stop()V

    return-void
.end method
