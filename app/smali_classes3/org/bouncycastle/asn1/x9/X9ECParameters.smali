.class public Lorg/bouncycastle/asn1/x9/X9ECParameters;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private curve:Lorg/bouncycastle/math/ec/ECCurve;

.field private fieldID:Lorg/bouncycastle/asn1/x9/X9FieldID;

.field private g:Lorg/bouncycastle/asn1/x9/X9ECPoint;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad version in X9ECParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/x9/X9Curve;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X9FieldID;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/x9/X9Curve;-><init>(Lorg/bouncycastle/asn1/x9/X9FieldID;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9Curve;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->g:Lorg/bouncycastle/asn1/x9/X9ECPoint;

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9Curve;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    :cond_2
    return-void

    :cond_3
    new-instance v2, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->g:Lorg/bouncycastle/asn1/x9/X9ECPoint;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->g:Lorg/bouncycastle/asn1/x9/X9ECPoint;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-static {p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/bouncycastle/asn1/x9/X9FieldID;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    invoke-interface {v0}, Lorg/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/bouncycastle/math/field/Polynomial;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v0

    array-length v1, v0

    if-ne v1, v5, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldID;

    aget v2, v0, v4

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/x9/X9FieldID;-><init>(II)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/bouncycastle/asn1/x9/X9FieldID;

    goto :goto_0

    :cond_1
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldID;

    const/4 v2, 0x4

    aget v2, v0, v2

    aget v3, v0, v3

    aget v4, v0, v4

    aget v0, v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/bouncycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/bouncycastle/asn1/x9/X9FieldID;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only trinomial and pentomial curves are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'curve\' is of an unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    new-instance v2, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECPoint;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBaseEntry()Lorg/bouncycastle/asn1/x9/X9ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->g:Lorg/bouncycastle/asn1/x9/X9ECPoint;

    return-object v0
.end method

.method public getCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getCurveEntry()Lorg/bouncycastle/asn1/x9/X9Curve;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x9/X9Curve;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x9/X9Curve;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    return-object v0
.end method

.method public getFieldIDEntry()Lorg/bouncycastle/asn1/x9/X9FieldID;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/bouncycastle/asn1/x9/X9FieldID;

    return-object v0
.end method

.method public getG()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->g:Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9Curve;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x9/X9Curve;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->g:Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
