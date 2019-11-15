.class public interface abstract Lorg/bouncycastle/crypto/Signer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract generateSignature()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract init(ZLorg/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract reset()V
.end method

.method public abstract update(B)V
.end method

.method public abstract update([BII)V
.end method

.method public abstract verifySignature([B)Z
.end method
