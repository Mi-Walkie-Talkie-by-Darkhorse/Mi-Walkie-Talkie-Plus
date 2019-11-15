.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field private fieldPoly:I

.field private initialized:Z

.field private m:I

.field private mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

.field private n:I

.field private random:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 15

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initializeDefault()V

    :cond_0
    new-instance v13, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->m:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->fieldPoly:I

    invoke-direct {v13, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>(II)V

    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->t:I

    const/16 v1, 0x49

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v6, v13, v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;

    invoke-direct {v0, v13, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->getSquareRootMatrix()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v11

    invoke-static {v13, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;->createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v10

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v10, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;->computeSystematicForm(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;->getSecondMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;->getPermutation()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->computeTranspose()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->extendLeftCompactForm()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v14

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v14, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->createRandomRegularMatrixAndItsInverse(ILjava/security/SecureRandom;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v7

    new-instance v9, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->n:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v9, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->t:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;-><init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    const-string v2, "1.3.6.1.4.1.8301.3.1.3.4.1"

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->n:I

    const/4 v4, 0x1

    aget-object v7, v7, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v12

    move v4, v14

    move-object v5, v13

    invoke-direct/range {v1 .. v12}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;-><init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->getM()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->m:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->n:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->t:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->getFieldPoly()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->fieldPoly:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    return-void
.end method

.method private initializeDefault()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
