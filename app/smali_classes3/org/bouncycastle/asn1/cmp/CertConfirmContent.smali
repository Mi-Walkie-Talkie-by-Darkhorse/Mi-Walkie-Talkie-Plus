.class public Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private content:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toCertStatusArray()[Lorg/bouncycastle/asn1/cmp/CertStatus;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/cmp/CertStatus;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertStatus;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
