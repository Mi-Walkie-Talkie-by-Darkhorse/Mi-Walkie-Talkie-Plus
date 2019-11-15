.class Lcom/mi/mimsgsdk/video/MiVideoManager$1;
.super Ljava/lang/Object;
.source "MiVideoManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/video/MiVideoManager;->setVideoView(Landroid/widget/VideoView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/video/MiVideoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$1;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$1;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$1;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$1;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$100(Lcom/mi/mimsgsdk/video/MiVideoManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onPlayBegin(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$1;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$200(Lcom/mi/mimsgsdk/video/MiVideoManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method
