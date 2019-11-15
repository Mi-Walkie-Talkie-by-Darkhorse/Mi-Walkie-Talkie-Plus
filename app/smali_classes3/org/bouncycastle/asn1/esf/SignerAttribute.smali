.class public Lorg/bouncycastle/asn1/esf/SignerAttribute;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private values:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v5, v2, [Lorg/bouncycastle/asn1/x509/Attribute;

    move v2, v1

    :goto_1
    array-length v6, v5

    if-eq v2, v6, :cond_0

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aput-object v5, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    invoke-static {v2, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v2

    aput-object v2, v4, v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Attribute;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignerAttribute;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/esf/SignerAttribute;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignerAttribute;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getValues()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    array-length v0, v0

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, [Lorg/bouncycastle/asn1/x509/Attribute;

    if-eqz v0, :cond_0

    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, [Lorg/bouncycastle/asn1/x509/Attribute;

    check-cast v0, [Lorg/bouncycastle/asn1/x509/Attribute;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
