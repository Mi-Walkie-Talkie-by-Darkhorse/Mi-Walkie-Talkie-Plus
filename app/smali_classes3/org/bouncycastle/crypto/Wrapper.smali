.class public interface abstract Lorg/bouncycastle/crypto/Wrapper;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract init(ZLorg/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract unwrap([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract wrap([BII)[B
.end method
