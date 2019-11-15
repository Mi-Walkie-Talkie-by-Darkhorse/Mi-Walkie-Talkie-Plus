.class public Lorg/bouncycastle/crypto/digests/Blake2bDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final BLOCK_LENGTH_BYTES:I = 0x80

.field private static final blake2b_IV:[J

.field private static final blake2b_sigma:[[B

.field private static rOUNDS:I


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private chainValue:[J

.field private digestLength:I

.field private f0:J

.field private internalState:[J

.field private key:[B

.field private keyLength:I

.field private personalization:[B

.field private salt:[B

.field private t0:J

.field private t1:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0xc

    const/16 v4, 0x8

    const/16 v3, 0x10

    new-array v0, v4, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    new-array v0, v5, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    sput v5, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->rOUNDS:I

    return-void

    :array_0
    .array-data 8
        0x6a09e667f3bcc908L    # 6.344059688352415E202
        -0x4498517a7b3558c5L    # -1.5671250923562117E-22
        0x3c6ef372fe94f82bL    # 1.342284505169847E-17
        -0x5ab00ac5a0e2c90fL
        0x510e527fade682d1L    # 2.876275032471325E82
        -0x64fa9773d4c193e1L
        0x1f83d9abfb41bd6bL    # 7.229011495228878E-157
        0x5be0cd19137e2179L    # 3.816167663240759E134
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_2
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x8t
        0xct
        0x0t
        0x5t
        0x2t
        0xft
        0xdt
        0xat
        0xet
        0x3t
        0x6t
        0x7t
        0x1t
        0x9t
        0x4t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x9t
        0x3t
        0x1t
        0xdt
        0xct
        0xbt
        0xet
        0x2t
        0x6t
        0x5t
        0xat
        0x4t
        0x0t
        0xft
        0x8t
    .end array-data

    :array_5
    .array-data 1
        0x9t
        0x0t
        0x5t
        0x7t
        0x2t
        0x4t
        0xat
        0xft
        0xet
        0x1t
        0xbt
        0xct
        0x6t
        0x8t
        0x3t
        0xdt
    .end array-data

    :array_6
    .array-data 1
        0x2t
        0xct
        0x6t
        0xat
        0x0t
        0xbt
        0x8t
        0x3t
        0x4t
        0xdt
        0x7t
        0x5t
        0xft
        0xet
        0x1t
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0xct
        0x5t
        0x1t
        0xft
        0xet
        0xdt
        0x4t
        0xat
        0x0t
        0x7t
        0x6t
        0x3t
        0x9t
        0x2t
        0x8t
        0xbt
    .end array-data

    :array_8
    .array-data 1
        0xdt
        0xbt
        0x7t
        0xet
        0xct
        0x1t
        0x3t
        0x9t
        0x5t
        0x0t
        0xft
        0x4t
        0x8t
        0x6t
        0x2t
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x6t
        0xft
        0xet
        0x9t
        0xbt
        0x3t
        0x0t
        0x8t
        0xct
        0x2t
        0xdt
        0x7t
        0x1t
        0x4t
        0xat
        0x5t
    .end array-data

    :array_a
    .array-data 1
        0xat
        0x2t
        0x8t
        0x4t
        0x7t
        0x6t
        0x1t
        0x5t
        0xft
        0xbt
        0x9t
        0xet
        0x3t
        0xct
        0xdt
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_c
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x180

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blake2b digest restricted to one of [160, 256, 384, 512]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake2bDigest;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iput v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iput v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    const/16 v6, 0x80

    const-wide/16 v4, 0x0

    const/16 v3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    new-array v0, v6, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keys > 64 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    :cond_1
    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void
.end method

.method public constructor <init>([BI[B[B)V
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v4, 0x40

    const/4 v1, 0x0

    const/16 v3, 0x10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    new-array v0, v3, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-le p2, v4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid digest length (required: 1 - 64)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    if-eqz p3, :cond_3

    array-length v0, p3

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt length must be exactly 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-eqz p4, :cond_5

    array-length v0, p4

    if-eq v0, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "personalization length must be exactly 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    array-length v1, p4

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    if-eqz p1, :cond_7

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    if-le v0, v4, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keys > 64 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    array-length v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    :cond_7
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void
.end method

.method private G(JJIIII)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p5

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p6

    add-long/2addr v2, v4

    add-long/2addr v2, p1

    aput-wide v2, v0, p5

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p5

    xor-long/2addr v2, v4

    const/16 v1, 0x20

    invoke-direct {p0, v2, v3, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->rotr64(JI)J

    move-result-wide v2

    aput-wide v2, v0, p8

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p7

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p8

    add-long/2addr v2, v4

    aput-wide v2, v0, p7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p6

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p7

    xor-long/2addr v2, v4

    const/16 v1, 0x18

    invoke-direct {p0, v2, v3, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->rotr64(JI)J

    move-result-wide v2

    aput-wide v2, v0, p6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p5

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p6

    add-long/2addr v2, v4

    add-long/2addr v2, p3

    aput-wide v2, v0, p5

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p5

    xor-long/2addr v2, v4

    const/16 v1, 0x10

    invoke-direct {p0, v2, v3, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->rotr64(JI)J

    move-result-wide v2

    aput-wide v2, v0, p8

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p7

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p8

    add-long/2addr v2, v4

    aput-wide v2, v0, p7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p6

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p7

    xor-long/2addr v2, v4

    const/16 v1, 0x3f

    invoke-direct {p0, v2, v3, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->rotr64(JI)J

    move-result-wide v2

    aput-wide v2, v0, p6

    return-void
.end method

.method private final bytes2long([BI)J
    .locals 8

    const-wide/16 v6, 0xff

    aget-byte v0, p1, p2

    int-to-long v0, v0

    and-long/2addr v0, v6

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private compress([BI)V
    .locals 11

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->initializeInternalState()V

    const/16 v0, 0x10

    new-array v10, v0, [J

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p2

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bytes2long([BI)J

    move-result-wide v2

    aput-wide v2, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->rOUNDS:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aget-wide v2, v10, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    aget-wide v4, v10, v1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/16 v9, 0xc

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    aget-wide v2, v10, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/4 v4, 0x3

    aget-byte v1, v1, v4

    aget-wide v4, v10, v1

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/16 v8, 0x9

    const/16 v9, 0xd

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    aget-wide v2, v10, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/4 v4, 0x5

    aget-byte v1, v1, v4

    aget-wide v4, v10, v1

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/16 v8, 0xa

    const/16 v9, 0xe

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    aget-wide v2, v10, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/4 v4, 0x7

    aget-byte v1, v1, v4

    aget-wide v4, v10, v1

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/16 v8, 0xb

    const/16 v9, 0xf

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/16 v2, 0x8

    aget-byte v1, v1, v2

    aget-wide v2, v10, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/16 v4, 0x9

    aget-byte v1, v1, v4

    aget-wide v4, v10, v1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v8, 0xa

    const/16 v9, 0xf

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/16 v2, 0xa

    aget-byte v1, v1, v2

    aget-wide v2, v10, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/16 v4, 0xb

    aget-byte v1, v1, v4

    aget-wide v4, v10, v1

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/16 v8, 0xb

    const/16 v9, 0xc

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    aget-wide v2, v10, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/16 v4, 0xd

    aget-byte v1, v1, v4

    aget-wide v4, v10, v1

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/16 v8, 0x8

    const/16 v9, 0xd

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    aget-wide v2, v10, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v1, v1, v0

    const/16 v4, 0xf

    aget-byte v1, v1, v4

    aget-wide v4, v10, v1

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/16 v8, 0x9

    const/16 v9, 0xe

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v4, v0

    xor-long/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    add-int/lit8 v5, v0, 0x8

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private init()V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    aget-wide v2, v1, v6

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    const/high16 v4, 0x1010000

    or-int/2addr v1, v4

    int-to-long v4, v1

    xor-long/2addr v2, v4

    aput-wide v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    const/4 v1, 0x2

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    const/4 v1, 0x3

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    aget-wide v2, v1, v7

    aput-wide v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    aget-wide v2, v1, v8

    aput-wide v2, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v2, v0, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    invoke-direct {p0, v1, v6}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bytes2long([BI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v2, v0, v8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bytes2long([BI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v8

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    aget-wide v2, v1, v9

    aput-wide v2, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    aget-wide v2, v1, v10

    aput-wide v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v2, v0, v9

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    invoke-direct {p0, v1, v6}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bytes2long([BI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v2, v0, v10

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bytes2long([BI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v10

    :cond_1
    return-void
.end method

.method private initializeInternalState()V
    .locals 6

    const/4 v5, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    const/16 v1, 0xc

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    sget-object v4, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    sget-object v4, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    const/16 v1, 0xe

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    sget-object v4, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    const/16 v1, 0xf

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    return-void
.end method

.method private final long2bytes(J)[B
    .locals 5

    const/16 v3, 0x8

    new-array v0, v3, [B

    const/4 v1, 0x0

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-long v2, p1, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x38

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private rotr64(JI)J
    .locals 5

    ushr-long v0, p1, p3

    rsub-int/lit8 v2, p3, 0x40

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public clearKey()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public clearSalt()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    int-to-long v2, v0

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    neg-long v4, v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    invoke-static {v0, v6, v7}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    mul-int/lit8 v2, v0, 0x8

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v2, v2, v0

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->long2bytes(J)[B

    move-result-object v2

    mul-int/lit8 v3, v0, 0x8

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    add-int/lit8 v4, v4, -0x8

    if-ge v3, v4, :cond_1

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, p2

    const/16 v4, 0x8

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, p2

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    mul-int/lit8 v5, v0, 0x8

    sub-int/2addr v4, v5

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    invoke-static {v0, v6, v7}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Blake2b"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void
.end method

.method public update(B)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    rsub-int v0, v0, 0x80

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    const-wide/16 v2, 0x80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    aput-byte p1, v0, v4

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    goto :goto_0
.end method

.method public update([BII)V
    .locals 12

    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    rsub-int v0, v0, 0x80

    if-ge v0, p3, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :goto_1
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x80

    add-int/2addr v0, p2

    :goto_2
    if-ge v0, v2, :cond_5

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    add-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    add-int v2, p2, p3

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
