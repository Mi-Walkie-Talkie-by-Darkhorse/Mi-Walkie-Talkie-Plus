.class public interface abstract Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getInputBlockSize()I
.end method

.method public abstract getOutputBlockSize()I
.end method

.method public abstract init(ZLorg/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract processBlock([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
