.class public Lorg/bouncycastle/crypto/tls/ServerDHParams;
.super Ljava/lang/Object;


# instance fields
.field protected publicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'publicKey\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerDHParams;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/tls/ServerDHParams;

    new-instance v4, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v5, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v5, v0, v1}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/crypto/tls/ServerDHParams;-><init>(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    return-object v3
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-object v0
.end method
