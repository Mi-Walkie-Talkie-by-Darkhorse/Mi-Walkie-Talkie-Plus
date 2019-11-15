.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
.super Ljava/lang/Object;


# instance fields
.field private AuthPath:[[B

.field private K:I

.field private digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private heightOfNextSeed:I

.field private heightOfNodes:Ljava/util/Vector;

.field private heightOfTree:I

.field private index:[I

.field private indexForNextSeed:I

.field private isFinished:Z

.field private isInitialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private retain:[Ljava/util/Vector;

.field private root:[B

.field private tailStack:Ljava/util/Vector;

.field private treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {p3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    filled-new-array {p1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    aget v0, p3, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    aget v0, p3, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    const/4 v0, 0x2

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    const/4 v0, 0x3

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    const/4 v0, 0x4

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    const/4 v0, 0x5

    aget v0, p3, v0

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    :goto_0
    const/4 v0, 0x6

    aget v0, p3, v0

    if-ne v0, v2, :cond_1

    iput-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    :goto_1
    const/4 v0, 0x7

    aget v2, p3, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    move v0, v1

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    add-int/lit8 v4, v0, 0x8

    aget v4, p3, v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    aget v4, p3, v4

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    aget-object v0, p2, v1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    move v0, v1

    :goto_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p2, v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    :goto_5
    if-ge v1, v2, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    aget-object v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getAuthPath()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getRetain()[Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getStack()Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getStatByte()[[B
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v0, :cond_0

    move v2, v1

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    const/16 v3, 0x40

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    aput-object v3, v0, v1

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v5, v5, v3

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v1, v1, 0x1

    add-int v4, v1, v3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    aput-object v1, v0, v4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public getStatInt()[I
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    new-array v3, v2, [I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    aput v2, v3, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    aput v2, v3, v5

    const/4 v2, 0x2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    aput v4, v3, v2

    const/4 v2, 0x3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    aput v4, v3, v2

    const/4 v2, 0x4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    aput v4, v3, v2

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    if-eqz v2, :cond_1

    aput v5, v3, v6

    :goto_1
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    if-eqz v2, :cond_2

    aput v5, v3, v7

    :goto_2
    const/4 v2, 0x7

    aput v1, v3, v2

    move v2, v0

    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x8

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v5, v5, v2

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    aput v0, v3, v6

    goto :goto_1

    :cond_2
    aput v0, v3, v7

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v0, v0, 0x8

    add-int v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_4
    return-object v3
.end method

.method public getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/Vector;)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v0, v2

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-direct {v3, p1, v0, v4}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;-><init>(Ljava/util/Vector;ILorg/bouncycastle/crypto/Digest;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    return-void
.end method

.method public initializeTreehashSeed([BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->initializeSeed([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v2, ""

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    move-object v3, v2

    move v2, v1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    if-ge v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update([B)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Too much updates for Tree!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "GMSSRootCalc not initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v2

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v0, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v2

    add-int/lit8 v0, v0, -0x3

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v2

    if-lt v0, v7, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v2

    if-ne v0, v7, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->setFirstNode([B)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    shl-int/lit8 v1, v1, 0x1

    new-array v4, v1, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    move-object v3, v0

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->removeElementAt(I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v3, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v4

    invoke-interface {v0, v4, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v3, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v1, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v1, v1, v0

    if-ne v1, v8, :cond_7

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v1, v1, v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v3, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v5

    if-lt v0, v1, :cond_9

    if-nez v0, :cond_8

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "M\ufffd\ufffd\ufffdP"

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v1, v1, v0

    add-int/lit8 v1, v1, -0x3

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_b

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v1, v1, v0

    if-lt v1, v7, :cond_b

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v5, v6

    sub-int v5, v0, v5

    aget-object v1, v1, v5

    invoke-virtual {v1, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move v1, v0

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v1, v1, v0

    if-ne v1, v7, :cond_b

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->setFirstNode([B)V

    move v1, v0

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ne v1, v0, :cond_0

    iput-boolean v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    iput-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    goto/16 :goto_0

    :cond_b
    move v1, v0

    goto/16 :goto_2
.end method

.method public update([B[B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    :cond_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    return-void
.end method

.method public wasFinished()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    return v0
.end method

.method public wasInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    return v0
.end method
