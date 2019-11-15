.class Lcom/mi/mimsgsdk/video/MiVideoManager$3;
.super Ljava/lang/Object;
.source "MiVideoManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$3;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$3;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$3;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$3;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$100(Lcom/mi/mimsgsdk/video/MiVideoManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onPlayEnd(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
