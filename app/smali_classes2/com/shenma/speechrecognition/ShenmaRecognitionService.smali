.class public Lcom/shenma/speechrecognition/ShenmaRecognitionService;
.super Landroid/speech/RecognitionService;


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Landroid/speech/RecognitionService$Callback;

.field private c:Lcom/shenma/speechrecognition/g;

.field private d:Lcom/shenma/speechrecognition/k;

.field private e:Lcom/shenma/speechrecognition/ae;

.field private f:Lcom/shenma/speechrecognition/l;

.field private g:Lcom/shenma/speechrecognition/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/speech/RecognitionService;-><init>()V

    sget-object v0, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    return-void
.end method

.method static synthetic a(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Landroid/speech/RecognitionService$Callback;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->b:Landroid/speech/RecognitionService$Callback;

    return-object v0
.end method

.method private a()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "so path[%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/shenma/speechrecognition/c;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/shenma/speechrecognition/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/shenma/speechrecognition/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "ShenmaSpeech3"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/speechrecognition/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ShenmaSpeech"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "so load failed[%s]."

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/shenma/speechrecognition/c;->a:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "so load failed[%s]. "

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/shenma/speechrecognition/c;->a:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method protected onCancel(Landroid/speech/RecognitionService$Callback;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before cancel UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State:%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    invoke-virtual {v2}, Lcom/shenma/speechrecognition/g;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->d:Lcom/shenma/speechrecognition/k;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    goto :goto_0

    :cond_1
    const-string v0, "Calcel the recorder failed."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/speech/RecognitionService;->onCreate()V

    const-string v0, "onCreate recognition service"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/shenma/speechrecognition/ae;

    invoke-direct {v0, p0}, Lcom/shenma/speechrecognition/ae;-><init>(Lcom/shenma/speechrecognition/ShenmaRecognitionService;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->e:Lcom/shenma/speechrecognition/ae;

    new-instance v0, Lcom/shenma/speechrecognition/k;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->e:Lcom/shenma/speechrecognition/ae;

    invoke-direct {v0, v1}, Lcom/shenma/speechrecognition/k;-><init>(Lcom/shenma/speechrecognition/ae;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->d:Lcom/shenma/speechrecognition/k;

    invoke-static {}, Lcom/shenma/speechrecognition/af;->a()Lcom/shenma/speechrecognition/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shenma/speechrecognition/af;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "load lib error!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    invoke-super {p0}, Landroid/speech/RecognitionService;->onDestroy()V

    return-void
.end method

.method protected onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->b:Landroid/speech/RecognitionService$Callback;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startListening UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State:%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    invoke-virtual {v2}, Lcom/shenma/speechrecognition/g;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->d:Lcom/shenma/speechrecognition/k;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "init audio recorder error!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_1

    const-string v0, "uninitialized."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1, v5}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_2

    const-string v0, "audio recorder busy!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/shenma/speechrecognition/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "network not connected!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startListening UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;Landroid/os/Bundle;)V

    const-string v0, "Config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/shenma/speechrecognition/l;

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->f:Lcom/shenma/speechrecognition/l;

    const-string v0, "Property"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/shenma/speechrecognition/v;

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->g:Lcom/shenma/speechrecognition/v;

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->g:Lcom/shenma/speechrecognition/v;

    invoke-static {}, Lcom/shenma/speechrecognition/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/v;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->g:Lcom/shenma/speechrecognition/v;

    invoke-virtual {p0}, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/speechrecognition/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->d:Lcom/shenma/speechrecognition/k;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    iget-object v2, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->f:Lcom/shenma/speechrecognition/l;

    iget-object v3, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->g:Lcom/shenma/speechrecognition/v;

    invoke-virtual {v0, v1, v2, v3}, Lcom/shenma/speechrecognition/k;->a(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    goto/16 :goto_0

    :cond_4
    const-string v0, "audio recorder startup error!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1, v5}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    goto/16 :goto_0
.end method

.method protected onStopListening(Landroid/speech/RecognitionService$Callback;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/shenma/speechrecognition/aa;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/shenma/speechrecognition/aa;->a()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before stopListening UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State:%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    invoke-virtual {v2}, Lcom/shenma/speechrecognition/g;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->d:Lcom/shenma/speechrecognition/k;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/k;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After stopListening UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State:%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shenma/speechrecognition/ShenmaRecognitionService;->c:Lcom/shenma/speechrecognition/g;

    invoke-virtual {v2}, Lcom/shenma/speechrecognition/g;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "Stop the recorder failed."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
