.class public Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

.field private attributeCertificateValid:Ljava/util/Date;

.field private holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

.field private issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

.field private serialNumber:Ljava/math/BigInteger;

.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    return-void
.end method

.method private extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addTargetGroup(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetGroup([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->addTargetGroup(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method public addTargetName(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetName([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->addTargetName(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCertificateValid()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetGroups()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetNames()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    return-object v0
.end method

.method public getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-interface {p1, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_7
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_f

    :try_start_1
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-static {v0}, Lorg/bouncycastle/asn1/DEROctetString;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TargetInformation;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lorg/bouncycastle/asn1/x509/Targets;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, v5

    if-ge v0, v3, :cond_a

    aget-object v3, v5, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v6

    move v3, v1

    :goto_2
    array-length v7, v6

    if-ge v3, v7, :cond_8

    iget-object v7, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    aget-object v8, v6, v3

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/Target;->getTargetName()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v2, v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_0

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    move v2, v1

    :goto_3
    array-length v3, v5

    if-ge v0, v3, :cond_e

    aget-object v3, v5, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v6

    move v3, v1

    :goto_4
    array-length v7, v6

    if-ge v3, v7, :cond_c

    iget-object v7, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    aget-object v8, v6, v3

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/Target;->getTargetGroup()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v2, v4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    if-eqz v2, :cond_0

    :cond_f
    move v1, v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method public setAttributeCert(Lorg/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-void
.end method

.method public setAttributeCertificateValid(Ljava/util/Date;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    goto :goto_0
.end method

.method public setHolder(Lorg/bouncycastle/x509/AttributeCertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/x509/AttributeCertificateIssuer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    return-void
.end method

.method public setTargetGroups(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    return-void
.end method

.method public setTargetNames(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    return-void
.end method
