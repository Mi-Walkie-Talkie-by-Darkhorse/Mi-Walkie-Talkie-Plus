.class Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnComplementListenerAsync"
.end annotation


# instance fields
.field private final mCommand:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;->mCommand:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;->mCommand:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$102(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;I)I

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$OnComplementListenerAsync;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$200(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)V

    return-void
.end method
