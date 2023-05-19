.class public Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
.super Ljava/lang/Object;


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private issuerUID:Lorg/bouncycastle/asn1/DERBitString;

.field private publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field private subjectUID:Lorg/bouncycastle/asn1/DERBitString;

.field private validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    if-eqz p4, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v4, 0x2

    invoke-direct {p0, v0, v4, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v4, 0x3

    invoke-direct {p0, v0, v4, v3, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    const/4 v4, 0x4

    invoke-direct {p0, v0, v4, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v4, 0x5

    invoke-direct {p0, v0, v4, v3, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    const/4 v3, 0x6

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->issuerUID:Lorg/bouncycastle/asn1/DERBitString;

    const/4 v3, 0x7

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->subjectUID:Lorg/bouncycastle/asn1/DERBitString;

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    return-object v0
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object p0
.end method

.method public setIssuerUID(Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->issuerUID:Lorg/bouncycastle/asn1/DERBitString;

    return-object p0
.end method

.method public setPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object p0
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setSigningAlg(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object p0
.end method

.method public setSubjectUID(Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->subjectUID:Lorg/bouncycastle/asn1/DERBitString;

    return-object p0
.end method

.method public setValidity(Lorg/bouncycastle/asn1/crmf/OptionalValidity;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    return-object p0
.end method

.method public setVersion(I)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method
