.class public Lorg/bouncycastle/crypto/macs/SipHash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field protected final c:I

.field protected final d:I

.field protected k0:J

.field protected k1:J

.field protected m:J

.field protected v0:J

.field protected v1:J

.field protected v2:J

.field protected v3:J

.field protected wordCount:I

.field protected wordPos:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iput v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    iput v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iput v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    iput v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    iput p2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    return-void
.end method

.method protected static rotateLeft(JI)J
    .locals 4

    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected applySipRounds(I)V
    .locals 11

    const/16 v10, 0x20

    iget-wide v8, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    add-long/2addr v8, v6

    add-long/2addr v4, v2

    const/16 v1, 0xd

    invoke-static {v6, v7, v1}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v6

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    xor-long/2addr v6, v8

    xor-long/2addr v2, v4

    invoke-static {v8, v9, v10}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v8

    add-long/2addr v4, v6

    add-long/2addr v8, v2

    const/16 v1, 0x11

    invoke-static {v6, v7, v1}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v6

    const/16 v1, 0x15

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    xor-long/2addr v6, v4

    xor-long/2addr v2, v8

    invoke-static {v4, v5, v10}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-wide v8, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iput-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    return-void
.end method

.method public doFinal([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->doFinal()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method public doFinal()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/16 v6, 0xff

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    rsub-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    xor-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    return-wide v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipHash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'params\' must be an instance of KeyParameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'params\' must be a 128-bit key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    return-void
.end method

.method protected processMessageWord()V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iput v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    iput v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    return-void
.end method

.method public update(B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v6, 0x8

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    ushr-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    and-int/lit8 v1, p3, -0x8

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    if-nez v2, :cond_3

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v4, 0x8

    ushr-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sub-int v0, p3, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    shl-int/lit8 v2, v2, 0x3

    :goto_2
    if-ge v0, v1, :cond_4

    add-int v3, p2, v0

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    shl-long v6, v4, v2

    iget-wide v8, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    neg-int v3, v2

    ushr-long/2addr v8, v3

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v0, p3, :cond_2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v1, 0x8

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
