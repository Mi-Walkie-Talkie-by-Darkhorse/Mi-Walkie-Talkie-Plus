.class public Lorg/bouncycastle/asn1/crmf/CertReqMsg;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

.field private pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

.field private regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertRequest;Lorg/bouncycastle/asn1/crmf/ProofOfPossession;[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certReq\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    if-eqz p3, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    :cond_1
    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

    return-object v0
.end method

.method public getPop()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    return-object v0
.end method

.method public getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    return-object v0
.end method

.method public getRegInfo()[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
