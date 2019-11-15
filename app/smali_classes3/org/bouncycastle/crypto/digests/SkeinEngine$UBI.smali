.class Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SkeinEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UBI"
.end annotation


# instance fields
.field private currentBlock:[B

.field private currentOffset:I

.field private message:[J

.field final synthetic this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

.field private final tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SkeinEngine;I)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    return-void
.end method

.method private processBlock([J)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;->threefish:Lorg/bouncycastle/crypto/engines/ThreefishEngine;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v3, v3, Lorg/bouncycastle/crypto/digests/SkeinEngine;->chain:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->getWords()[J

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->init(Z[J[J)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    mul-int/lit8 v4, v0, 0x8

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->this$0:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;->threefish:Lorg/bouncycastle/crypto/engines/ThreefishEngine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    invoke-virtual {v0, v2, p1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->processBlock([J[J)I

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    aget-wide v4, v0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public doFinal([J)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->setFinal(Z)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->processBlock([J)V

    return-void
.end method

.method public reset(I)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->setType(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    return-void
.end method

.method public reset(Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;)V
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->clone([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->clone([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->message:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->reset(Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;)V

    return-void
.end method

.method public update([BII[J)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-le p3, v0, :cond_1

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->processBlock([J)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->setFirst(Z)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    :cond_0
    sub-int v2, p3, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentBlock:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->currentOffset:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UBI;->tweak:Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->advancePosition(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
