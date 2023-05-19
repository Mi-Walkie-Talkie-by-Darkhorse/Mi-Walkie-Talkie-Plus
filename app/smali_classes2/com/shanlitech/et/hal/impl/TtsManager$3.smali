.class Lcom/shanlitech/et/hal/impl/TtsManager$3;
.super Ljava/lang/Object;
.source "TtsManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


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
    iput-object p1, p0, Lcom/shanlitech/et/hal/impl/TtsManager$3;->this$0:Lcom/shanlitech/et/hal/impl/TtsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/hal/impl/TtsManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS onUtteranceCompleted\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shanlitech/et/hal/impl/TtsManager$3;->this$0:Lcom/shanlitech/et/hal/impl/TtsManager;

    invoke-virtual {p1}, Lcom/shanlitech/et/hal/impl/TtsManager;->notityTtsFinish()V

    return-void
.end method
