.class public Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private currentAuthPath:[[[B

.field private currentRetain:[[Ljava/util/Vector;

.field private currentRootSig:[[B

.field private currentSeed:[[B

.field private currentStack:[Ljava/util/Vector;

.field private currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

.field private gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private index:[I

.field private keep:[[[B

.field private minTreehash:[I

.field private nextAuthPath:[[[B

.field private nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

.field private nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

.field private nextNextSeed:[[B

.field private nextRetain:[[Ljava/util/Vector;

.field private nextRoot:[[B

.field private nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

.field private nextStack:[Ljava/util/Vector;

.field private nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

.field private upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

.field private upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;


# direct methods
.method public constructor <init>([I[[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->index:[I

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentSeed:[[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextNextSeed:[[B

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentAuthPath:[[[B

    iput-object p5, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextAuthPath:[[[B

    iput-object p6, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iput-object p7, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iput-object p8, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentStack:[Ljava/util/Vector;

    iput-object p9, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextStack:[Ljava/util/Vector;

    iput-object p10, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentRetain:[[Ljava/util/Vector;

    iput-object p11, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextRetain:[[Ljava/util/Vector;

    iput-object p12, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->keep:[[[B

    iput-object p13, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object p14, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->minTreehash:[I

    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextRoot:[[B

    move-object/from16 v0, p18

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentRootSig:[[B

    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    return-void
.end method

.method private static clone([Ljava/util/Vector;)[Ljava/util/Vector;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/util/Vector;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static clone([[B)[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[B

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[B

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static clone([[Ljava/util/Vector;)[[Ljava/util/Vector;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[Ljava/util/Vector;

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static clone([[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static clone([[[B)[[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[[B

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[[B

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAuthPath()[[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentAuthPath:[[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRetain()[[Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentRetain:[[Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[Ljava/util/Vector;)[[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRootSig()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentRootSig:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSeed()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentSeed:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStack()[Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentStack:[Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTreehash()[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    return-object v0
.end method

.method public getGmssPS()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    return-object v0
.end method

.method public getIndex()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->index:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getKeep()[[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->keep:[[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public getMinTreehash()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->minTreehash:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNextAuthPath()[[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextAuthPath:[[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public getNextNextLeaf()[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v0

    return-object v0
.end method

.method public getNextNextRoot()[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v0

    return-object v0
.end method

.method public getNextNextSeed()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextNextSeed:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getNextRetain()[[Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextRetain:[[Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[Ljava/util/Vector;)[[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getNextRoot()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextRoot:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getNextRootSig()[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    move-result-object v0

    return-object v0
.end method

.method public getNextStack()[Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextStack:[Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getNextTreehash()[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    return-object v0
.end method

.method public getUpperLeaf()[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v0

    return-object v0
.end method

.method public getUpperTreehashLeaf()[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPrivateKeySpec;->clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v0

    return-object v0
.end method
