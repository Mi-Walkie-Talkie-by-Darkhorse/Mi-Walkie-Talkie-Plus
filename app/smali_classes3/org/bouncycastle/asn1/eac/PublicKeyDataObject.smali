.class public abstract Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
.super Lorg/bouncycastle/asn1/ASN1Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract getUsage()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
.end method
