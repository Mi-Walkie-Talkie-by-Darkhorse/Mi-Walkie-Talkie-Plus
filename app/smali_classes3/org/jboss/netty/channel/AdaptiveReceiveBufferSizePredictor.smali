.class public Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;
.super Ljava/lang/Object;
.source "AdaptiveReceiveBufferSizePredictor.java"

# interfaces
.implements Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;


# static fields
.field static final DEFAULT_INITIAL:I = 0x400

.field static final DEFAULT_MAXIMUM:I = 0x10000

.field static final DEFAULT_MINIMUM:I = 0x40

.field private static final INDEX_DECREMENT:I = 0x1

.field private static final INDEX_INCREMENT:I = 0x4

.field private static final SIZE_TABLE:[I


# instance fields
.field private decreaseNow:Z

.field private index:I

.field private final maxIndex:I

.field private final minIndex:I

.field private nextReceiveBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0x8

    const/4 v5, 0x4

    const/4 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_1
    const/16 v1, 0x20

    if-ge v4, v1, :cond_3

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v4

    ushr-long v8, v2, v5

    const/4 v1, 0x3

    shl-long v10, v8, v1

    sub-long/2addr v2, v10

    move v1, v0

    :goto_2
    if-ge v1, v12, :cond_2

    add-long/2addr v2, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v7, v2, v10

    if-lez v7, :cond_1

    const v7, 0x7fffffff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    long-to-int v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    move v1, v0

    :goto_4
    sget-object v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    sget-object v2, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x400

    const/high16 v2, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;-><init>(III)V

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
    invoke-static {p1}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->getSizeTableIndex(I)I

    move-result v0

    sget-object v1, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    aget v1, v1, v0

    if-ge v1, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->minIndex:I

    :goto_0
    invoke-static {p3}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->getSizeTableIndex(I)I

    move-result v0

    sget-object v1, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    aget v1, v1, v0

    if-le v1, p3, :cond_4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->maxIndex:I

    :goto_1
    invoke-static {p2}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->getSizeTableIndex(I)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    sget-object v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    aget v0, v0, v1

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    return-void

    :cond_3
    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->minIndex:I

    goto :goto_0

    :cond_4
    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->maxIndex:I

    goto :goto_1
.end method

.method private static getSizeTableIndex(I)I
    .locals 3

    const/16 v0, 0x10

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v0, p0

    :cond_2
    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_2

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, -0x12

    add-int/lit8 v1, v1, -0x19

    :goto_0
    if-lt v0, v1, :cond_3

    sget-object v2, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    aget v2, v2, v0

    if-ge p0, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "shouldn\'t reach here; please file a bug report."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public nextReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    return v0
.end method

.method public previousReceiveBufferSize(I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v0, v0, v1

    if-gt p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->decreaseNow:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->minIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    sget-object v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    aget v0, v0, v1

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    iput-boolean v2, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->decreaseNow:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->decreaseNow:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->maxIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    sget-object v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    aget v0, v0, v1

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    iput-boolean v2, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->decreaseNow:Z

    goto :goto_0
.end method
