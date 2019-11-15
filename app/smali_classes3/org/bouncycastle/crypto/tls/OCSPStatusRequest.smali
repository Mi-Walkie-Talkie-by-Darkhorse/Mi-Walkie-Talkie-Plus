.class public Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;
.super Ljava/lang/Object;


# instance fields
.field protected requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field protected responderIDList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v2, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;-><init>(Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object v2
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_3

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_1
    return-void

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    const-string v4, "DER"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    array-length v1, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public getRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getResponderIDList()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    return-object v0
.end method
