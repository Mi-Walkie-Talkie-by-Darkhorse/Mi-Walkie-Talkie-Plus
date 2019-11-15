.class Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;
.super Landroid/os/AsyncTask;
.source "AbstractXMAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->endRecord(Z)V
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

.field final synthetic val$onError:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iput-boolean p2, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->val$onError:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->val$onError:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iget-object v0, v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iget-object v0, v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->stopRecord()V

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$102(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;Z)Z

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->val$onError:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->onRecordFailed()V

    :goto_0
    invoke-static {}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$200()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->onRecordFinished()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
