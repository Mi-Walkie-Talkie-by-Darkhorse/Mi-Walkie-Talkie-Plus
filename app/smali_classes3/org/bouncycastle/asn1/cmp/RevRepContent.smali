.class public Lorg/bouncycastle/asn1/cmp/RevRepContent;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private crls:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private revCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private status:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->status:Lorg/bouncycastle/asn1/ASN1Sequence;

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->crls:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevRepContent;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/RevRepContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/RevRepContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCrls()[Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->crls:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->crls:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/x509/CertificateList;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->crls:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getRevCerts()[Lorg/bouncycastle/asn1/crmf/CertId;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/crmf/CertId;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/crmf/CertId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertId;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getStatus()[Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->status:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->status:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->status:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/RevRepContent;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/RevRepContent;->crls:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/RevRepContent;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
