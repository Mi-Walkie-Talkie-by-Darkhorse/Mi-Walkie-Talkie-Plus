.class Lcom/shenma/speechrecognition/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field private final a:Landroid/speech/RecognitionListener;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    :cond_0
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    :cond_0
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1, p2}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 4

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v1, 0x41c80000    # 25.0f

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/ad;->b:Z

    if-nez v0, :cond_1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    const/high16 v0, 0x42100000    # 36.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    float-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-float p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/ad;->a:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    :cond_1
    return-void

    :cond_2
    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_3

    float-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_0

    :cond_3
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_0
.end method
