.class public Lcom/shanlitech/et/hal/Tone;
.super Ljava/lang/Object;
.source "Tone.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tone.java"

.field private static sInstance:Lcom/shanlitech/et/hal/Tone;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/hal/Tone;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TOND>createInstance: "

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/hal/Tone;->logi(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shanlitech/et/hal/Tone;->sInstance:Lcom/shanlitech/et/hal/Tone;

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lcom/shanlitech/et/hal/Tone;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/hal/Tone;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/shanlitech/et/hal/Tone;->sInstance:Lcom/shanlitech/et/hal/Tone;

    .line 4
    invoke-virtual {v0}, Lcom/shanlitech/et/hal/Tone;->open()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/shanlitech/et/hal/Tone;->sInstance:Lcom/shanlitech/et/hal/Tone;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TONE>createInstance: ERROR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/hal/Tone;->logi(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static destroyInstance()V
    .locals 1

    const-string v0, "TONE>destroyInstance: "

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/hal/Tone;->logi(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shanlitech/et/hal/Tone;->sInstance:Lcom/shanlitech/et/hal/Tone;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/hal/Tone;->close()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/shanlitech/et/hal/Tone;->sInstance:Lcom/shanlitech/et/hal/Tone;

    :cond_0
    return-void
.end method

.method private static getInstance()Lcom/shanlitech/et/hal/Tone;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/Tone;->sInstance:Lcom/shanlitech/et/hal/Tone;

    return-object v0
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Tone.java"

    .line 1
    invoke-static {v0, p0}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static playTone(I)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOND>playTone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/hal/Tone;->logi(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/hal/Tone;->getInstance()Lcom/shanlitech/et/hal/Tone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/shanlitech/et/hal/Tone;->play(I)I

    move-result p0

    return p0

    .line 4
    :cond_0
    sget p0, Lcom/shanlitech/et/ETStatusCode;->a:I

    return p0
.end method

.method public static stopTone()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/hal/Tone;->getInstance()Lcom/shanlitech/et/hal/Tone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/hal/Tone;->stop()I

    move-result v0

    return v0

    .line 3
    :cond_0
    sget v0, Lcom/shanlitech/et/ETStatusCode;->a:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public open()V
    .locals 1

    const-string v0, "TONE>open: "

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/hal/Tone;->logi(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/hal/Tone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shanlitech/et/hal/impl/SoundResources;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public play(I)I
    .locals 1

    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/hal/impl/SoundResources;->play(I)V

    .line 2
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    return p1

    .line 3
    :cond_0
    sget p1, Lcom/shanlitech/et/ETStatusCode;->a:I

    return p1
.end method

.method public stop()I
    .locals 1

    const-string v0, "TONE>stop: "

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/hal/Tone;->logi(Ljava/lang/String;)V

    .line 2
    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    return v0
.end method
