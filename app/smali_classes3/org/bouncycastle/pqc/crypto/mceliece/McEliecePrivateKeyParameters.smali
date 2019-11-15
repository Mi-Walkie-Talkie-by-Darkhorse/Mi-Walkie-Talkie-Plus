.class public Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private k:I

.field private n:I

.field private oid:Ljava/lang/String;

.field private p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

.field private p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

.field private qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p11}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->oid:Ljava/lang/String;

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p8, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p9, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p10, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[B[B[B[B[B[B[[BLorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V
    .locals 6

    const/4 v1, 0x1

    move-object/from16 v0, p11

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v1, p6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v1, p7}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v1, p8}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v1, p9}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object/from16 v0, p10

    array-length v1, v0

    new-array v1, v1, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p10

    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget-object v5, p10, v1

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    return v0
.end method

.method public getOIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getP1()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getP2()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getSInv()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method
