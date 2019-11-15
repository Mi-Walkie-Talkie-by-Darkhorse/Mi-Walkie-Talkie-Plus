.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;
.super Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;


# static fields
.field private static final MAXLONG:I = 0x40

.field private static final mBitmask:[J

.field private static final mIBY64:[I

.field private static final mMaxmask:[J


# instance fields
.field private mBit:I

.field private mLength:I

.field private mPol:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x40

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    const/16 v0, 0x180

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    return-void

    :array_0
    .array-data 8
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
        0x40000000
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
        0x40000000000L
        0x80000000000L
        0x100000000000L
        0x200000000000L
        0x400000000000L
        0x800000000000L
        0x1000000000000L
        0x2000000000000L
        0x4000000000000L
        0x8000000000000L
        0x10000000000000L
        0x20000000000000L
        0x40000000000000L
        0x80000000000000L
        0x100000000000000L
        0x200000000000000L
        0x400000000000000L
        0x800000000000000L
        0x1000000000000000L
        0x2000000000000000L
        0x4000000000000000L    # 2.0
        -0x8000000000000000L
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff
        0x7fffffff
        0xffffffffL
        0x1ffffffffL
        0x3ffffffffL
        0x7ffffffffL
        0xfffffffffL
        0x1fffffffffL
        0x3fffffffffL
        0x7fffffffffL
        0xffffffffffL
        0x1ffffffffffL
        0x3ffffffffffL
        0x7ffffffffffL
        0xfffffffffffL
        0x1fffffffffffL
        0x3fffffffffffL
        0x7fffffffffffL
        0xffffffffffffL
        0x1ffffffffffffL
        0x3ffffffffffffL    # 5.562684646268E-309
        0x7ffffffffffffL
        0xfffffffffffffL
        0x1fffffffffffffL
        0x3fffffffffffffL
        0x7fffffffffffffL
        0xffffffffffffffL
        0x1ffffffffffffffL    # 4.77830972673648E-299
        0x3ffffffffffffffL
        0x7ffffffffffffffL
        0xfffffffffffffffL
        0x1fffffffffffffffL
        0x3fffffffffffffffL    # 1.9999999999999998
        0x7fffffffffffffffL
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 v4, v4, 0x40

    ushr-long/2addr v0, v4

    aput-wide v0, v2, v3

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v2, v0

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 v4, v4, 0x40

    ushr-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v1

    new-array v2, v1, [J

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v1, v3

    aput-wide v4, v2, v0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V

    return-object v0
.end method

.method public static ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    new-array v0, v0, [J

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V

    return-object v1
.end method

.method private assign(Ljava/math/BigInteger;)V
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private assign([B)V
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, v0, 0x3

    aget-wide v4, v1, v2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-byte v3, p1, v3

    int-to-long v6, v3

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    and-int/lit8 v3, v0, 0x7

    shl-int/lit8 v3, v3, 0x3

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    aput-wide v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assign([J)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getElement()[J
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, v0

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getElementReverseOrder()[J
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, v0

    new-array v1, v0, [J

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    ushr-int/lit8 v2, v0, 0x6

    aget-wide v4, v1, v2

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v6, v0, 0x3f

    aget-wide v6, v3, v6

    or-long/2addr v4, v6

    aput-wide v4, v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v2, v1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v6, v0, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method assignOne()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    return-void
.end method

.method assignZero()V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v2, v0

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->invertThis()V

    return-object v0
.end method

.method public invertThis()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_0
    const/16 v2, 0x1f

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-ltz v2, :cond_2

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v3, v3, -0x1

    int-to-long v4, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v6, v3, v2

    and-long/2addr v4, v6

    cmp-long v3, v4, v10

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move v3, v1

    :goto_1
    if-ltz v2, :cond_5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move v4, v1

    :goto_2
    if-gt v4, v3, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->squareThis()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    shl-int/lit8 v0, v3, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v3, v2

    and-long/2addr v6, v8

    cmp-long v3, v6, v10

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->squareThis()V

    invoke-virtual {v5, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->squareThis()V

    return-void
.end method

.method public isOne()Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v2, v0

    and-long/2addr v4, v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v0, v2

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v6, v0, v2

    and-long/2addr v4, v6

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v6, v0, v2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    :goto_2
    return v3

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method public isZero()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v0, v4, :cond_1

    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v2, v0

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "The elements have different representation: not yet implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-object/from16 v2, p1

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v2, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareThis()V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v8, v2, [J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    iget-object v9, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v10, v2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v4, 0x3f

    aget-wide v12, v3, v4

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v3, v2

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-ge v2, v3, :cond_15

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-ge v3, v5, :cond_5

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v5, v5, v3

    and-int/lit8 v11, v3, 0x3f

    sget-object v16, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget-object v17, v9, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    aget v16, v16, v17

    aget-object v17, v9, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    and-int/lit8 v17, v17, 0x3f

    aget-wide v18, v6, v5

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v20, v5, v11

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v5, v18, v20

    if-eqz v5, :cond_4

    aget-wide v18, v7, v16

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v16, v5, v17

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_3

    xor-int/lit8 v4, v4, 0x1

    :cond_3
    aget-object v5, v9, v3

    const/4 v11, 0x1

    aget v5, v5, v11

    const/4 v11, -0x1

    if-eq v5, v11, :cond_4

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget-object v11, v9, v3

    const/16 v16, 0x1

    aget v11, v11, v16

    aget v5, v5, v11

    aget-object v11, v9, v3

    const/16 v16, 0x1

    aget v11, v11, v16

    and-int/lit8 v11, v11, 0x3f

    aget-wide v16, v7, v5

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v18, v5, v11

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_4

    xor-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v3, v3, v2

    and-int/lit8 v5, v2, 0x3f

    if-eqz v4, :cond_6

    aget-wide v16, v8, v3

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v4, v4, v5

    xor-long v4, v4, v16

    aput-wide v4, v8, v3

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_11

    aget-wide v4, v6, v10

    const-wide/16 v16, 0x1

    and-long v4, v4, v16

    const-wide/16 v16, 0x1

    cmp-long v3, v4, v16

    if-nez v3, :cond_8

    const/4 v3, 0x1

    :goto_3
    add-int/lit8 v4, v10, -0x1

    move v5, v3

    :goto_4
    if-ltz v4, :cond_a

    aget-wide v16, v6, v4

    const-wide/16 v18, 0x1

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_5
    aget-wide v16, v6, v4

    const/4 v11, 0x1

    ushr-long v16, v16, v11

    aput-wide v16, v6, v4

    if-eqz v5, :cond_7

    aget-wide v16, v6, v4

    xor-long v16, v16, v12

    aput-wide v16, v6, v4

    :cond_7
    add-int/lit8 v4, v4, -0x1

    move v5, v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    aget-wide v16, v6, v10

    const/4 v3, 0x1

    ushr-long v16, v16, v3

    aput-wide v16, v6, v10

    if-eqz v5, :cond_b

    aget-wide v4, v6, v10

    xor-long/2addr v4, v14

    aput-wide v4, v6, v10

    :cond_b
    aget-wide v4, v7, v10

    const-wide/16 v16, 0x1

    and-long v4, v4, v16

    const-wide/16 v16, 0x1

    cmp-long v3, v4, v16

    if-nez v3, :cond_d

    const/4 v3, 0x1

    :goto_6
    add-int/lit8 v4, v10, -0x1

    move v5, v3

    :goto_7
    if-ltz v4, :cond_f

    aget-wide v16, v7, v4

    const-wide/16 v18, 0x1

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_8
    aget-wide v16, v7, v4

    const/4 v11, 0x1

    ushr-long v16, v16, v11

    aput-wide v16, v7, v4

    if-eqz v5, :cond_c

    aget-wide v16, v7, v4

    xor-long v16, v16, v12

    aput-wide v16, v7, v4

    :cond_c
    add-int/lit8 v4, v4, -0x1

    move v5, v3

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    :cond_f
    aget-wide v16, v7, v10

    const/4 v3, 0x1

    ushr-long v16, v16, v3

    aput-wide v16, v7, v10

    if-eqz v5, :cond_10

    aget-wide v4, v7, v10

    xor-long/2addr v4, v14

    aput-wide v4, v7, v10

    :cond_10
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v3, 0x0

    aget-wide v4, v6, v3

    const-wide/16 v16, 0x1

    and-long v4, v4, v16

    const-wide/16 v16, 0x1

    cmp-long v3, v4, v16

    if-nez v3, :cond_13

    const/4 v3, 0x1

    :goto_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v16, v6, v5

    const/4 v5, 0x1

    ushr-long v16, v16, v5

    aput-wide v16, v6, v4

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    aget-wide v4, v6, v3

    xor-long/2addr v4, v14

    aput-wide v4, v6, v3

    :cond_12
    const/4 v3, 0x0

    aget-wide v4, v7, v3

    const-wide/16 v16, 0x1

    and-long v4, v4, v16

    const-wide/16 v16, 0x1

    cmp-long v3, v4, v16

    if-nez v3, :cond_14

    const/4 v3, 0x1

    :goto_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v16, v7, v5

    const/4 v5, 0x1

    ushr-long v16, v16, v5

    aput-wide v16, v7, v4

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    aget-wide v4, v7, v3

    xor-long/2addr v4, v14

    aput-wide v4, v7, v3

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    goto :goto_b

    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    goto/16 :goto_0
.end method

.method reverseOrder()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElementReverseOrder()[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public solveQuadraticEquation()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->trace()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :cond_0
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v3, 0x3f

    aget-wide v10, v2, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v12, v2, [J

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_8

    const/4 v3, 0x1

    :goto_1
    const/16 v13, 0x40

    if-ge v3, v13, :cond_4

    sget-object v13, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v13, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v16, v13, v2

    and-long v14, v14, v16

    cmp-long v13, v14, v6

    if-eqz v13, :cond_1

    sget-object v13, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v14, v3, -0x1

    aget-wide v14, v13, v14

    and-long/2addr v14, v4

    cmp-long v13, v14, v6

    if-nez v13, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v14, v13, v2

    sget-object v13, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v16, v13, v3

    and-long v14, v14, v16

    cmp-long v13, v14, v6

    if-nez v13, :cond_2

    sget-object v13, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v14, v3, -0x1

    aget-wide v14, v13, v14

    and-long/2addr v14, v4

    cmp-long v13, v14, v6

    if-eqz v13, :cond_3

    :cond_2
    sget-object v13, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v13, v3

    xor-long/2addr v4, v14

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aput-wide v4, v12, v2

    and-long v14, v10, v4

    cmp-long v3, v14, v6

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v13, v2, 0x1

    aget-wide v14, v3, v13

    and-long/2addr v14, v8

    cmp-long v3, v14, v8

    if-eqz v3, :cond_6

    :cond_5
    and-long/2addr v4, v10

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    and-long/2addr v4, v8

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    :cond_6
    move-wide v4, v6

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    move-wide v4, v8

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    and-int/lit8 v8, v2, 0x3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, v2, v3

    const/4 v2, 0x1

    move/from16 v18, v2

    move-wide v2, v4

    move/from16 v4, v18

    :goto_3
    if-ge v4, v8, :cond_c

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v5, v4

    and-long/2addr v14, v10

    cmp-long v5, v14, v6

    if-eqz v5, :cond_9

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v9, v4, -0x1

    aget-wide v14, v5, v9

    and-long/2addr v14, v2

    cmp-long v5, v14, v6

    if-nez v5, :cond_b

    :cond_9
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v5, v4

    and-long/2addr v14, v10

    cmp-long v5, v14, v6

    if-nez v5, :cond_a

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v9, v4, -0x1

    aget-wide v14, v5, v9

    and-long/2addr v14, v2

    cmp-long v5, v14, v6

    if-eqz v5, :cond_b

    :cond_a
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v5, v4

    xor-long/2addr v2, v14

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v4, v4, -0x1

    aput-wide v2, v12, v4

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-direct {v3, v2, v12}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V

    return-object v3
.end method

.method public square()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareThis()V

    return-object v0
.end method

.method public squareRoot()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareRootThis()V

    return-object v0
.end method

.method public squareRootThis()V
    .locals 12

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v2, v0, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v5, v0, -0x1

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v1, 0x3f

    aget-wide v6, v0, v1

    const/4 v0, 0x0

    aget-wide v0, v4, v0

    const-wide/16 v8, 0x1

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v2

    move v3, v0

    :goto_1
    if-ltz v1, :cond_4

    aget-wide v8, v4, v1

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    aget-wide v8, v4, v1

    const/4 v10, 0x1

    ushr-long/2addr v8, v10

    aput-wide v8, v4, v1

    if-eqz v3, :cond_0

    if-ne v1, v2, :cond_3

    aget-wide v8, v4, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v3, v5

    xor-long/2addr v8, v10

    aput-wide v8, v4, v1

    :cond_0
    :goto_3
    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    aget-wide v8, v4, v1

    xor-long/2addr v8, v6

    aput-wide v8, v4, v1

    goto :goto_3

    :cond_4
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public squareThis()V
    .locals 12

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v5, v0, -0x1

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v1, 0x3f

    aget-wide v6, v0, v1

    aget-wide v0, v3, v4

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v2, v5

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    move v2, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-wide v8, v3, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    aget-wide v8, v3, v1

    const/4 v10, 0x1

    shl-long/2addr v8, v10

    aput-wide v8, v3, v1

    if-eqz v2, :cond_0

    aget-wide v8, v3, v1

    const-wide/16 v10, 0x1

    xor-long/2addr v8, v10

    aput-wide v8, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    aget-wide v0, v3, v4

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v6, v6, v5

    and-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    aget-wide v6, v3, v4

    const/4 v1, 0x1

    shl-long/2addr v6, v1

    aput-wide v6, v3, v4

    if-eqz v2, :cond_4

    aget-wide v6, v3, v4

    const-wide/16 v8, 0x1

    xor-long/2addr v6, v8

    aput-wide v6, v3, v4

    :cond_4
    if-eqz v0, :cond_5

    aget-wide v0, v3, v4

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, v2, v5

    xor-long/2addr v0, v6

    aput-wide v0, v3, v4

    :cond_5
    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method testBit(I)Z
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, p1, 0x6

    aget-wide v2, v1, v2

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v4, p1, 0x3f

    aget-wide v4, v1, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public testRightmostBit()Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v5, v0, 0x3

    aget-wide v4, v4, v5

    const-wide/16 v6, 0xff

    and-int/lit8 v8, v0, 0x7

    shl-int/lit8 v8, v8, 0x3

    shl-long/2addr v6, v8

    and-long/2addr v4, v6

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v5, 0x10

    const-string v0, ""

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v3

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move-object v1, v0

    :goto_0
    if-ltz v2, :cond_1

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move-object v0, v1

    :goto_2
    if-ltz v2, :cond_5

    const/16 v1, 0x3f

    :goto_3
    if-ltz v1, :cond_3

    aget-wide v4, v3, v2

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v6, v6, v1

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    :cond_4
    if-ne p1, v5, :cond_5

    new-array v4, v5, [C

    fill-array-data v4, :array_0

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x3c

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x38

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x34

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x30

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x2c

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x28

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x24

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x1c

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x18

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x14

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    ushr-long/2addr v6, v5

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0xc

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x8

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/4 v2, 0x4

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto/16 :goto_5

    :cond_5
    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public trace()I
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v4, v0, -0x1

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, v4, :cond_2

    move v2, v1

    :goto_1
    const/16 v5, 0x40

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v6, v5, v3

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v5, v2

    and-long/2addr v6, v8

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    :goto_2
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v6, v3, v4

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v3, v1

    and-long/2addr v6, v8

    cmp-long v3, v6, v10

    if-eqz v3, :cond_3

    xor-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return v0
.end method
