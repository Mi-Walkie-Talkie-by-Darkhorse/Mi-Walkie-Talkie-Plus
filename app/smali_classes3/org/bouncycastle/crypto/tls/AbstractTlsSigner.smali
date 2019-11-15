.class public abstract Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsSigner;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSigner(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;->createSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public createVerifyer(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;->createVerifyer(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public generateRawSignature(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;->generateRawSignature(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    return-void
.end method

.method public verifyRawSignature([BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;->verifyRawSignature(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z

    move-result v0

    return v0
.end method
