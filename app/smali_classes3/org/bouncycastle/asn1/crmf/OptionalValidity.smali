.class public Lorg/bouncycastle/asn1/crmf/OptionalValidity;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private notAfter:Lorg/bouncycastle/asn1/x509/Time;

.field private notBefore:Lorg/bouncycastle/asn1/x509/Time;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notBefore:Lorg/bouncycastle/asn1/x509/Time;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notAfter:Lorg/bouncycastle/asn1/x509/Time;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "at least one of notBefore/notAfter must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notBefore:Lorg/bouncycastle/asn1/x509/Time;

    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notAfter:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/OptionalValidity;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/OptionalValidity;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getNotAfter()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notAfter:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getNotBefore()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notBefore:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notBefore:Lorg/bouncycastle/asn1/x509/Time;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notBefore:Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notAfter:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->notAfter:Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
