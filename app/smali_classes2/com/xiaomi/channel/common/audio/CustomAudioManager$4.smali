.class Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;
.super Landroid/os/AsyncTask;
.source "CustomAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/common/audio/CustomAudioManager;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

.field final synthetic val$downloadCallback:Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;

.field final synthetic val$downloadFilePath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    iput-object p2, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$downloadCallback:Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;

    iput-object p3, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$downloadFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$downloadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play voice download start ,1.0"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->downloadFile(Ljava/lang/String;Ljava/io/File;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;Z)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play voice download end ,local path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play voice download end ,local path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download failed, url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_1

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$downloadCallback:Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$downloadCallback:Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;->onDownloadSuccess(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$downloadCallback:Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;->val$downloadCallback:Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;->onDownloadFailed(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownLoadAudioMessageFailed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
