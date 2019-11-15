.class public Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

.field private sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v0, v2, :cond_0

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
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSigPolicyHash()Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    return-object v0
.end method

.method public getSigPolicyId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSigPolicyQualifiers()Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
