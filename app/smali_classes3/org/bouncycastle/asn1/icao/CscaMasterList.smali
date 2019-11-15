.class public Lorg/bouncycastle/asn1/icao/CscaMasterList;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private certList:[Lorg/bouncycastle/asn1/x509/Certificate;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or empty sequence passed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect sequence size: "

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

    :cond_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/asn1/x509/Certificate;

    iput-object v2, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->certList:[Lorg/bouncycastle/asn1/x509/Certificate;

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->certList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->certList:[Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/icao/CscaMasterList;->copyCertList([Lorg/bouncycastle/asn1/x509/Certificate;)[Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->certList:[Lorg/bouncycastle/asn1/x509/Certificate;

    return-void
.end method

.method private copyCertList([Lorg/bouncycastle/asn1/x509/Certificate;)[Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Lorg/bouncycastle/asn1/x509/Certificate;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/icao/CscaMasterList;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/icao/CscaMasterList;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/icao/CscaMasterList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertStructs()[Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->certList:[Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/icao/CscaMasterList;->copyCertList([Lorg/bouncycastle/asn1/x509/Certificate;)[Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->certList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/CscaMasterList;->certList:[Lorg/bouncycastle/asn1/x509/Certificate;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
