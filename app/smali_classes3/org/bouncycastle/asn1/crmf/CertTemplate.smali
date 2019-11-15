.class public Lorg/bouncycastle/asn1/crmf/CertTemplate;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private issuerUID:Lorg/bouncycastle/asn1/DERBitString;

.field private publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private seq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field private subjectUID:Lorg/bouncycastle/asn1/DERBitString;

.field private validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/OptionalValidity;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->issuerUID:Lorg/bouncycastle/asn1/DERBitString;

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->subjectUID:Lorg/bouncycastle/asn1/DERBitString;

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/crmf/CertTemplate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getIssuerUID()Lorg/bouncycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->issuerUID:Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSigningAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectUID()Lorg/bouncycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->subjectUID:Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getValidity()Lorg/bouncycastle/asn1/crmf/OptionalValidity;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplate;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
