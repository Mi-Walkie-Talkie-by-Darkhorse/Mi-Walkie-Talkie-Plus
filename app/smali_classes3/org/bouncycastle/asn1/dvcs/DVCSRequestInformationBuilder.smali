.class public Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final TAG_DATA_LOCATIONS:I = 0x3

.field private static final TAG_DVCS:I = 0x2

.field private static final TAG_EXTENSIONS:I = 0x4

.field private static final TAG_REQUESTER:I = 0x0

.field private static final TAG_REQUEST_POLICY:I = 0x1


# instance fields
.field private dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

.field private nonce:Ljava/math/BigInteger;

.field private requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

.field private requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

.field private requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private final service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

.field private version:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getService()Lorg/bouncycastle/asn1/dvcs/ServiceType;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getVersion()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getRequestTime()Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getRequestPolicy()Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getDVCS()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getDataLocations()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/ServiceType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    if-eq v0, v6, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    int-to-long v4, v3

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    new-array v4, v7, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    aput-object v0, v4, v1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aput-object v0, v4, v6

    const/4 v0, 0x2

    iget-object v5, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget-object v5, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    aput-object v5, v4, v0

    const/4 v0, 0x4

    iget-object v5, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    aput-object v5, v4, v0

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_4

    aget v5, v3, v0

    aget-object v6, v4, v0

    if-eqz v6, :cond_3

    new-instance v7, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v7, v1, v5, v6}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public setDVCS(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setDVCS(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public setDVCS(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot change extensions in existing DVCSRequestInformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public setNonce(Ljava/math/BigInteger;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    goto :goto_0
.end method

.method public setRequestPolicy(Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot change request policy in existing DVCSRequestInformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    return-void
.end method

.method public setRequestTime(Lorg/bouncycastle/asn1/dvcs/DVCSTime;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot change request time in existing DVCSRequestInformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-void
.end method

.method public setRequester(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setRequester(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public setRequester(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public setVersion(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot change version in existing DVCSRequestInformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    return-void
.end method
