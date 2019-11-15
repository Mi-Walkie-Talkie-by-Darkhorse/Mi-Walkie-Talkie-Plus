.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCredentials;


# virtual methods
.method public abstract generateCertificateSignature([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSignatureAndHashAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;
.end method
