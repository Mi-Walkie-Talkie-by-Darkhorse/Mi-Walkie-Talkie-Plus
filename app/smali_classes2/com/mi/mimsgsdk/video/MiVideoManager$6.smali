.class Lcom/mi/mimsgsdk/video/MiVideoManager$6;
.super Ljava/lang/Object;
.source "MiVideoManager.java"

# interfaces
.implements Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/video/MiVideoManager;->playVideoWithUrl(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download video failed, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download video failed, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download video success, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download video success, path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onWriteLog(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0, p1}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$102(Lcom/mi/mimsgsdk/video/MiVideoManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$100(Lcom/mi/mimsgsdk/video/MiVideoManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$600(Lcom/mi/mimsgsdk/video/MiVideoManager;Ljava/lang/String;)V

    return-void
.end method
