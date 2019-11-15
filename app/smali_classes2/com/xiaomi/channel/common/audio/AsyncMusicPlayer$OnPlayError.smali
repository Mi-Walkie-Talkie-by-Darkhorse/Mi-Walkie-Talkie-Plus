.class Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPlayError"
.end annotation


# instance fields
.field private final mCommand:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;->mCommand:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;->mCommand:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$102(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;I)I

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnPlayError;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$200(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)V

    const/4 v0, 0x1

    return v0
.end method
