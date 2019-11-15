.class public Lorg/bouncycastle/asn1/eac/UnsignedInteger;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private tagNo:I

.field private value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->tagNo:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->value:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->tagNo:I

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->value:Ljava/math/BigInteger;

    return-void
.end method

.method private convertValue()[B
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    aget-byte v0, v1, v4

    if-nez v0, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTagNo()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->tagNo:I

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->tagNo:I

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->convertValue()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
