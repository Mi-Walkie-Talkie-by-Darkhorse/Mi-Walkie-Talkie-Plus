.class public Lcom/just/agentweb/IndicatorHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/just/agentweb/IndicatorController;


# instance fields
.field private mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/just/agentweb/IndicatorHandler;
    .locals 1

    new-instance v0, Lcom/just/agentweb/IndicatorHandler;

    invoke-direct {v0}, Lcom/just/agentweb/IndicatorHandler;-><init>()V

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/IndicatorHandler;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/just/agentweb/BaseIndicatorSpec;->hide()V

    :cond_0
    return-void
.end method

.method inJectIndicator(Lcom/just/agentweb/BaseIndicatorSpec;)Lcom/just/agentweb/IndicatorHandler;
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/IndicatorHandler;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    return-object p0
.end method

.method public offerIndicator()Lcom/just/agentweb/BaseIndicatorSpec;
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/IndicatorHandler;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    return-object v0
.end method

.method public progress(Landroid/webkit/WebView;I)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/IndicatorHandler;->reset()V

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    if-lez p2, :cond_1

    if-gt p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/just/agentweb/IndicatorHandler;->showIndicator()V

    goto :goto_0

    :cond_1
    if-le p2, p1, :cond_2

    const/16 p1, 0x5f

    if-ge p2, p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/just/agentweb/IndicatorHandler;->setProgress(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/just/agentweb/IndicatorHandler;->setProgress(I)V

    invoke-virtual {p0}, Lcom/just/agentweb/IndicatorHandler;->finish()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/IndicatorHandler;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/just/agentweb/BaseIndicatorSpec;->reset()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/IndicatorHandler;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/just/agentweb/BaseIndicatorSpec;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public showIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/IndicatorHandler;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/just/agentweb/BaseIndicatorSpec;->show()V

    :cond_0
    return-void
.end method
