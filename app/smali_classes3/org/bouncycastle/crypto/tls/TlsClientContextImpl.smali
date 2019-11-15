.class Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsClientContext;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    return-void
.end method


# virtual methods
.method public isServer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
