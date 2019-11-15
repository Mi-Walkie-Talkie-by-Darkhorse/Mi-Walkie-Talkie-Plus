.class Lcom/mi/mimsgsdk/controller/MessageController$14;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->downloadMediaFile(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$messageType:I


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;I)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$14;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$14;->val$messageType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download meidia file failed, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$14;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$14;->val$messageType:I

    const/4 v2, -0x1

    const-string v3, "downloadfailed"

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1600(Lcom/mi/mimsgsdk/controller/MessageController;IILjava/lang/String;)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download media file success, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$14;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$14;->val$messageType:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1600(Lcom/mi/mimsgsdk/controller/MessageController;IILjava/lang/String;)V

    return-void
.end method
