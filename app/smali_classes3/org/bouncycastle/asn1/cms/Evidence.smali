.class public Lorg/bouncycastle/asn1/cms/Evidence;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Evidence;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/cms/Evidence;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/cms/Evidence;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/Evidence;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getTstEvidence()Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
