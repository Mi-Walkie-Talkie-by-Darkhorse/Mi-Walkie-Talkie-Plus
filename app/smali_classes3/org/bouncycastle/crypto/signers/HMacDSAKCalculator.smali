.class public Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private final K:[B

.field private final V:[B

.field private final hMac:Lorg/bouncycastle/crypto/macs/HMac;

.field private n:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    return-void
.end method

.method private bitsToInt([B)Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v1, v2, :cond_0

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-static {v0, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    invoke-static {p2}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v3, v2

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v5, v4}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v3, v1

    invoke-virtual {v0, v1, v5, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v3, v2

    invoke-virtual {v0, v2, v5, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v0, v3, v5}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v5, v4}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v0, v3, v5}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v5, v4}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v3, v1

    invoke-virtual {v0, v1, v5, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v1, v2

    invoke-virtual {v0, v2, v5, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-void
.end method

.method public init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextK()Ljava/math/BigInteger;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    :goto_0
    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v1, v5}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    array-length v3, v2

    sub-int/2addr v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-static {v4, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v1, v4}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v1, v4}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    goto :goto_0
.end method
