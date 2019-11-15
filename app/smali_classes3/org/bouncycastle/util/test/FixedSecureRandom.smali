.class public Lorg/bouncycastle/util/test/FixedSecureRandom;
.super Ljava/security/SecureRandom;


# instance fields
.field private _data:[B

.field private _index:I

.field private _intPad:I


# direct methods
.method public constructor <init>(Z[B)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method public constructor <init>(Z[[B)V
    .locals 3

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-eq v0, v2, :cond_0

    :try_start_0
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t save value array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_intPad:I

    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [[B

    aput-object p1, v0, v1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method public constructor <init>([[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method private nextValue()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public isExhausted()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    iget-object v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    return-void
.end method

.method public nextInt()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_intPad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_intPad:I

    :goto_0
    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_intPad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_intPad:I

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method public nextLong()J
    .locals 5

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
