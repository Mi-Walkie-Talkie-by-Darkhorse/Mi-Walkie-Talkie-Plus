.class public abstract Lorg/bouncycastle/crypto/engines/SerpentEngineBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field static final PHI:I = -0x61c88647

.field static final ROUNDS:I = 0x20


# instance fields
.field protected X0:I

.field protected X1:I

.field protected X2:I

.field protected X3:I

.field protected encrypting:Z

.field protected wKey:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static rotateLeft(II)I
    .locals 2

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected static rotateRight(II)I
    .locals 2

    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected final LT()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v2, v0

    xor-int/2addr v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v3, v1

    shl-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/4 v2, 0x7

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v0, v2

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    return-void
.end method

.method protected abstract decryptBlock([BI[BI)V
.end method

.method protected abstract encryptBlock([BI[BI)V
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected final ib0(IIII)V
    .locals 5

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p2

    or-int v2, v0, v1

    xor-int/2addr v2, p4

    xor-int v3, p3, v2

    xor-int v4, v1, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    and-int/2addr v1, p4

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    and-int/2addr v1, v0

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    and-int v1, p1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    return-void
.end method

.method protected final ib1(IIII)V
    .locals 4

    xor-int v0, p2, p4

    and-int v1, p2, v0

    xor-int/2addr v1, p1

    xor-int v2, v0, v1

    xor-int v3, p3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    and-int/2addr v0, v1

    xor-int/2addr v0, p2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int/2addr v3, v0

    xor-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/lit8 v1, v1, -0x1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v0, v3

    xor-int v3, v1, v0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    or-int/2addr v0, v1

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    return-void
.end method

.method protected final ib2(IIII)V
    .locals 5

    xor-int v0, p2, p4

    xor-int/lit8 v1, v0, -0x1

    xor-int v2, p1, p3

    xor-int v3, p3, v0

    and-int v4, p2, v3

    xor-int/2addr v4, v2

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    or-int/2addr v1, p1

    xor-int/2addr v1, p4

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/lit8 v0, v3, -0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int/2addr v1, v3

    xor-int v3, v0, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    and-int/2addr v0, p4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    return-void
.end method

.method protected final ib3(IIII)V
    .locals 6

    or-int v0, p1, p2

    xor-int v1, p2, p3

    and-int v2, p2, v1

    xor-int/2addr v2, p1

    xor-int v3, p3, v2

    or-int v4, p4, v2

    xor-int v5, v1, v4

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    or-int/2addr v1, v4

    xor-int/2addr v1, p4

    xor-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int/2addr v1, v0

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    return-void
.end method

.method protected final ib4(IIII)V
    .locals 4

    or-int v0, p3, p4

    and-int/2addr v0, p1

    xor-int/2addr v0, p2

    and-int v1, p1, v0

    xor-int/2addr v1, p3

    xor-int v2, p4, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/lit8 v2, p1, -0x1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    and-int/2addr v1, v3

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int/2addr v1, v2

    xor-int/2addr v1, p4

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    return-void
.end method

.method protected final ib5(IIII)V
    .locals 5

    xor-int/lit8 v0, p3, -0x1

    and-int v1, p2, v0

    xor-int/2addr v1, p4

    and-int v2, p1, v1

    xor-int v3, p2, v0

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int/2addr v3, p2

    and-int v4, p1, v3

    xor-int/2addr v1, v4

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int v1, p1, p4

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int v0, p2, v1

    xor-int v1, p1, p3

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    return-void
.end method

.method protected final ib6(IIII)V
    .locals 5

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p2

    xor-int v2, p3, v1

    or-int v3, p3, v0

    xor-int/2addr v3, p4

    xor-int v4, v2, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    and-int v4, v2, v3

    xor-int/2addr v1, v4

    or-int v4, p2, v1

    xor-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int/2addr v3, p2

    xor-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int/2addr v0, p4

    xor-int v1, v2, v3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    return-void
.end method

.method protected final ib7(IIII)V
    .locals 4

    and-int v0, p1, p2

    or-int/2addr v0, p3

    or-int v1, p1, p2

    and-int/2addr v1, p4

    xor-int v2, v0, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/lit8 v2, p4, -0x1

    xor-int/2addr v1, p2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v2, v3

    or-int/2addr v2, v1

    xor-int/2addr v2, p1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, p3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int/2addr v2, p4

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    and-int/2addr v2, p1

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->makeWorkingKey([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final inverseLT()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v3

    xor-int/2addr v2, v0

    shl-int/lit8 v4, v1, 0x3

    xor-int/2addr v2, v4

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int v2, v3, v1

    xor-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0xd

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    return-void
.end method

.method protected abstract makeWorkingKey([B)[I
.end method

.method public final processBlock([BI[BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encryptBlock([BI[BI)V

    :goto_0
    const/16 v0, 0x10

    return v0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method protected final sb0(IIII)V
    .locals 4

    xor-int v0, p1, p4

    xor-int v1, p3, v0

    xor-int v2, p2, v1

    and-int v3, p1, p4

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    and-int/2addr v0, p2

    xor-int/2addr v0, p1

    or-int v3, p3, v0

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int v3, v1, v0

    and-int/2addr v2, v3

    xor-int/lit8 v1, v1, -0x1

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/lit8 v0, v0, -0x1

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    return-void
.end method

.method protected final sb1(IIII)V
    .locals 4

    xor-int/lit8 v0, p1, -0x1

    xor-int/2addr v0, p2

    or-int v1, p1, v0

    xor-int/2addr v1, p3

    xor-int v2, p4, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    or-int v2, p4, v0

    xor-int/2addr v2, p2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v0, v3

    and-int v3, v1, v2

    xor-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    return-void
.end method

.method protected final sb2(IIII)V
    .locals 5

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p2, p4

    and-int v2, p3, v0

    xor-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int v2, p3, v0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr v3, p3

    and-int/2addr v3, p2

    xor-int v4, v2, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int/2addr v3, p4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    xor-int/2addr v2, p1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    or-int/2addr v0, p4

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    return-void
.end method

.method protected final sb3(IIII)V
    .locals 5

    xor-int v0, p1, p2

    and-int v1, p1, p3

    or-int v2, p1, p4

    xor-int v3, p3, p4

    and-int v4, v0, v2

    or-int/2addr v1, v4

    xor-int v4, v3, v1

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, p2

    xor-int/2addr v1, v2

    and-int v2, v3, v1

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int/2addr v0, v2

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int v1, p2, p4

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    return-void
.end method

.method protected final sb4(IIII)V
    .locals 5

    xor-int v0, p1, p4

    and-int v1, p4, v0

    xor-int/2addr v1, p3

    or-int v2, p2, v1

    xor-int v3, v0, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/lit8 v3, p2, -0x1

    or-int v4, v0, v3

    xor-int/2addr v4, v1

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int/2addr v4, p1

    xor-int/2addr v0, v3

    and-int/2addr v2, v0

    xor-int/2addr v2, v4

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v1, p1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    return-void
.end method

.method protected final sb5(IIII)V
    .locals 5

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p2

    xor-int v2, p1, p4

    xor-int v3, p3, v0

    or-int v4, v1, v2

    xor-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int/2addr v3, p4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr v4, v1

    xor-int/2addr v4, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    or-int/2addr v0, v4

    or-int/2addr v1, v3

    xor-int/2addr v0, v2

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int v1, p2, v3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    return-void
.end method

.method protected final sb6(IIII)V
    .locals 4

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p4

    xor-int v2, p2, v1

    or-int/2addr v0, v1

    xor-int/2addr v0, p3

    xor-int v3, p2, v0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int/2addr v1, v3

    xor-int/2addr v1, p4

    and-int v3, v0, v1

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v1, v0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    return-void
.end method

.method protected final sb7(IIII)V
    .locals 5

    xor-int v0, p2, p3

    and-int v1, p3, v0

    xor-int/2addr v1, p4

    xor-int v2, p1, v1

    or-int v3, p4, v0

    and-int/2addr v3, v2

    xor-int/2addr v3, p2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int/2addr v3, v1

    and-int v4, p1, v2

    xor-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int v0, v2, v3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    and-int/2addr v2, v0

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    return-void
.end method
