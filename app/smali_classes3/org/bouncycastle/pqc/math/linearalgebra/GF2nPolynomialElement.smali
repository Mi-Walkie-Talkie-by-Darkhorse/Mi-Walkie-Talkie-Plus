.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
.super Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;


# static fields
.field private static final bitMask:[I


# instance fields
.field private polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->randomize(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;[B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;[I)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getDegree()I

    move-result v1

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method public static ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getDegree()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method private getGF2Polynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method private halfTrace()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private randomize(Ljava/util/Random;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    return-void
.end method

.method private reducePentanomialBitwise([I)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v1, 0x2

    aget v1, p1, v1

    sub-int v1, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v2, 0x1

    aget v2, p1, v2

    sub-int v2, v0, v2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v3, 0x0

    aget v3, p1, v3

    sub-int v3, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-lt v0, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v5, v0, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v5, v0, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method private reduceThis()V
    .locals 4

    const/16 v3, 0x20

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getTc()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v1, v0

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceTrinomialBitwise(I)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nPolynomialElement.reduce: the field polynomial is not a trinomial"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceTrinomial(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getPc()[I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v2, 0x2

    aget v2, v0, v2

    sub-int/2addr v1, v2

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reducePentanomialBitwise([I)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reducePentanomial(I[I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    goto :goto_0
.end method

.method private reduceTrinomialBitwise(I)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v1, v0, p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void
.end method

.method assignOne()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignOne()V

    return-void
.end method

.method assignZero()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignZero()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->increaseThis()V

    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->invertMAIA()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0
.end method

.method public invertEEA()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v0, v0, 0x20

    const-string v1, "ONE"

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_1

    neg-int v4, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :cond_1
    invoke-virtual {v1, v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v1, v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method public invertMAIA()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const-string v1, "ONE"

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v1, v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1

    :cond_3
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_4

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :cond_4
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto :goto_0
.end method

.method public invertSquare()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    iget-object v0, v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    iget-object v0, v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-static {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_3

    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v6, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    move v0, v1

    :goto_1
    if-gt v0, v2, :cond_1

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    shl-int/lit8 v0, v2, 0x1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    aget v2, v2, v3

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    invoke-virtual {v5, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    return-object v5
.end method

.method public isOne()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    goto :goto_0
.end method

.method public power(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 5

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v1

    if-nez p1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    iget-object v0, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x20

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    iget-object v0, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v3, :cond_3

    shl-int v3, v4, v0

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public solveQuadraticEquation()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->halfTrace()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v4, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v3

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move v1, v2

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v1, v5, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public square()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squarePreCalc()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0
.end method

.method public squareBitwise()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisBitwise()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squareMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisMatrix()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squarePreCalc()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squareRoot()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareRootThis()V

    return-object v0
.end method

.method public squareRootThis()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public squareThis()V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    return-void
.end method

.method public squareThisBitwise()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisBitwise()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-void
.end method

.method public squareThisMatrix()V
    .locals 5

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    iget-object v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->vectorMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    return-void
.end method

.method public squareThisPreCalc()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-void
.end method

.method testBit(I)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public testRightmostBit()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()I
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
