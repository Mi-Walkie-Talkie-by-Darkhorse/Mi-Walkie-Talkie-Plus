.class public Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictor;
.super Ljava/lang/Object;
.source "FixedReceiveBufferSizePredictor.java"

# interfaces
.implements Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;


# instance fields
.field private final bufferSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSize must greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictor;->bufferSize:I

    return-void
.end method


# virtual methods
.method public nextReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictor;->bufferSize:I

    return v0
.end method

.method public previousReceiveBufferSize(I)V
    .locals 0

    return-void
.end method
