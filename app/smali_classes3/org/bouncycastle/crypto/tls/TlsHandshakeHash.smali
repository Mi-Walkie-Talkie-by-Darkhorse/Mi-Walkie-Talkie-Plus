.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# virtual methods
.method public abstract forkPRFHash()Lorg/bouncycastle/crypto/Digest;
.end method

.method public abstract getFinalHash(S)[B
.end method

.method public abstract init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
.end method

.method public abstract notifyPRFDetermined()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
.end method

.method public abstract sealHashAlgorithms()V
.end method

.method public abstract stopTracking()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
.end method

.method public abstract trackHashAlgorithm(S)V
.end method
