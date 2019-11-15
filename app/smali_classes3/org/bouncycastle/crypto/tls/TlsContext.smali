.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsContext;
.super Ljava/lang/Object;


# virtual methods
.method public abstract exportKeyingMaterial(Ljava/lang/String;[BI)[B
.end method

.method public abstract getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
.end method

.method public abstract getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;
.end method

.method public abstract getResumableSession()Lorg/bouncycastle/crypto/tls/TlsSession;
.end method

.method public abstract getSecureRandom()Ljava/security/SecureRandom;
.end method

.method public abstract getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;
.end method

.method public abstract getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
.end method

.method public abstract getUserObject()Ljava/lang/Object;
.end method

.method public abstract isServer()Z
.end method

.method public abstract setUserObject(Ljava/lang/Object;)V
.end method
