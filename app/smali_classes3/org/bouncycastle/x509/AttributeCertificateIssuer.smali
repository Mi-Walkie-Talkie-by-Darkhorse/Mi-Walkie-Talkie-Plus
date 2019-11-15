.class public Lorg/bouncycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field final form:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lorg/bouncycastle/jce/X509Principal;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/X509Principal;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-eq v0, v3, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "badly formed Name object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private matchesDN(Ljavax/security/auth/x500/X500Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p1, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_1

    aget-object v3, v1, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Principal;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Principal;

    check-cast v0, [Ljava/security/Principal;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0
.end method
