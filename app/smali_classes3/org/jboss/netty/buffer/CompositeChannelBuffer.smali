.class public Lorg/jboss/netty/buffer/CompositeChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "CompositeChannelBuffer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private components:[Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final gathering:Z

.field private indices:[I

.field private lastAccessedComponentId:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    iput-boolean p3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setComponents(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/CompositeChannelBuffer;)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    iput-boolean v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0}, [Lorg/jboss/netty/buffer/ChannelBuffer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    return-void
.end method

.method private componentId(I)I
    .locals 3

    iget v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ge p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ge p1, v1, :cond_1

    iput v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_3

    iput v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyTo(IIILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, p3

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, p3

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p4, v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    add-int/2addr p1, v3

    add-int/2addr v0, v3

    sub-int/2addr p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    invoke-interface {p4, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    return-void
.end method

.method private setComponents(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    if-eq v3, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All buffers must have the same endianness."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-boolean v3, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v3, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    if-eq v3, v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aput v2, v0, v2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v1, v1

    if-gt v0, v1, :cond_5

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public capacity()I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p2

    if-le p1, v1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to copy - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->copyTo(IIILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v1
.end method

.method public decompose(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to decompose - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", capacity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, v1

    sub-int v3, p1, v3

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    if-gt p2, v3, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    if-gtz p2, :cond_2

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public discardReadBytes()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v4

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->resetReaderIndex()V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->resetWriterIndex()V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_2
    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setComponents(Ljava/util/List;)V

    sub-int v0, v1, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, v3, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->markReaderIndex()V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->markWriterIndex()V

    sub-int v0, v4, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v3

    move v3, v4

    goto :goto_2
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    new-instance v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;-><init>(Lorg/jboss/netty/buffer/CompositeChannelBuffer;)V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Bytes needed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getByte(I)B
    .locals 3

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->useGathering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read - needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    :goto_0
    if-lez p3, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    add-int/2addr p1, v3

    sub-int/2addr p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    sub-int/2addr v3, v1

    if-le p1, v3, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to be read - Needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/2addr v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lez v1, :cond_2

    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v4, v4, v0

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v4

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int v4, p1, v4

    invoke-interface {v3, v4, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v5

    sub-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    :cond_2
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 5

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBytes(I[BII)V
    .locals 5

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to read - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 5

    const v4, 0xffff

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v0

    and-int/2addr v0, v4

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 7

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    shl-long/2addr v0, v6

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 4

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public getUnsignedMedium(I)I
    .locals 5

    const v4, 0xffff

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v0

    and-int/2addr v0, v4

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public numComponents()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v0, v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setByte(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to write - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, v1

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, p1, v3

    sub-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v3, p1, v3

    invoke-interface {v2, v3, p2, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v2

    if-gez v2, :cond_3

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-ne v2, v4, :cond_4

    add-int/2addr p1, v4

    sub-int/2addr p3, v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-gtz p3, :cond_1

    goto :goto_0

    :cond_4
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to write - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, v1

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, p1, v3

    sub-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v3, p1, v3

    invoke-interface {v2, v3, p2, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-gez v2, :cond_4

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-ne v2, v4, :cond_5

    add-int/2addr p1, v4

    sub-int/2addr p3, v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-gtz p3, :cond_1

    goto :goto_0

    :cond_5
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    sub-int/2addr v3, v1

    if-le p1, v3, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to be written - Needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/2addr v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v4, v4, v0

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v4

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int v4, p1, v4

    invoke-interface {v3, v4, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v5

    sub-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    :cond_1
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be written - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lez p4, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setBytes(I[BII)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to read - needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lez p4, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setInt(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x10

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    add-int/lit8 v0, p1, 0x2

    int-to-short v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    goto :goto_0
.end method

.method public setLong(IJ)V
    .locals 6

    const/16 v4, 0x20

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setLong(IJ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-long v0, p2, v4

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    add-int/lit8 v0, p1, 0x4

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    goto :goto_0

    :cond_1
    long-to-int v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    add-int/lit8 v0, p1, 0x4

    ushr-long v2, p2, v4

    long-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    goto :goto_0
.end method

.method public setMedium(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setMedium(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    shr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    add-int/lit8 v0, p1, 0x2

    int-to-byte v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_0
.end method

.method public setShort(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v2, v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_0

    :cond_1
    int-to-byte v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_0
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    if-nez p1, :cond_0

    if-nez p2, :cond_3

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p2

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Bytes needed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    invoke-direct {v0, v2, v1, v3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 6

    add-int v0, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to convert - Needs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    :goto_1
    if-lez p2, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, v0

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, p1, v3

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v3, p1, v3

    invoke-interface {v2, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v4

    sub-int/2addr p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", components="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useGathering()Z
    .locals 2

    iget-boolean v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
