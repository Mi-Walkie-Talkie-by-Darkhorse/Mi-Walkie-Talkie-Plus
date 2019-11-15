.class public Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private isSignaturePolicyImplied:Z

.field private signaturePolicyId:Lorg/bouncycastle/asn1/esf/SignaturePolicyId;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/SignaturePolicyId;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->hasEncodedTagValue(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;-><init>()V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    invoke-static {p0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;-><init>(Lorg/bouncycastle/asn1/esf/SignaturePolicyId;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSignaturePolicyId()Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    return-object v0
.end method

.method public isSignaturePolicyImplied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
