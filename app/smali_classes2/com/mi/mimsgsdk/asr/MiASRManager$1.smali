.class Lcom/mi/mimsgsdk/asr/MiASRManager$1;
.super Ljava/lang/Object;
.source "MiASRManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/asr/MiASRManager;-><init>(Landroid/content/Context;Lcom/mi/mimsgsdk/asr/MiASRListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

.field final synthetic val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/asr/MiASRManager;Lcom/mi/mimsgsdk/asr/MiASRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    iput-object p2, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onBeginOfSpeech()V

    :cond_0
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mi/mimsgsdk/asr/BytesWrapper;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/asr/BytesWrapper;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/asr/BytesWrapper;->setBytes([B)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onBufferReceived(Lcom/mi/mimsgsdk/asr/BytesWrapper;)V

    :cond_0
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onPartialResults(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "nbest"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "hid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$100(Lcom/mi/mimsgsdk/asr/MiASRManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    const/16 v3, 0x3e80

    invoke-static {v3}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->getFrameSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$202(Lcom/mi/mimsgsdk/asr/MiASRManager;I)I

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    div-long/2addr v2, v4

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$300(Lcom/mi/mimsgsdk/asr/MiASRManager;)V

    new-instance v1, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;

    iget-object v4, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-direct {v1, v4, v0}, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;-><init>(Lcom/mi/mimsgsdk/asr/MiASRManager;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->start()V

    const-string v0, ".spx"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;

    iget-object v4, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;-><init>(Lcom/mi/mimsgsdk/asr/MiASRManager;Ljava/lang/String;J)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onResults(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "convert operation is running!"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pcm file not exist! path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onRmsChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;->val$listener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onRmsChanged(F)V

    :cond_0
    return-void
.end method
