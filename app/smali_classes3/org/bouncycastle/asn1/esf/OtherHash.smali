.class public Lorg/bouncycastle/asn1/esf/OtherHash;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private otherHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

.field private sha1Hash:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->otherHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherHash;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/OtherHash;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/esf/OtherHash;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/OtherHash;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/esf/OtherHash;

    invoke-static {p0}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/OtherHash;-><init>(Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->otherHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->otherHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    goto :goto_0
.end method

.method public getHashValue()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->otherHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->otherHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;->getHashValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->otherHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/bouncycastle/asn1/ASN1OctetString;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OtherHash;->otherHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
