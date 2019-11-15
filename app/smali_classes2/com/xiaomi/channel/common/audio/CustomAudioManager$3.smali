.class Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;
.super Ljava/lang/Object;
.source "CustomAudioManager.java"

# interfaces
.implements Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoiceWithUrl(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

.field final synthetic val$convertPath:Ljava/lang/String;

.field final synthetic val$isNeedToPlay:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    iput-boolean p2, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;->val$isNeedToPlay:Z

    iput-object p3, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;->val$convertPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$400(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "download error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download success ,result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    iget-boolean v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;->val$isNeedToPlay:Z

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;->val$convertPath:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$300(Lcom/xiaomi/channel/common/audio/CustomAudioManager;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
