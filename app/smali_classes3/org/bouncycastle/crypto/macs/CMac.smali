.class public Lorg/bouncycastle/crypto/macs/CMac;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private Lu:[B

.field private Lu2:[B

.field private ZEROES:[B

.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I

.field private poly:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC size must be less or equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->macSize:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/macs/CMac;->lookupPoly(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->poly:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    return-void
.end method

.method private doubleLu([B)[B
    .locals 6

    array-length v0, p1

    new-array v0, v0, [B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/macs/CMac;->shiftLeft([B[B)I

    move-result v1

    neg-int v1, v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    add-int/lit8 v2, v2, -0x3

    aget-byte v3, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CMac;->poly:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget-byte v3, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CMac;->poly:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CMac;->poly:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/2addr v1, v4

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private static lookupPoly(I)[B
    .locals 3

    const/16 v1, 0x87

    const/16 v0, 0x1b

    mul-int/lit8 v2, p0, 0x8

    sparse-switch v2, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown block size for CMAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, p0, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    move v0, v1

    :goto_0
    :sswitch_1
    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0

    return-object v0

    :sswitch_2
    const/16 v0, 0x2d

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x309

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x425

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x100d

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x851

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x125

    goto :goto_0

    :sswitch_9
    const v0, 0xa0011

    goto :goto_0

    :sswitch_a
    const v0, 0x80043

    goto :goto_0

    :sswitch_b
    const v0, 0x86001

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
        0xa0 -> :sswitch_2
        0xc0 -> :sswitch_3
        0xe0 -> :sswitch_4
        0x100 -> :sswitch_5
        0x140 -> :sswitch_1
        0x180 -> :sswitch_6
        0x1c0 -> :sswitch_7
        0x200 -> :sswitch_8
        0x300 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
    .end sparse-switch
.end method

.method private static shiftLeft([B[B)I
    .locals 4

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, v2, 0x7

    and-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    :goto_0
    move v1, v2

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    aget-byte v4, v3, v1

    aget-byte v5, v0, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;->addPadding([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu2:[B

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->macSize:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CMac;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->macSize:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/macs/CMac;->validate(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    invoke-interface {v1, v2, v3, v0, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu2:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CMac;->reset()V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 6

    const/4 v5, 0x0

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    sub-int v1, v0, v1

    if-le p3, v1, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v5, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-le p3, v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v1, p1, p2, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    return-void
.end method

.method validate(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CMac mode only permits key to be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
