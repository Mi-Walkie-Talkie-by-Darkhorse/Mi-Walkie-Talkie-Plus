.class final Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Command"
.end annotation


# instance fields
.field final code:I

.field final context:Landroid/content/Context;

.field final looping:Z

.field final observable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

.field final stream:I

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;-><init>(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->context:Landroid/content/Context;

    iput p2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->code:I

    iput-object p3, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->uri:Landroid/net/Uri;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/xiaomi/channel/common/audio/PlayerObservable;

    invoke-direct {v0}, Lcom/xiaomi/channel/common/audio/PlayerObservable;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->observable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->looping:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->stream:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
