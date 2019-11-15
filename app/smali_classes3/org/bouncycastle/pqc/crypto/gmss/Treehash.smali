.class public Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
.super Ljava/lang/Object;


# instance fields
.field private firstNode:[B

.field private firstNodeHeight:I

.field private heightOfNodes:Ljava/util/Vector;

.field private isFinished:Z

.field private isInitialized:Z

.field private maxHeight:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private seedActive:[B

.field private seedInitialized:Z

.field private seedNext:[B

.field private tailLength:I

.field private tailStack:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;ILorg/bouncycastle/crypto/Digest;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    aget v0, p3, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    aget v0, p3, v4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    aget v0, p3, v5

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    const/4 v0, 0x3

    aget v0, p3, v0

    if-ne v0, v4, :cond_0

    iput-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    :goto_0
    const/4 v0, 0x4

    aget v0, p3, v0

    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    :goto_1
    const/4 v0, 0x5

    aget v0, p3, v0

    if-ne v0, v4, :cond_2

    iput-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    :goto_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    move v0, v1

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    add-int/lit8 v3, v0, 0x6

    aget v3, p3, v3

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    goto :goto_2

    :cond_3
    aget-object v0, p2, v1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    aget-object v0, p2, v4

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    aget-object v0, p2, v5

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    :goto_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    add-int/lit8 v2, v1, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    return-void
.end method

.method public getFirstNode()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    return-object v0
.end method

.method public getFirstNodeHeight()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    goto :goto_0
.end method

.method public getLowestNodeHeight()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSeedActive()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    aput-object v3, v0, v2

    move v2, v1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    aput-object v1, v0, v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getStatInt()[I
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v1, v1, 0x6

    new-array v2, v1, [I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    aput v1, v2, v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    aput v1, v2, v4

    const/4 v1, 0x2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    aput v3, v2, v1

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    if-eqz v1, :cond_0

    aput v4, v2, v5

    :goto_0
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-eqz v1, :cond_1

    aput v4, v2, v6

    :goto_1
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    if-eqz v1, :cond_2

    aput v4, v2, v7

    :goto_2
    move v1, v0

    :goto_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v1, v0, :cond_3

    add-int/lit8 v3, v1, 0x6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_0
    aput v0, v2, v5

    goto :goto_0

    :cond_1
    aput v0, v2, v6

    goto :goto_1

    :cond_2
    aput v0, v2, v7

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method public getTailStack()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public initializeSeed([B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    return-void
.end method

.method public setFirstNode([B)V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->initialize()V

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "Treehash    : "

    move-object v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v3, v3, 0x6

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v0, v0, 0x3

    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V
    .locals 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "No more update possible for treehash instance!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Treehash instance not initialized before update"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_4

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    :cond_3
    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    invoke-static {p2, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v3, v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array p2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p2, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v1, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    goto/16 :goto_1
.end method

.method public updateNextSeed(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    return-void
.end method

.method public wasFinished()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    return v0
.end method

.method public wasInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    return v0
.end method
