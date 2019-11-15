.class public interface abstract Lorg/bouncycastle/crypto/DerivationFunction;
.super Ljava/lang/Object;


# virtual methods
.method public abstract generateBytes([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract init(Lorg/bouncycastle/crypto/DerivationParameters;)V
.end method
