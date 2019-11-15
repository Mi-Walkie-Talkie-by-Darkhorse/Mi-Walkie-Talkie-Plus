.class public Lorg/bouncycastle/asn1/eac/RSAPublicKey;
.super Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;


# static fields
.field private static exponentValid:I

.field private static modulusValid:I


# instance fields
.field private exponent:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;

.field private usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->modulusValid:I

    const/4 v0, 0x2

    sput v0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->exponentValid:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown DERTaggedObject :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getTagNo()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-> not an Iso7816RSAPublicKeyStructure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->setModulus(Lorg/bouncycastle/asn1/eac/UnsignedInteger;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->setExponent(Lorg/bouncycastle/asn1/eac/UnsignedInteger;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing argument -> not an Iso7816RSAPublicKeyStructure"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setExponent(Lorg/bouncycastle/asn1/eac/UnsignedInteger;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->exponentValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->exponentValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exponent already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setModulus(Lorg/bouncycastle/asn1/eac/UnsignedInteger;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->modulusValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->modulusValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->valid:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modulus already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getUsage()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
