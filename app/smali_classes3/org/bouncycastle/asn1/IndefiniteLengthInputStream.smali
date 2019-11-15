.class Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lorg/bouncycastle/asn1/LimitedInputStream;


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iget v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    return-void
.end method

.method private checkForEof()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    return v0
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iget v2, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iput v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ge p3, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iget v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v1, :cond_4

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method setEofOn00(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    invoke-direct {p0}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    return-void
.end method
