.class public Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;
.super Ljava/lang/Object;
.source "AdaptiveReceiveBufferSizePredictorFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;


# instance fields
.field private final initial:I

.field private final maximum:I

.field private final minimum:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x400

    const/high16 v2, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minimum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p2, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ge p3, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;->minimum:I

    iput p2, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;->initial:I

    iput p3, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;->maximum:I

    return-void
.end method


# virtual methods
.method public getPredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;->minimum:I

    iget v2, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;->initial:I

    iget v3, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;->maximum:I

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;-><init>(III)V

    return-object v0
.end method
