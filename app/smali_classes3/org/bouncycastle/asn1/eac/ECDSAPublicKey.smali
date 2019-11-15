.class public Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;
.super Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;


# static fields
.field private static final A:I = 0x2

.field private static final B:I = 0x4

.field private static final F:I = 0x40

.field private static final G:I = 0x8

.field private static final P:I = 0x1

.field private static final R:I = 0x10

.field private static final Y:I = 0x20


# instance fields
.field private basePointG:[B

.field private cofactorF:Ljava/math/BigInteger;

.field private firstCoefA:Ljava/math/BigInteger;

.field private options:I

.field private orderOfBasePointR:Ljava/math/BigInteger;

.field private primeModulusP:Ljava/math/BigInteger;

.field private publicPointY:[B

.field private secondCoefB:Ljava/math/BigInteger;

.field private usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;[BI)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPrimeModulusP(Ljava/math/BigInteger;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setFirstCoefA(Ljava/math/BigInteger;)V

    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setSecondCoefB(Ljava/math/BigInteger;)V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setBasePointG(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {p0, p6}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setOrderOfBasePointR(Ljava/math/BigInteger;)V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPublicPointY(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    int-to-long v0, p8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setCofactorF(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPublicPointY(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput v3, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iput v3, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown Object Identifier!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPrimeModulusP(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setFirstCoefA(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setSecondCoefB(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setBasePointG(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setOrderOfBasePointR(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setPublicPointY(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->setCofactorF(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown Object Identifier!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All options must be either present or absent!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setBasePointG(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->basePointG:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Base Point G already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCofactorF(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->cofactorF:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cofactor F already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setFirstCoefA(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->firstCoefA:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "First Coef A already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setOrderOfBasePointR(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->orderOfBasePointR:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Order of base point R already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPrimeModulusP(Ljava/math/BigInteger;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->primeModulusP:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prime Modulus P already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPublicPointY(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->publicPointY:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public Point Y already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSecondCoefB(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->secondCoefB:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Second Coef B already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getASN1EncodableVector(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-nez p2, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getPrimeModulusP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getFirstCoefA()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getSecondCoefB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x4

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getBasePointG()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v5, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getOrderOfBasePointR()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x6

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getPublicPointY()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v5, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-nez p2, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getCofactorF()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    return-object v0
.end method

.method public getBasePointG()[B
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->basePointG:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCofactorF()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->cofactorF:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstCoefA()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->firstCoefA:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderOfBasePointR()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->orderOfBasePointR:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimeModulusP()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->primeModulusP:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublicPointY()[B
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->publicPointY:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondCoefB()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->options:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->secondCoefB:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsage()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public hasParameters()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->primeModulusP:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getASN1EncodableVector(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
