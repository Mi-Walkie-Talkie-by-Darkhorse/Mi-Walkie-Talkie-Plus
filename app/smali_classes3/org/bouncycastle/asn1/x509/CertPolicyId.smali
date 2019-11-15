.class public Lorg/bouncycastle/asn1/x509/CertPolicyId;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private id:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/CertPolicyId;->id:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertPolicyId;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/CertPolicyId;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/CertPolicyId;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/CertPolicyId;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/CertPolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertPolicyId;->id:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertPolicyId;->id:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
