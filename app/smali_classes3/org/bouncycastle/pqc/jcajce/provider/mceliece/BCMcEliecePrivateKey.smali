.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private k:I

.field private mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

.field private n:I

.field private oid:Ljava/lang/String;

.field private p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

.field private p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

.field private qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->k:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p5, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object p6, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p7, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p8, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p9, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p10, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V
    .locals 11

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getOIDString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getK()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getSInv()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP1()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP2()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v9

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;-><init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;)V
    .locals 11

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getOIDString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getN()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getK()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getSInv()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getP1()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getP2()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v9

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;-><init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->n:I

    iget v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->n:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->k:I

    iget v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->k:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getAlgParams()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 12

    const/4 v11, 0x0

    new-instance v0, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->oid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->k:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v7, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v8, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v9, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v10, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/pqc/asn1/McEliecePrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v11

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v11

    goto :goto_0
.end method

.method public getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->k:I

    return v0
.end method

.method public getMcElieceParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    return-object v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->n:I

    return v0
.end method

.method protected getOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getP1()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getP2()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getSInv()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->k:I

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->n:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " length of the code          : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dimension of the code       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " irreducible Goppa polynomial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (k x k)-matrix S^-1         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permutation P1              : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permutation P2              : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
