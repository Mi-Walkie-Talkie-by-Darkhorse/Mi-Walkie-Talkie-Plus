.class public Lorg/bouncycastle/crypto/tls/CertificateURL;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/CertificateURL$ListBuffer16;
    }
.end annotation


# instance fields
.field protected type:S

.field protected urlAndHashList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(SLjava/util/Vector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/CertChainType;->isValid(S)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'type\' is not a valid CertChainType value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'urlAndHashList\' must have length > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/CertificateURL;->type:S

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    return-void
.end method

.method public static parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateURL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x32

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CertChainType;->isValid(S)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {p0, v2}, Lorg/bouncycastle/crypto/tls/URLAndHash;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/URLAndHash;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/tls/CertificateURL;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/tls/CertificateURL;-><init>(SLjava/util/Vector;)V

    return-object v2
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/CertificateURL;->type:S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    new-instance v2, Lorg/bouncycastle/crypto/tls/CertificateURL$ListBuffer16;

    invoke-direct {v2, p0}, Lorg/bouncycastle/crypto/tls/CertificateURL$ListBuffer16;-><init>(Lorg/bouncycastle/crypto/tls/CertificateURL;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/URLAndHash;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/URLAndHash;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lorg/bouncycastle/crypto/tls/CertificateURL$ListBuffer16;->encodeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public getType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/CertificateURL;->type:S

    return v0
.end method

.method public getURLAndHashList()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    return-object v0
.end method
