.class Lcom/shenma/speechrecognition/ae;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;


# direct methods
.method constructor <init>(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Ljava/util/UUID;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUUID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v3}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->b(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v2}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->b(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v2}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->b(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "callback received on an obsolete request."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/util/UUID;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onBeginningOfSpeech get called."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/RecognitionService$Callback;->beginningOfSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onBeginningOfSpeech exception."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/UUID;F)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onRmsChanged get called."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/speech/RecognitionService$Callback;->rmsChanged(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onRmsChanged exception."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/UUID;I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "onError get called error:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/speech/RecognitionService$Callback;->error(I)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v1}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "OnError exception."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onReadyForSpeech get called."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/speech/RecognitionService$Callback;->readyForSpeech(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onReadyForSpeech exception."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/UUID;[B)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onBufferReceived get called"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/speech/RecognitionService$Callback;->bufferReceived([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onBufferReceived exception."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/util/UUID;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onEndOfSpeech get called."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/RecognitionService$Callback;->endOfSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onEndOfSpeech exception."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onResults get called."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/speech/RecognitionService$Callback;->results(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onResults exception."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(Ljava/util/UUID;)V
    .locals 2

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v1}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V

    goto :goto_0
.end method

.method public c(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onPartialResults get called."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "callback is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/speechrecognition/ae;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ae;->a:Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-static {v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/speech/RecognitionService$Callback;->partialResults(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onPartialResults exception."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
