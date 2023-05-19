.class public Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


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
.method public constructor <init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->oid:Ljava/lang/String;

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->k:I

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->n:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p5, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object p6, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p7, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p8, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p9, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p10, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[B[B[B[B[B[B[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->k:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {p1, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    new-instance p2, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {p2, p1, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {p1, p6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {p1, p7}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {p1, p8}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {p1, p9}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    array-length p1, p10

    new-array p1, p1, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p10

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance p3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object p4, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget-object p5, p10, p1

    invoke-direct {p3, p4, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->n:I

    return v0
.end method

.method public getOIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getP1()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getP2()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getSInv()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method
