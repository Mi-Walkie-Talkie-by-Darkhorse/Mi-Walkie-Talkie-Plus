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

    const/16 v0, 0x40

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    new-array v0, v0, [J

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

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    :goto_0
    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    aput-wide v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 v2, v2, 0x40

    ushr-long/2addr p1, v2

    aput-wide p1, v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide p1

    aput-wide p1, v0, v1

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, p1, v1

    iget p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 p2, p2, 0x40

    ushr-long/2addr v2, p2

    aput-wide v2, p1, v1

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v0, v2

    aput-wide v4, v1, v3

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V

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
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private assign([B)V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, v0, 0x3

    aget-wide v3, v1, v2

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget-byte v5, p1, v5

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    and-int/lit8 v7, v0, 0x7

    shl-int/lit8 v7, v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assign([J)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getElement()[J
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v1, v0

    new-array v1, v1, [J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private getElementReverseOrder()[J
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v1, v2, :cond_1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    ushr-int/lit8 v2, v1, 0x6

    aget-wide v3, v0, v2

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v6, v1, 0x3f

    aget-wide v6, v5, v6

    or-long/2addr v3, v6

    aput-wide v3, v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v5, v4, v0

    xor-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method assignOne()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    aput-wide v3, v0, v1

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
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v3, v2, v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v5, v2, v1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
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

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x1f

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    if-ltz v0, :cond_1

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v5, v4

    int-to-long v5, v5

    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v7, v0

    and-long/2addr v5, v8

    cmp-long v7, v5, v2

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    sub-int/2addr v0, v4

    const/4 v5, 0x1

    :goto_1
    if-ltz v0, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    const/4 v7, 0x1

    :goto_2
    if-gt v7, v5, :cond_2

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->squareThis()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v6, v4

    int-to-long v6, v6

    sget-object v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v9, v8, v0

    and-long/2addr v6, v9

    cmp-long v8, v6, v2

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareThis()V

    invoke-interface {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareThis()V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public isOne()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, -0x1

    and-long v3, v4, v6

    cmp-long v5, v3, v6

    if-nez v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v3, v1

    aget-wide v3, v2, v3

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v6, v5, -0x1

    aget-wide v6, v2, v6

    and-long/2addr v3, v6

    sub-int/2addr v5, v1

    aget-wide v5, v2, v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v3, v0

    :cond_3
    return v3
.end method

.method public isZero()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v2, v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, -0x1

    and-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
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
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_16

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareThis()V

    goto/16 :goto_a

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v2, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v4, v3, [J

    iget-object v5, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    iget-object v5, v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    iget v7, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v7, v6

    sget-object v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v9, 0x3f

    aget-wide v10, v8, v9

    aget-wide v7, v8, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v14, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v13, v14, :cond_14

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    iget v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    const-wide/16 v16, 0x0

    if-ge v14, v6, :cond_3

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v18, v6, v14

    and-int/lit8 v19, v14, 0x3f

    aget-object v20, v5, v14

    aget v20, v20, v12

    aget v6, v6, v20

    aget-object v20, v5, v14

    aget v20, v20, v12

    and-int/lit8 v20, v20, 0x3f

    aget-wide v21, v1, v18

    sget-object v18, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v23, v18, v19

    and-long v21, v21, v23

    cmp-long v19, v21, v16

    if-eqz v19, :cond_2

    aget-wide v21, v2, v6

    aget-wide v19, v18, v20

    and-long v18, v21, v19

    cmp-long v6, v18, v16

    if-eqz v6, :cond_1

    xor-int/lit8 v15, v15, 0x1

    :cond_1
    aget-object v6, v5, v14

    const/16 v18, 0x1

    aget v6, v6, v18

    const/4 v12, -0x1

    if-eq v6, v12, :cond_2

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget-object v12, v5, v14

    aget v12, v12, v18

    aget v6, v6, v12

    aget-object v12, v5, v14

    aget v12, v12, v18

    and-int/2addr v12, v9

    aget-wide v20, v2, v6

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v22, v6, v12

    and-long v20, v20, v22

    cmp-long v6, v20, v16

    if-eqz v6, :cond_2

    xor-int/lit8 v15, v15, 0x1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v6, v6, v13

    and-int/lit8 v12, v13, 0x3f

    if-eqz v15, :cond_4

    aget-wide v14, v4, v6

    sget-object v18, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v20, v18, v12

    xor-long v14, v14, v20

    aput-wide v14, v4, v6

    :cond_4
    iget v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const-wide/16 v14, 0x1

    const/4 v12, 0x1

    if-le v6, v12, :cond_f

    aget-wide v20, v1, v3

    and-long v20, v20, v14

    cmp-long v6, v20, v14

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v12, v3, -0x1

    move/from16 v18, v12

    :goto_3
    if-ltz v18, :cond_8

    aget-wide v20, v1, v18

    and-long v20, v20, v14

    cmp-long v22, v20, v16

    if-eqz v22, :cond_6

    const/16 v20, 0x1

    goto :goto_4

    :cond_6
    const/16 v20, 0x0

    :goto_4
    aget-wide v21, v1, v18

    const/16 v23, 0x1

    ushr-long v21, v21, v23

    aput-wide v21, v1, v18

    if-eqz v6, :cond_7

    aget-wide v21, v1, v18

    xor-long v21, v21, v10

    aput-wide v21, v1, v18

    :cond_7
    add-int/lit8 v18, v18, -0x1

    move/from16 v6, v20

    goto :goto_3

    :cond_8
    aget-wide v20, v1, v3

    const/16 v18, 0x1

    ushr-long v20, v20, v18

    aput-wide v20, v1, v3

    if-eqz v6, :cond_9

    aget-wide v20, v1, v3

    xor-long v20, v20, v7

    aput-wide v20, v1, v3

    :cond_9
    aget-wide v20, v2, v3

    and-long v20, v20, v14

    cmp-long v6, v20, v14

    if-nez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-ltz v12, :cond_d

    aget-wide v20, v2, v12

    and-long v20, v20, v14

    cmp-long v18, v20, v16

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    goto :goto_6

    :cond_b
    const/16 v18, 0x0

    :goto_6
    aget-wide v20, v2, v12

    const/16 v22, 0x1

    ushr-long v20, v20, v22

    aput-wide v20, v2, v12

    if-eqz v6, :cond_c

    aget-wide v20, v2, v12

    xor-long v20, v20, v10

    aput-wide v20, v2, v12

    :cond_c
    add-int/lit8 v12, v12, -0x1

    move/from16 v6, v18

    goto :goto_5

    :cond_d
    aget-wide v14, v2, v3

    const/4 v12, 0x1

    ushr-long/2addr v14, v12

    aput-wide v14, v2, v3

    if-eqz v6, :cond_e

    aget-wide v14, v2, v3

    xor-long/2addr v14, v7

    aput-wide v14, v2, v3

    :cond_e
    const/4 v6, 0x0

    const/4 v12, 0x1

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    aget-wide v16, v1, v6

    and-long v16, v16, v14

    cmp-long v12, v16, v14

    if-nez v12, :cond_10

    const/16 v18, 0x1

    goto :goto_7

    :cond_10
    const/16 v18, 0x0

    :goto_7
    aget-wide v16, v1, v6

    const/4 v12, 0x1

    ushr-long v16, v16, v12

    aput-wide v16, v1, v6

    if-eqz v18, :cond_11

    aget-wide v16, v1, v6

    xor-long v16, v16, v7

    aput-wide v16, v1, v6

    :cond_11
    aget-wide v16, v2, v6

    and-long v16, v16, v14

    cmp-long v12, v16, v14

    if-nez v12, :cond_12

    const/16 v18, 0x1

    goto :goto_8

    :cond_12
    const/16 v18, 0x0

    :goto_8
    aget-wide v14, v2, v6

    const/4 v12, 0x1

    ushr-long/2addr v14, v12

    aput-wide v14, v2, v6

    if-eqz v18, :cond_13

    aget-wide v14, v2, v6

    xor-long/2addr v14, v7

    aput-wide v14, v2, v6

    :cond_13
    :goto_9
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_14
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    :goto_a
    return-void

    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The elements have different representation: not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
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

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->trace()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v3, 0x3f

    aget-wide v4, v1, v3

    const-wide/16 v6, 0x1

    iget v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v1, v1, [J

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_0
    iget v13, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v14, v13, -0x1

    if-ge v8, v14, :cond_7

    const/4 v13, 0x1

    :goto_1
    const/16 v14, 0x40

    if-ge v13, v14, :cond_3

    sget-object v14, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v15, v14, v13

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v17, v2, v8

    and-long v15, v15, v17

    cmp-long v2, v15, v9

    if-eqz v2, :cond_0

    add-int/lit8 v2, v13, -0x1

    aget-wide v15, v14, v2

    and-long v14, v11, v15

    cmp-long v2, v14, v9

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v14, v2, v8

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v17, v2, v13

    and-long v14, v14, v17

    cmp-long v16, v14, v9

    if-nez v16, :cond_1

    add-int/lit8 v14, v13, -0x1

    aget-wide v14, v2, v14

    and-long/2addr v14, v11

    cmp-long v2, v14, v9

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v2, v13

    xor-long/2addr v11, v14

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    aput-wide v11, v1, v8

    and-long/2addr v11, v4

    cmp-long v2, v11, v9

    if-eqz v2, :cond_4

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, v11, v12

    and-long v11, v6, v12

    cmp-long v13, v11, v6

    if-eqz v13, :cond_5

    :cond_4
    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v11, v8, 0x1

    aget-wide v11, v2, v11

    and-long/2addr v11, v6

    cmp-long v2, v11, v9

    if-nez v2, :cond_6

    :cond_5
    move-wide v11, v9

    goto :goto_2

    :cond_6
    move-wide v11, v6

    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    and-int/2addr v2, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v4, 0x1

    sub-int/2addr v13, v4

    aget-wide v4, v3, v13

    const/4 v3, 0x1

    :goto_3
    if-ge v3, v2, :cond_b

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v7, v6, v3

    and-long/2addr v7, v4

    cmp-long v13, v7, v9

    if-eqz v13, :cond_8

    add-int/lit8 v7, v3, -0x1

    aget-wide v7, v6, v7

    and-long v6, v7, v11

    cmp-long v8, v6, v9

    if-nez v8, :cond_a

    :cond_8
    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v7, v6, v3

    and-long/2addr v7, v4

    cmp-long v13, v7, v9

    if-nez v13, :cond_9

    add-int/lit8 v7, v3, -0x1

    aget-wide v7, v6, v7

    and-long v6, v7, v11

    cmp-long v8, v6, v9

    if-eqz v8, :cond_a

    :cond_9
    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v7, v6, v3

    xor-long v6, v11, v7

    move-wide v11, v6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-wide v11, v1, v2

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V

    return-object v2

    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
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
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v4, v3

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v6, 0x3f

    aget-wide v6, v5, v6

    const/4 v5, 0x0

    aget-wide v8, v1, v5

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-eqz v14, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move v9, v2

    :goto_1
    if-ltz v9, :cond_4

    aget-wide v14, v1, v9

    and-long/2addr v14, v10

    cmp-long v16, v14, v12

    if-eqz v16, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    aget-wide v15, v1, v9

    ushr-long/2addr v15, v3

    aput-wide v15, v1, v9

    if-eqz v8, :cond_3

    if-ne v9, v2, :cond_2

    aget-wide v15, v1, v9

    sget-object v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v17, v8, v4

    xor-long v15, v15, v17

    aput-wide v15, v1, v9

    goto :goto_3

    :cond_2
    aget-wide v15, v1, v9

    xor-long/2addr v15, v6

    aput-wide v15, v1, v9

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, -0x1

    move v8, v14

    goto :goto_1

    :cond_4
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public squareThis()V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v4, v3

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v6, 0x3f

    aget-wide v6, v5, v6

    aget-wide v8, v1, v2

    aget-wide v10, v5, v4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    const-wide/16 v12, 0x1

    if-ge v9, v2, :cond_3

    aget-wide v14, v1, v9

    and-long/2addr v14, v6

    cmp-long v16, v14, v10

    if-eqz v16, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    aget-wide v15, v1, v9

    shl-long/2addr v15, v3

    aput-wide v15, v1, v9

    if-eqz v8, :cond_2

    aget-wide v15, v1, v9

    xor-long/2addr v12, v15

    aput-wide v12, v1, v9

    :cond_2
    add-int/lit8 v9, v9, 0x1

    move v8, v14

    goto :goto_1

    :cond_3
    aget-wide v6, v1, v2

    sget-object v9, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v9, v4

    and-long/2addr v6, v14

    cmp-long v9, v6, v10

    if-eqz v9, :cond_4

    const/4 v5, 0x1

    :cond_4
    aget-wide v6, v1, v2

    shl-long/2addr v6, v3

    aput-wide v6, v1, v2

    if-eqz v8, :cond_5

    aget-wide v6, v1, v2

    xor-long/2addr v6, v12

    aput-wide v6, v1, v2

    :cond_5
    if-eqz v5, :cond_6

    aget-wide v5, v1, v2

    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/2addr v4, v3

    aget-wide v3, v7, v4

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    :cond_6
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method testBit(I)Z
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, p1, 0x6

    aget-wide v2, v1, v2

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 p1, p1, 0x3f

    aget-wide v4, v1, p1

    and-long v1, v2, v4

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public testRightmostBit()Z
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-wide v3, v0, v1

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v1, v2

    aget-wide v5, v0, v1

    and-long v0, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public toByteArray()[B
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v5, v2, 0x3

    aget-wide v5, v4, v5

    const-wide/16 v7, 0xff

    and-int/lit8 v4, v2, 0x7

    shl-int/lit8 v4, v4, 0x3

    shl-long/2addr v7, v4

    and-long/2addr v5, v7

    ushr-long v4, v5, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

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
    .locals 12

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    const/4 v2, 0x2

    const-string v3, ""

    if-ne p1, v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const-string p1, "0"

    const-string v4, "1"

    const-wide/16 v5, 0x0

    if-ltz v1, :cond_1

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-wide v7, v0, v7

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v1

    and-long/2addr v7, v9

    cmp-long v9, v7, v5

    if-nez v9, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v3, p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_5

    const/16 v2, 0x3f

    :goto_3
    if-ltz v2, :cond_3

    aget-wide v7, v0, v1

    sget-object v9, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v9, v2

    and-long/2addr v7, v10

    cmp-long v9, v7, v5

    new-instance v7, Ljava/lang/StringBuilder;

    if-nez v9, :cond_2

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    const/16 v1, 0x10

    if-ne p1, v1, :cond_5

    new-array p1, v1, [C

    fill-array-data p1, :array_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-ltz v2, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x3c

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x38

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x34

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x30

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x2c

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x28

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x24

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x20

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x1c

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x18

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x14

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    ushr-long/2addr v5, v1

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0xc

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/16 v3, 0x8

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    const/4 v3, 0x4

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v2

    long-to-int v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5

    :cond_5
    return-object v3

    nop

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

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    if-ge v2, v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x40

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v8, v7, v2

    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v7, v6

    and-long v7, v8, v10

    cmp-long v9, v7, v4

    if-eqz v9, :cond_0

    xor-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    :goto_2
    if-ge v1, v2, :cond_4

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v7, v6, v0

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v9, v6, v1

    and-long v6, v7, v9

    cmp-long v8, v6, v4

    if-eqz v8, :cond_3

    xor-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return v3
.end method
