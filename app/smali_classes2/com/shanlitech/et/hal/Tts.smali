.class public Lcom/shanlitech/et/hal/Tts;
.super Ljava/lang/Object;
.source "Tts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/hal/Tts$OnTtsInitSuccessListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDK_TTS"

.field private static mContext:Landroid/content/Context; = null

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

.field private static ttsManager:Lcom/shanlitech/et/hal/impl/TtsManager; = null

.field private static ttsStatusPref:Landroid/content/SharedPreferences; = null

.field private static tts_init_ok:Z = false


# instance fields
.field private myCallback:Lcom/shanlitech/et/hal/Tts$OnTtsInitSuccessListener;


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

.method public static createInstance(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/shanlitech/et/hal/Tts;->mContext:Landroid/content/Context;

    const-string v0, "ttsstatus"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/shanlitech/et/hal/Tts;->ttsStatusPref:Landroid/content/SharedPreferences;

    const-string v0, "ttsStatus"

    const/4 v1, 0x1

    .line 3
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 4
    invoke-static {p0}, Lcom/shanlitech/et/hal/impl/TtsManager;->setIsTtsOn(Z)V

    .line 5
    new-instance p0, Lcom/shanlitech/et/hal/Tts$1;

    invoke-direct {p0}, Lcom/shanlitech/et/hal/Tts$1;-><init>()V

    sput-object p0, Lcom/shanlitech/et/hal/Tts;->ttsManager:Lcom/shanlitech/et/hal/impl/TtsManager;

    if-eqz p0, :cond_0

    .line 6
    sget-object v0, Lcom/shanlitech/et/hal/Tts;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/hal/impl/TtsManager;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static destroyInstance()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/Tts;->ttsManager:Lcom/shanlitech/et/hal/impl/TtsManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/hal/impl/TtsManager;->unInit()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/shanlitech/et/hal/Tts;->ttsManager:Lcom/shanlitech/et/hal/impl/TtsManager;

    :cond_0
    return-void
.end method

.method public static getTtsManager()Lcom/shanlitech/et/hal/impl/TtsManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/Tts;->ttsManager:Lcom/shanlitech/et/hal/impl/TtsManager;

    return-object v0
.end method

.method public static isTtsOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/hal/impl/TtsManager;->isTtsOn()Z

    move-result v0

    return v0
.end method

.method public static final native notityTtsFinish()V
.end method

.method public static playTts(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/shanlitech/et/hal/Tts;->playTts(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static playTts(Ljava/lang/String;I)I
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK_TTS"

    invoke-static {v1, v0}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/shanlitech/et/hal/Tts;->ttsManager:Lcom/shanlitech/et/hal/impl/TtsManager;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/hal/impl/TtsManager;->playTTS(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static setIsTtsOn(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/hal/Tts;->isTtsOn()Z

    move-result v0

    if-ne v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/shanlitech/et/hal/impl/TtsManager;->setIsTtsOn(Z)V

    .line 3
    sget-object v0, Lcom/shanlitech/et/hal/Tts;->ttsStatusPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ttsStatus"

    .line 5
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public static setTtsManager(Lcom/shanlitech/et/hal/impl/TtsManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/shanlitech/et/hal/Tts;->ttsManager:Lcom/shanlitech/et/hal/impl/TtsManager;

    return-void
.end method

.method public static stopTts()I
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/Tts;->ttsManager:Lcom/shanlitech/et/hal/impl/TtsManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/hal/impl/TtsManager;->stopTTS()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
