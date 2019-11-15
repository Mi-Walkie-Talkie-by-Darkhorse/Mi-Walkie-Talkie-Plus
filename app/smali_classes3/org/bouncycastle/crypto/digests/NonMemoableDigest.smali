.class public Lorg/bouncycastle/crypto/digests/NonMemoableDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/ExtendedDigest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseDigest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/ExtendedDigest;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/ExtendedDigest;->update([BII)V

    return-void
.end method
