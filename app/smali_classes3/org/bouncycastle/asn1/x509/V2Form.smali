.class public Lorg/bouncycastle/asn1/x509/V2Form;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

.field issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, v2}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-static {v3, v2}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/V2Form;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/V2Form;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2Form;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/V2Form;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/V2Form;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getIssuerName()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
