.class public Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private primitive:Lorg/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v2, v1, [I

    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->checkBigIntegerInIntRange(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v4, v1, [[B

    move v2, v3

    :goto_1
    array-length v1, v4

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v4, v1, [[B

    move v2, v3

    :goto_2
    array-length v1, v4

    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v6, v1, [[[B

    move v4, v3

    :goto_3
    array-length v1, v6

    if-ge v4, v1, :cond_4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[B

    aput-object v2, v6, v4

    move v5, v3

    :goto_4
    aget-object v2, v6, v4

    array-length v2, v2

    if-ge v5, v2, :cond_3

    aget-object v7, v6, v4

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v2

    aput-object v2, v7, v5

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v6, v1, [[[B

    move v4, v3

    :goto_5
    array-length v1, v6

    if-ge v4, v1, :cond_6

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[B

    aput-object v2, v6, v4

    move v5, v3

    :goto_6
    aget-object v2, v6, v4

    array-length v2, v2

    if-ge v5, v2, :cond_5

    aget-object v7, v6, v4

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v2

    aput-object v2, v7, v5

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_6
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 24

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v1, 0x1

    new-array v0, v1, [Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v23, v0

    const/4 v1, 0x0

    aput-object p22, v23, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p12

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    invoke-direct/range {v1 .. v23}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->encode([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private static checkBigIntegerInIntRange(Lorg/bouncycastle/asn1/ASN1Encodable;)I
    .locals 4

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_0

    const-wide/32 v2, -0x80000000

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BigInteger not in Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method private encode([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 23

    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v4, v6, :cond_0

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, p1, v4

    int-to-long v8, v7

    invoke-direct {v6, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v6, v0

    if-ge v4, v6, :cond_1

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, p2, v4

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v4, v6, :cond_2

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, p3, v4

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p4

    array-length v6, v0

    if-ge v4, v6, :cond_4

    const/4 v6, 0x0

    :goto_4
    aget-object v8, p4, v4

    array-length v8, v8

    if-ge v6, v8, :cond_3

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, p4, v4

    aget-object v9, v9, v6

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p5

    array-length v6, v0

    if-ge v4, v6, :cond_6

    const/4 v6, 0x0

    :goto_6
    aget-object v8, p5, v4

    array-length v8, v8

    if-ge v6, v8, :cond_5

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, p5, v4

    aget-object v9, v9, v6

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p7

    array-length v9, v0

    if-ge v4, v9, :cond_a

    const/4 v9, 0x0

    :goto_8
    aget-object v10, p7, v4

    array-length v10, v10

    if-ge v9, v10, :cond_9

    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v12, 0x0

    aget-object v12, p22, v12

    invoke-direct {v10, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v10, p7, v4

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    const/4 v12, 0x1

    aget v12, v10, v12

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, p7, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v10, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, p7, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-direct {v10, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, p7, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-direct {v10, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v12, :cond_7

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, p7, v4

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v14

    add-int/lit8 v16, v10, 0x3

    aget-object v14, v14, v16

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_7
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x3

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x4

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x5

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v12, :cond_8

    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, p7, v4

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v16, v6, 0x6

    aget v14, v14, v16

    int-to-long v0, v14

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v13, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_8
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_8

    :cond_9
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_a
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_b
    move-object/from16 v0, p8

    array-length v9, v0

    if-ge v4, v9, :cond_e

    const/4 v9, 0x0

    :goto_c
    aget-object v10, p8, v4

    array-length v10, v10

    if-ge v9, v10, :cond_d

    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v12, 0x0

    aget-object v12, p22, v12

    invoke-direct {v10, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v10, p8, v4

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    const/4 v12, 0x1

    aget v12, v10, v12

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, p8, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v10, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, p8, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-direct {v10, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, p8, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-direct {v10, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v12, :cond_b

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, p8, v4

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v14

    add-int/lit8 v16, v10, 0x3

    aget-object v14, v14, v16

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_b
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p8, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p8, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p8, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x3

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p8, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x4

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p8, v4

    aget-object v13, v13, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x5

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v12, :cond_c

    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, p8, v4

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v16, v6, 0x6

    aget v14, v14, v16

    int-to-long v0, v14

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v13, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_c
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_c

    :cond_d
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v11, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_e
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_f
    move-object/from16 v0, p6

    array-length v6, v0

    if-ge v4, v6, :cond_10

    const/4 v6, 0x0

    :goto_10
    aget-object v8, p6, v4

    array-length v8, v8

    if-ge v6, v8, :cond_f

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, p6, v4

    aget-object v9, v9, v6

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_f
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_10
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    move-object v6, v5

    move v5, v4

    :goto_11
    move-object/from16 v0, p9

    array-length v4, v0

    if-ge v5, v4, :cond_12

    const/4 v4, 0x0

    move v7, v4

    :goto_12
    aget-object v4, p9, v5

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v7, v4, :cond_11

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v4, p9, v5

    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v9, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_12

    :cond_11
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_11

    :cond_12
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    move-object v6, v5

    move v5, v4

    :goto_13
    move-object/from16 v0, p10

    array-length v4, v0

    if-ge v5, v4, :cond_14

    const/4 v4, 0x0

    move v7, v4

    :goto_14
    aget-object v4, p10, v5

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v7, v4, :cond_13

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v4, p10, v5

    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v9, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_14

    :cond_13
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_13

    :cond_14
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    move/from16 v22, v4

    move-object v4, v6

    move-object v6, v5

    move/from16 v5, v22

    :goto_15
    move-object/from16 v0, p11

    array-length v7, v0

    if-ge v5, v7, :cond_17

    const/4 v7, 0x0

    move v8, v7

    move-object v7, v4

    :goto_16
    aget-object v4, p11, v5

    array-length v4, v4

    if-ge v8, v4, :cond_16

    const/4 v4, 0x0

    move v9, v4

    :goto_17
    aget-object v4, p11, v5

    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v9, v4, :cond_15

    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v4, p11, v5

    aget-object v4, v4, v8

    invoke-virtual {v4, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v11, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v7, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_17

    :cond_15
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_16

    :cond_16
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v7

    goto :goto_15

    :cond_17
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    move/from16 v22, v4

    move-object v4, v6

    move-object v6, v5

    move/from16 v5, v22

    :goto_18
    move-object/from16 v0, p12

    array-length v7, v0

    if-ge v5, v7, :cond_1a

    const/4 v7, 0x0

    move v8, v7

    move-object v7, v4

    :goto_19
    aget-object v4, p12, v5

    array-length v4, v4

    if-ge v8, v4, :cond_19

    const/4 v4, 0x0

    move v9, v4

    :goto_1a
    aget-object v4, p12, v5

    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v9, v4, :cond_18

    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v4, p12, v5

    aget-object v4, v4, v8

    invoke-virtual {v4, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v11, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v7, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_1a

    :cond_18
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_19

    :cond_19
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v7

    goto :goto_18

    :cond_1a
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_1b
    move-object/from16 v0, p13

    array-length v9, v0

    if-ge v4, v9, :cond_1b

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v10, 0x0

    aget-object v10, p22, v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v9, p13, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x3

    aget-object v9, v9, v11

    invoke-direct {v10, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v9, p13, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x0

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x1

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x2

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x3

    aget v9, v9, v11

    int-to-long v12, v9

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    :cond_1b
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_1c
    move-object/from16 v0, p14

    array-length v9, v0

    if-ge v4, v9, :cond_1c

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v10, 0x0

    aget-object v10, p22, v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v9, p14, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x3

    aget-object v9, v9, v11

    invoke-direct {v10, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v9, p14, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x0

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x1

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x2

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x3

    aget v9, v9, v11

    int-to-long v12, v9

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1c

    :cond_1c
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_1d
    move-object/from16 v0, p15

    array-length v9, v0

    if-ge v4, v9, :cond_1d

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v10, 0x0

    aget-object v10, p22, v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v9, p15, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v11, 0x3

    aget-object v9, v9, v11

    invoke-direct {v10, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v9, p15, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x0

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x1

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x2

    aget v11, v9, v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v11, 0x3

    aget v9, v9, v11

    int-to-long v12, v9

    invoke-direct {v10, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_1d
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_1e
    move-object/from16 v0, p16

    array-length v6, v0

    if-ge v4, v6, :cond_1e

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, p16, v4

    int-to-long v8, v7

    invoke-direct {v6, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_1e
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_1f
    move-object/from16 v0, p17

    array-length v6, v0

    if-ge v4, v6, :cond_1f

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, p17, v4

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_1f
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v16, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    move-object v10, v9

    move-object/from16 v22, v5

    move v5, v4

    move-object v4, v6

    move-object/from16 v6, v22

    :goto_20
    move-object/from16 v0, p18

    array-length v9, v0

    if-ge v5, v9, :cond_29

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v11, 0x0

    aget-object v11, p22, v11

    invoke-direct {v9, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v10, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v9, p18, v5

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    const/4 v11, 0x0

    aget v11, v9, v11

    aget-object v9, p18, v5

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    const/4 v12, 0x7

    aget v12, v9, v12

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, p18, v5

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v9, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v11, :cond_20

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, p18, v5

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v14

    add-int/lit8 v17, v9, 0x1

    aget-object v14, v14, v17

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v8, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_20
    const/4 v9, 0x0

    :goto_22
    if-ge v9, v12, :cond_21

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, p18, v5

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v14

    add-int/lit8 v17, v11, 0x1

    add-int v17, v17, v9

    aget-object v14, v14, v17

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v8, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_21
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, v11

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p18, v5

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p18, v5

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p18, v5

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x3

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p18, v5

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x4

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p18, v5

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x5

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p18, v5

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v13

    const/4 v14, 0x6

    aget v13, v13, v14

    int-to-long v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v8, 0x0

    :goto_23
    if-ge v8, v11, :cond_22

    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, p18, v5

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v17, v8, 0x8

    aget v14, v14, v17

    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_22
    const/4 v8, 0x0

    :goto_24
    if-ge v8, v12, :cond_23

    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, p18, v5

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v17, v11, 0x8

    add-int v17, v17, v8

    aget v14, v14, v17

    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_23
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v13, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v7, p18, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v7

    if-eqz v7, :cond_26

    const/4 v7, 0x0

    :goto_25
    aget-object v14, p18, v5

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v14

    array-length v14, v14

    if-ge v7, v14, :cond_26

    new-instance v14, Lorg/bouncycastle/asn1/DERSequence;

    const/16 v17, 0x0

    aget-object v17, p22, v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v14, p18, v5

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v14

    aget-object v14, v14, v7

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v14

    const/16 v17, 0x1

    aget v17, v14, v17

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v18, p18, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v18

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v18, p18, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v18

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v18, p18, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v18

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v18

    const/16 v19, 0x2

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v14, 0x0

    :goto_26
    move/from16 v0, v17

    if-ge v14, v0, :cond_24

    new-instance v18, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, p18, v5

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v19

    aget-object v19, v19, v7

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v19

    add-int/lit8 v20, v14, 0x3

    aget-object v19, v19, v20

    invoke-direct/range {v18 .. v19}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_26

    :cond_24
    new-instance v14, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v14, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v14, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v18, p18, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v18

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v18

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/ASN1Integer;

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v18, p18, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v18

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v18

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v18, p18, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v18

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v18

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v18, p18, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v18

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v18

    const/16 v19, 0x4

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v18, p18, v5

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v18

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v18

    const/16 v19, 0x5

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v14, 0x0

    :goto_27
    move/from16 v0, v17

    if-ge v14, v0, :cond_25

    new-instance v18, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v19, p18, v5

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v19

    aget-object v19, v19, v7

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v19

    add-int/lit8 v20, v14, 0x6

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_27

    :cond_25
    new-instance v14, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v14, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v14, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v14, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_25

    :cond_26
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v4, p18, v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    move-object v12, v11

    move v11, v4

    :goto_28
    aget-object v4, p18, v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v4

    array-length v4, v4

    if-ge v11, v4, :cond_28

    const/4 v4, 0x0

    move v13, v4

    :goto_29
    aget-object v4, p18, v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v13, v4, :cond_27

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v4, p18, v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-virtual {v4, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v14, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_29

    :cond_27
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_28

    :cond_28
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_20

    :cond_29
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_2a
    move-object/from16 v0, p19

    array-length v6, v0

    if-ge v4, v6, :cond_2a

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, p19, v4

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_2a
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_2b
    move-object/from16 v0, p20

    array-length v9, v0

    if-ge v4, v9, :cond_2b

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v10, 0x0

    aget-object v10, p22, v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v10

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v10

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x4

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x5

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x6

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x7

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p20, v4

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v10

    const/16 v11, 0x8

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2b

    :cond_2b
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_2c
    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_2c

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v10

    aget v10, v10, v4

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v10

    aget v10, v10, v4

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v10

    aget v10, v10, v4

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_2c
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v9

    int-to-long v10, v9

    invoke-direct {v4, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_2d
    move-object/from16 v0, p22

    array-length v6, v0

    if-ge v4, v6, :cond_2d

    aget-object v6, p22, v4

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_2d
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v4
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
