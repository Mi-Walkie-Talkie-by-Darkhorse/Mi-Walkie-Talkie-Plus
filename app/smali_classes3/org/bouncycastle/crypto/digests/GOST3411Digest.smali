.class public Lorg/bouncycastle/crypto/digests/GOST3411Digest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final C2:[B

.field private static final DIGEST_LENGTH:I = 0x20


# instance fields
.field private C:[[B

.field private H:[B

.field private K:[B

.field private L:[B

.field private M:[B

.field S:[B

.field private Sum:[B

.field U:[B

.field V:[B

.field W:[B

.field a:[B

.field private byteCount:J

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private sBox:[B

.field wS:[S

.field w_S:[S

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v3, 0x10

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    new-instance v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    const-string v0, "D-A"

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/GOST3411Digest;)V
    .locals 4

    const/16 v3, 0x10

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    new-instance v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    const/16 v3, 0x10

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    new-instance v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    return-void
.end method

.method private A([B)[B
    .locals 7

    const/16 v6, 0x18

    const/16 v5, 0x8

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    aget-byte v3, p1, v0

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, v5, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    invoke-static {v0, v1, p1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private E([B[BI[BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p4, p5, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void
.end method

.method private P([B)[B
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x10

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    return-object v0
.end method

.method private cpyBytesToShort([B[S)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cpyShortToBytes([S[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v2, p1, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    mul-int/lit8 v1, v0, 0x2

    aget-short v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private finish()V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-static {v0, v1, v2, v4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    return-void
.end method

.method private fw([B)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xf

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cpyBytesToShort([B[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v1, v1, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v2, v2, v6

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v3, 0x3

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/16 v3, 0xc

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v2, v2, v4

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-static {v0, v6, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cpyShortToBytes([S[B)V

    return-void
.end method

.method private sumByteArray([B)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>(Lorg/bouncycastle/crypto/digests/GOST3411Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST3411"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock([BI)V
    .locals 11

    const/16 v10, 0x20

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    invoke-static {p1, p2, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    invoke-static {v0, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    invoke-static {v0, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    :goto_0
    if-ge v0, v10, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v4, v4, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const/4 v0, 0x4

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v2

    move v0, v3

    :goto_2
    if-ge v0, v10, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v5, v2, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v6, v6, v1

    aget-byte v6, v6, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    move v0, v3

    :goto_3
    if-ge v0, v10, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    mul-int/lit8 v7, v1, 0x8

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    mul-int/lit8 v9, v1, 0x8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_4
    const/16 v1, 0xc

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_5
    if-ge v0, v10, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    aget-byte v4, v4, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    move v0, v3

    :goto_6
    if-ge v0, v10, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    aget-byte v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v4, v4, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_7
    const/16 v1, 0x3d

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reset()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v4

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v4

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v5

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v5

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_5
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_6
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v5

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v5

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v6

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v6

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v7

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v7

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    return-void
.end method

.method public update(B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    return-void
.end method

.method public update([BII)V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p3, :cond_2

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method
