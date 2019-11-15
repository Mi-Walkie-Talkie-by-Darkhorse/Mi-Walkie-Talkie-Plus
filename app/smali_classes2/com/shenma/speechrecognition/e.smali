.class public Lcom/shenma/speechrecognition/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/speech/SpeechRecognizer;

.field private b:Lcom/shenma/speechrecognition/l;

.field private c:Lcom/shenma/speechrecognition/v;

.field private d:Z

.field private e:Lcom/shenma/speechrecognition/ad;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shenma/speechrecognition/l;

    invoke-direct {v0}, Lcom/shenma/speechrecognition/l;-><init>()V

    iput-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    new-instance v0, Lcom/shenma/speechrecognition/v;

    invoke-direct {v0}, Lcom/shenma/speechrecognition/v;-><init>()V

    iput-object v0, p0, Lcom/shenma/speechrecognition/e;->c:Lcom/shenma/speechrecognition/v;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shenma/speechrecognition/l;

    invoke-direct {v0}, Lcom/shenma/speechrecognition/l;-><init>()V

    iput-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    new-instance v0, Lcom/shenma/speechrecognition/v;

    invoke-direct {v0}, Lcom/shenma/speechrecognition/v;-><init>()V

    iput-object v0, p0, Lcom/shenma/speechrecognition/e;->c:Lcom/shenma/speechrecognition/v;

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0, p2}, Lcom/shenma/speechrecognition/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0, p3}, Lcom/shenma/speechrecognition/l;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/shenma/speechrecognition/ShenmaRecognitionService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/e;->a:Landroid/speech/SpeechRecognizer;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/shenma/speechrecognition/e;
    .locals 1

    new-instance v0, Lcom/shenma/speechrecognition/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/shenma/speechrecognition/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "startListening get called"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->e:Lcom/shenma/speechrecognition/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->e:Lcom/shenma/speechrecognition/ad;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/ad;->a()V

    :cond_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/l;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/e;->d:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Config"

    iget-object v2, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "Property"

    iget-object v2, p0, Lcom/shenma/speechrecognition/e;->c:Lcom/shenma/speechrecognition/v;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/speechrecognition/e;->a:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/speech/RecognitionListener;)V
    .locals 2

    const-string v0, "setRecognitionListener get called with listener"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/shenma/speechrecognition/ad;

    invoke-direct {v0, p1}, Lcom/shenma/speechrecognition/ad;-><init>(Landroid/speech/RecognitionListener;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/e;->e:Lcom/shenma/speechrecognition/ad;

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->a:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/shenma/speechrecognition/e;->e:Lcom/shenma/speechrecognition/ad;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "savePath:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0, p1}, Lcom/shenma/speechrecognition/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "realTimeOutput:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0, p1}, Lcom/shenma/speechrecognition/l;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "stopListening get called"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->a:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    return-void
.end method

.method public b(Z)V
    .locals 4

    const-string v0, "setVad open:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/shenma/speechrecognition/e;->d:Z

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0, p1}, Lcom/shenma/speechrecognition/l;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "cancel get called"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->a:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0, p1}, Lcom/shenma/speechrecognition/l;->c(Z)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "destroy get called"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/e;->a:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    return-void
.end method
