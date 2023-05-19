.class public Lcom/shanlitech/et/hal/Hal;
.super Ljava/lang/Object;
.source "Hal.java"


# static fields
.field public static FEATURE_AUDIO_LOW_LATENCY:Z = false

.field public static OUTPUT_FRAMES_PER_BUFFER:I = 0x0

.field public static OUTPUT_SAMPLE_RATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Hal"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static detectDevice(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result p0

    sput p0, Lcom/shanlitech/et/hal/Hal;->OUTPUT_SAMPLE_RATE:I

    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 2
    invoke-static {p0, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    div-int/2addr p0, v0

    sput p0, Lcom/shanlitech/et/hal/Hal;->OUTPUT_FRAMES_PER_BUFFER:I

    .line 3
    sget-object p0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.audio.low_latency"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/shanlitech/et/hal/Hal;->FEATURE_AUDIO_LOW_LATENCY:Z

    .line 6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p0, v0, :cond_1

    .line 7
    sget-object p0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const-string v0, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 8
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shanlitech/et/hal/Hal;->OUTPUT_SAMPLE_RATE:I

    :cond_0
    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 10
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/shanlitech/et/hal/Hal;->OUTPUT_FRAMES_PER_BUFFER:I

    :cond_1
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    .line 3
    :cond_0
    sget-object v0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/shanlitech/et/hal/Device;->getSettingNetworkType()I

    .line 3
    invoke-static {p1}, Lcom/shanlitech/et/hal/Hal;->detectDevice(I)V

    .line 4
    sget-object p0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/shanlitech/et/hal/Tone;->createInstance(Landroid/content/Context;)V

    .line 5
    sget-object p0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/shanlitech/et/hal/Tts;->createInstance(Landroid/content/Context;)V

    return-void
.end method

.method public static isChinese()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/Hal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setThreadPriority()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/16 v1, -0x13

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hal"

    invoke-static {v1, v0}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
