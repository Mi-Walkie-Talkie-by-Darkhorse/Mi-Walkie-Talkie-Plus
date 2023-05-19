.class public abstract Lcom/shanlitech/et/hal/impl/TtsManager;
.super Ljava/lang/Object;
.source "TtsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TtsManager"

.field public static mTts:Landroid/speech/tts/TextToSpeech; = null

.field private static params:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsTtsOn:Z = false

.field public static ttsWelcome:Z = false


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field public isTTSOK:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shanlitech/et/hal/impl/TtsManager;->isTTSOK:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static isTtsOn()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/hal/impl/TtsManager;->sIsTtsOn:Z

    return v0
.end method

.method public static setIsTtsOn(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts is on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-boolean p0, Lcom/shanlitech/et/hal/impl/TtsManager;->sIsTtsOn:Z

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->TAG:Ljava/lang/String;

    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316tts"

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/hal/impl/TtsManager;->mContext:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/shanlitech/et/hal/impl/TtsManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/shanlitech/et/hal/impl/TtsManager;->audioManager:Landroid/media/AudioManager;

    .line 5
    :cond_0
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/shanlitech/et/hal/impl/TtsManager$1;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/hal/impl/TtsManager$1;-><init>(Lcom/shanlitech/et/hal/impl/TtsManager;)V

    const-string v2, "com.iflytek.speechcloud"

    invoke-direct {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    sput-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 7
    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-lt p1, v0, :cond_2

    .line 9
    sget-object p1, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/shanlitech/et/hal/impl/TtsManager$2;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/hal/impl/TtsManager$2;-><init>(Lcom/shanlitech/et/hal/impl/TtsManager;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/shanlitech/et/hal/impl/TtsManager$3;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/hal/impl/TtsManager$3;-><init>(Lcom/shanlitech/et/hal/impl/TtsManager;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    :goto_0
    return-void
.end method

.method public final notityTtsFinish()V
    .locals 0

    return-void
.end method

.method public playTTS(Ljava/lang/String;I)I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/hal/impl/TtsManager;->sIsTtsOn:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlay tts msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/shanlitech/et/hal/impl/TtsManager;->params:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/shanlitech/et/hal/impl/TtsManager;->params:Ljava/util/HashMap;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 6
    :goto_0
    sget-object v2, Lcom/shanlitech/et/hal/impl/TtsManager;->params:Ljava/util/HashMap;

    const-string v3, "utteranceId"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/shanlitech/et/hal/impl/TtsManager;->params:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "streamType"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/shanlitech/et/hal/impl/TtsManager;->params:Ljava/util/HashMap;

    const-string v4, "volume"

    const-string v5, "0.2"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/shanlitech/et/hal/impl/TtsManager;->audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_2

    .line 10
    invoke-static {}, Lcom/shanlitech/et/hal/Hal;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/shanlitech/et/hal/impl/TtsManager;->audioManager:Landroid/media/AudioManager;

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/shanlitech/et/hal/impl/TtsManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_4

    const-string v2, "\u9759\u97f3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 12
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u672c\u5730\u5e7f\u64ad\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6

    .line 13
    :try_start_0
    sget-object v2, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Lcom/shanlitech/et/hal/impl/TtsManager;->params:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "playTts success"

    .line 14
    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "playTts error"

    .line 15
    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v3

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return v1
.end method

.method public stopTTS()I
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->TAG:Ljava/lang/String;

    const-string v1, "stop startPlay tts msg "

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unInit()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 3
    sget-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/shanlitech/et/hal/impl/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method
