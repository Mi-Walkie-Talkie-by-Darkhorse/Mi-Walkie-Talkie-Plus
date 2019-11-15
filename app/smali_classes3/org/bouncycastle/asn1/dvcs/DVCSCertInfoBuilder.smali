.class public Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final TAG_CERTS:I = 0x3

.field private static final TAG_DV_STATUS:I = 0x0

.field private static final TAG_POLICY:I = 0x1

.field private static final TAG_REQ_SIGNATURE:I = 0x2


# instance fields
.field private certs:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

.field private dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

.field private policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

.field private reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

.field private responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private version:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/dvcs/DVCSTime;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    iput-object p3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->version:I

    if-eq v1, v5, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-direct {v1, v4, v5, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCerts([Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public setDvReqInfo(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    return-void
.end method

.method public setDvStatus(Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public setMessageImprint(Lorg/bouncycastle/asn1/x509/DigestInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-void
.end method

.method public setPolicy(Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    return-void
.end method

.method public setReqSignature(Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public setResponseTime(Lorg/bouncycastle/asn1/dvcs/DVCSTime;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-void
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->version:I

    return-void
.end method
