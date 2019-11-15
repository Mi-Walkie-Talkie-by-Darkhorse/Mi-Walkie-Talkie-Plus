.class Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;
.super Landroid/os/AsyncTask;
.source "AbstractXMAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordInitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile isCancelled:Z

.field private isInitialized:Z

.field private final mQuality:I

.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isCancelled:Z

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isInitialized:Z

    iput p2, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->mQuality:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isInitialized:Z

    return v0
.end method


# virtual methods
.method public cancelExecution()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isCancelled:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->cancel(Z)Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isCancelled:Z

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iget v1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->mQuality:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->initMediaRecorder(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isCancelled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iget-object v0, v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iget-object v0, v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$300(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$300(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isInitialized:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isCancelled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$300(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "begin to record.."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->isInitialized:Z

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iget-object v0, v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->start()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->onRecordInitializationSucceed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->onRecordInitializationFailed()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$400(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$400(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->onRecordInitializationCancelled()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$300(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "the record is initialized although the task is cancelled."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iget-object v0, v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    iget-object v0, v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->this$0:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->access$300(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the record has been stopped. the task is status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
