.class Lcom/shanlitech/et/hal/impl/TtsManager$1;
.super Ljava/lang/Object;
.source "TtsManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/hal/impl/TtsManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shanlitech/et/hal/impl/TtsManager;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/hal/impl/TtsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/hal/impl/TtsManager$1;->this$0:Lcom/shanlitech/et/hal/impl/TtsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    sget-boolean p1, Lcom/shanlitech/et/hal/impl/TtsManager;->ttsWelcome:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    sput-boolean p1, Lcom/shanlitech/et/hal/impl/TtsManager;->ttsWelcome:Z

    :cond_1
    return-void
.end method
