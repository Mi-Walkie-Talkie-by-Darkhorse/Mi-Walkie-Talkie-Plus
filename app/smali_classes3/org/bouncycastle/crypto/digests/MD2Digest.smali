.class public Lorg/bouncycastle/crypto/digests/MD2Digest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S:[B


# instance fields
.field private C:[B

.field private COff:I

.field private M:[B

.field private X:[B

.field private mOff:I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    return-void

    :array_0
    .array-data 1
        0x29t
        0x2et
        0x43t
        -0x37t
        -0x5et
        -0x28t
        0x7ct
        0x1t
        0x3dt
        0x36t
        0x54t
        -0x5ft
        -0x14t
        -0x10t
        0x6t
        0x13t
        0x62t
        -0x59t
        0x5t
        -0xdt
        -0x40t
        -0x39t
        0x73t
        -0x74t
        -0x68t
        -0x6dt
        0x2bt
        -0x27t
        -0x44t
        0x4ct
        -0x7et
        -0x36t
        0x1et
        -0x65t
        0x57t
        0x3ct
        -0x3t
        -0x2ct
        -0x20t
        0x16t
        0x67t
        0x42t
        0x6ft
        0x18t
        -0x76t
        0x17t
        -0x1bt
        0x12t
        -0x42t
        0x4et
        -0x3ct
        -0x2at
        -0x26t
        -0x62t
        -0x22t
        0x49t
        -0x60t
        -0x5t
        -0xbt
        -0x72t
        -0x45t
        0x2ft
        -0x12t
        0x7at
        -0x57t
        0x68t
        0x79t
        -0x6ft
        0x15t
        -0x4et
        0x7t
        0x3ft
        -0x6ct
        -0x3et
        0x10t
        -0x77t
        0xbt
        0x22t
        0x5ft
        0x21t
        -0x80t
        0x7ft
        0x5dt
        -0x66t
        0x5at
        -0x70t
        0x32t
        0x27t
        0x35t
        0x3et
        -0x34t
        -0x19t
        -0x41t
        -0x9t
        -0x69t
        0x3t
        -0x1t
        0x19t
        0x30t
        -0x4dt
        0x48t
        -0x5bt
        -0x4bt
        -0x2ft
        -0x29t
        0x5et
        -0x6et
        0x2at
        -0x54t
        0x56t
        -0x56t
        -0x3at
        0x4ft
        -0x48t
        0x38t
        -0x2et
        -0x6at
        -0x5ct
        0x7dt
        -0x4at
        0x76t
        -0x4t
        0x6bt
        -0x1et
        -0x64t
        0x74t
        0x4t
        -0xft
        0x45t
        -0x63t
        0x70t
        0x59t
        0x64t
        0x71t
        -0x79t
        0x20t
        -0x7at
        0x5bt
        -0x31t
        0x65t
        -0x1at
        0x2dt
        -0x58t
        0x2t
        0x1bt
        0x60t
        0x25t
        -0x53t
        -0x52t
        -0x50t
        -0x47t
        -0xat
        0x1ct
        0x46t
        0x61t
        0x69t
        0x34t
        0x40t
        0x7et
        0xft
        0x55t
        0x47t
        -0x5dt
        0x23t
        -0x23t
        0x51t
        -0x51t
        0x3at
        -0x3dt
        0x5ct
        -0x7t
        -0x32t
        -0x46t
        -0x3bt
        -0x16t
        0x26t
        0x2ct
        0x53t
        0xdt
        0x6et
        -0x7bt
        0x28t
        -0x7ct
        0x9t
        -0x2dt
        -0x21t
        -0x33t
        -0xct
        0x41t
        -0x7ft
        0x4dt
        0x52t
        0x6at
        -0x24t
        0x37t
        -0x38t
        0x6ct
        -0x3ft
        -0x55t
        -0x6t
        0x24t
        -0x1ft
        0x7bt
        0x8t
        0xct
        -0x43t
        -0x4ft
        0x4at
        0x78t
        -0x78t
        -0x6bt
        -0x75t
        -0x1dt
        0x63t
        -0x18t
        0x6dt
        -0x17t
        -0x35t
        -0x2bt
        -0x2t
        0x3bt
        0x0t
        0x1dt
        0x39t
        -0xet
        -0x11t
        -0x49t
        0xet
        0x66t
        0x58t
        -0x30t
        -0x1ct
        -0x5at
        0x77t
        0x72t
        -0x8t
        -0x15t
        0x75t
        0x4bt
        0xat
        0x31t
        0x44t
        0x50t
        -0x4ct
        -0x71t
        -0x13t
        0x1ft
        0x1at
        -0x25t
        -0x67t
        -0x73t
        0x33t
        -0x61t
        0x11t
        -0x7dt
        0x14t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/MD2Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    return-void
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V
    .locals 4

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->reset()V

    return v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "MD2"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock([B)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v3, v1, 0x10

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x20

    aget-byte v4, p1, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x12

    if-ge p1, v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0x30

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v4, v3, v2

    sget-object v5, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v1, v5, v1

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x100

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected processCheckSum([B)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    const/16 v1, 0xf

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v3, v2, v1

    sget-object v4, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v5, p1, v1

    xor-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    aget-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    array-length v3, v2

    if-eq v1, v3, :cond_2

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    return-void
.end method

.method public update(B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    aput-byte p1, v0, v1

    const/16 p1, 0x10

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x10

    if-le p3, v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    add-int/lit8 p3, p3, -0x10

    add-int/lit8 p2, p2, 0x10

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p3, :cond_2

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method
