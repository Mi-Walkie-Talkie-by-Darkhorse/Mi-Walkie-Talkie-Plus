.class public Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedValue;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificate\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'encryptedCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertificate()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getEncryptedCert()Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-direct {v0, v3, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
