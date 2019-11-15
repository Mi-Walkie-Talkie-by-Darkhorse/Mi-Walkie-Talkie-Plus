.class public Lorg/bouncycastle/crypto/tls/CertificateRequest;
.super Ljava/lang/Object;


# instance fields
.field protected certificateAuthorities:Ljava/util/Vector;

.field protected certificateTypes:[S

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method public constructor <init>([SLjava/util/Vector;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    return-void
.end method

.method public static parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    new-array v3, v2, [S

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-direct {v2, v3, v0, v1}, Lorg/bouncycastle/crypto/tls/CertificateRequest;-><init>([SLjava/util/Vector;Ljava/util/Vector;)V

    return-object v2
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    array-length v0, v0

    if-nez v0, :cond_4

    :cond_0
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/util/Vector;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x500/X500Name;

    const-string v5, "DER"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getCertificateAuthorities()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    return-object v0
.end method

.method public getCertificateTypes()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    return-object v0
.end method

.method public getSupportedSignatureAlgorithms()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    return-object v0
.end method
