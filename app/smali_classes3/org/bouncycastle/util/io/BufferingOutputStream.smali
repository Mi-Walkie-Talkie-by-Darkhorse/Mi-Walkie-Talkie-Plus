.class public Lorg/bouncycastle/util/io/BufferingOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private final buf:[B

.field private bufOff:I

.field private final other:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/util/io/BufferingOutputStream;->flush()V

    iget-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    iget v2, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    iget-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/util/io/BufferingOutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    iget v2, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/util/io/BufferingOutputStream;->flush()V

    add-int v1, p2, v0

    sub-int v0, p3, v0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v2, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v2, v2

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_2
    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->buf:[B

    iget v3, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/util/io/BufferingOutputStream;->bufOff:I

    goto :goto_0
.end method
