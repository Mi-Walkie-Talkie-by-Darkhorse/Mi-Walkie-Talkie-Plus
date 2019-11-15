.class public Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public toTimeStampAndCRLArray()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    return-object v0
.end method
