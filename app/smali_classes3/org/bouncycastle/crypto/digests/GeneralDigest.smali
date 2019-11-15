.class public abstract Lorg/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final BYTE_LENGTH:I = 0x40


# instance fields
.field private byteCount:J

.field private final xBuf:[B

.field private xBufOff:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    return-void
.end method


# virtual methods
.method protected copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    return-void
.end method

.method public finish()V
    .locals 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    return-void
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method protected populateState([B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    return-void
.end method

.method public update([BII)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v1, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    aput-byte v2, v4, v5

    iget v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    iput v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    move v0, v1

    :cond_0
    :goto_1
    sub-int v1, v3, v0

    and-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v0

    :goto_2
    if-ge v0, v1, :cond_1

    add-int v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_1
    :goto_3
    if-ge v0, v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v2, v4

    move v0, v1

    goto :goto_3

    :cond_2
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    int-to-long v2, v3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
