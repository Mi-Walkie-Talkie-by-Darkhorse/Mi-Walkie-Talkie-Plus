.class public Lorg/bouncycastle/crypto/tls/Certificate;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;


# instance fields
.field protected certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/Certificate;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/Certificate;-><init>([Lorg/bouncycastle/asn1/x509/Certificate;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificateList\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [Lorg/bouncycastle/asn1/x509/Certificate;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x509/Certificate;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/Certificate;-><init>([Lorg/bouncycastle/asn1/x509/Certificate;)V

    goto :goto_0
.end method


# virtual methods
.method protected cloneCertificateList()[Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Certificate;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/Vector;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    aget-object v4, v4, v0

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v4, v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCertificateList()[Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/Certificate;->cloneCertificateList()[Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v0, v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
