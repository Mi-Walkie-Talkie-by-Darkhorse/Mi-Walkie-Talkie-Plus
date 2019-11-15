.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;


# instance fields
.field private K:[I

.field private currentAuthPaths:[[[B

.field private currentRetain:[[Ljava/util/Vector;

.field private currentRootSig:[[B

.field private currentSeeds:[[B

.field private currentStack:[Ljava/util/Vector;

.field private currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

.field private digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private index:[I

.field private keep:[[[B

.field private mdLength:I

.field private messDigestTrees:Lorg/bouncycastle/crypto/Digest;

.field private minTreehash:[I

.field private nextAuthPaths:[[[B

.field private nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

.field private nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

.field private nextNextSeeds:[[B

.field private nextRetain:[[Ljava/util/Vector;

.field private nextRoot:[[B

.field private nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

.field private nextStack:[Ljava/util/Vector;

.field private nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

.field private numLayer:I

.field private numLeafs:[I

.field private otsIndex:[I

.field private upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

.field private upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

.field private used:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 11

    const/4 v2, 0x1

    move-object/from16 v0, p21

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-nez p1, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    :cond_1
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    if-nez p6, :cond_2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v2, v2, [[[B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    filled-new-array {v2, v5}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    aput-object v2, v4, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    :cond_3
    if-nez p9, :cond_4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v2, v2, [Ljava/util/Vector;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    :cond_5
    if-nez p10, :cond_6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/util/Vector;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    :cond_7
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    move-object/from16 v0, p22

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    if-nez p18, :cond_8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v4, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p18

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    :cond_9
    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    const/4 v2, 0x0

    :goto_5
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v5, v5, v2

    shl-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    if-nez p13, :cond_b

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x2

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    const/4 v2, 0x0

    :goto_6
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_c

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    aget-object v8, v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    :cond_c
    :goto_7
    if-nez p14, :cond_e

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    const/4 v2, 0x0

    :goto_8
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_f

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v6, v6, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v8, v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    goto :goto_7

    :cond_e
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    :cond_f
    if-nez p15, :cond_10

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    const/4 v2, 0x0

    :goto_9
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_11

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v6, v6, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    invoke-direct {v4, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    :cond_11
    if-nez p16, :cond_12

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    const/4 v2, 0x0

    :goto_a
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_13

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_12
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    :cond_13
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v3, v2, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v2, v2, [B

    if-nez p20, :cond_14

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    const/4 v2, 0x0

    :goto_b
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_15

    aget-object v4, p2, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v8, v8, v2

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;-><init>(Lorg/bouncycastle/crypto/Digest;II)V

    aput-object v6, v5, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v5, v5, v2

    aget-object v6, p17, v2

    invoke-virtual {v5, v4, v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_14
    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    :cond_15
    return-void
.end method

.method public constructor <init>([[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 23

    const/4 v1, 0x0

    const/4 v6, 0x0

    check-cast v6, [[[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v19, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v0 .. v22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    return-void
.end method

.method private computeAuthPaths(I)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v3, v0, p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v4, v0, p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v5, v0, p1

    move v0, v2

    :goto_0
    sub-int v6, v4, v5

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v6, v6, p1

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->updateNextSeed(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfPhi(I)I

    move-result v6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    add-int/lit8 v7, v6, 0x1

    ushr-int v7, v3, v7

    and-int/lit8 v7, v7, 0x1

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v8, v8, [B

    add-int/lit8 v9, v4, -0x1

    if-ge v6, v9, :cond_1

    if-nez v7, :cond_1

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v9, v9, p1

    aget-object v9, v9, v6

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v9, v2, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v9, v9, [B

    if-nez v6, :cond_6

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_5

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v10, v10, p1

    invoke-direct {v3, v0, v9, v10}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v3, v3, p1

    aget-object v3, v3, v2

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v0, v2, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v0, v4, -0x1

    if-ge v6, v0, :cond_3

    if-nez v7, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    aget-object v0, v0, p1

    div-int/lit8 v3, v6, 0x2

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    aget-object v0, v0, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v8, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_b

    move v0, v1

    :goto_2
    sub-int v1, v4, v5

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_c

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v1

    if-ltz v1, :cond_4

    :try_start_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getSeedActive()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v3, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v7, v7, p1

    invoke-direct {v3, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v1, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v3, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v0, v0, p1

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v0, v2, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v0

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v9, v9, p1

    invoke-virtual {v9, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v9, v9, p1

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v9, v2, v0, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    aget-object v9, v9, p1

    add-int/lit8 v10, v6, -0x1

    div-int/lit8 v10, v10, 0x2

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    aget-object v9, v9, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v9, v2, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    array-length v10, v0

    invoke-interface {v9, v0, v2, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v0, v0, p1

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v9, v9, [B

    aput-object v9, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v9, v9, p1

    aget-object v9, v9, v6

    invoke-interface {v0, v9, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move v0, v2

    :goto_4
    if-ge v0, v6, :cond_2

    sub-int v9, v4, v5

    if-ge v0, v9, :cond_7

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v9, v9, p1

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v9, v9, p1

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getFirstNode()[B

    move-result-object v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v10, v10, p1

    aget-object v10, v10, v0

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v9, v2, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v9, v9, p1

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->destroy()V

    :cond_7
    :goto_5
    add-int/lit8 v9, v4, -0x1

    if-ge v0, v9, :cond_8

    sub-int v9, v4, v5

    if-lt v0, v9, :cond_8

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v9, v9, p1

    sub-int v10, v4, v5

    sub-int v10, v0, v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lez v9, :cond_8

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v9, v9, p1

    sub-int v10, v4, v5

    sub-int v10, v0, v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v10, v10, p1

    aget-object v10, v10, v0

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v9, v2, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v9, v9, p1

    sub-int v10, v4, v5

    sub-int v10, v0, v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v10, v10, p1

    sub-int v11, v4, v5

    sub-int v11, v0, v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_8
    sub-int v9, v4, v5

    if-ge v0, v9, :cond_9

    shl-int v9, v1, v0

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v3

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v10, v10, p1

    if-ge v9, v10, :cond_9

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v9, v9, p1

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->initialize()V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_a
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Treehash ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") not finished when needed in AuthPathComputation"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v1

    aput v1, v0, p1

    :cond_c
    return-void
.end method

.method private getMinTreehashIndex(I)I
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v3, v3, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v4, v4, p1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v1, v2, :cond_1

    move v1, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getLowestNodeHeight()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v4, v4, p1

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getLowestNodeHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v1, v0

    goto :goto_1

    :cond_2
    return v1
.end method

.method private heightOfPhi(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_1
    rem-int v2, p1, v0

    if-nez v2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private nextKey(I)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTree(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateKey(I)V

    goto :goto_0
.end method

.method private nextTree(I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    add-int/lit8 v1, p1, -0x1

    aget v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v1

    move v0, p1

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v5, v5, v0

    if-ge v4, v5, :cond_1

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    if-gtz v0, :cond_0

    :cond_2
    if-nez v1, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->updateSign()Z

    if-le p1, v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-ltz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v4, p1, -0x1

    aget v2, v2, v4

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateNextNextAuthRoot(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getSig()[B

    move-result-object v2

    aput-object v2, v0, v1

    move v0, v3

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v1, v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v1, v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v0, v3

    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v1, v1, p1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    aget-object v2, v2, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_3
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v1, v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v1, v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStack()Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextKey(I)V

    :cond_8
    return-void
.end method

.method private updateKey(I)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->computeAuthPaths(I)V

    if-lez p1, :cond_4

    if-le p1, v8, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getNumLeafs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    rem-int/2addr v0, v1

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    if-le v0, v8, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getSeedActive()[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    add-int/lit8 v7, p1, -0x1

    aget v6, v6, v7

    invoke-direct {v4, v5, v6, v1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v4, v2, v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->updateSign()Z

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    :cond_3
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateNextNextAuthRoot(I)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method private updateNextNextAuthRoot(I)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v3, v3, p1

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B[B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAuthPaths()[[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSeeds()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    return v0
.end method

.method public getIndex()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    return-object v0
.end method

.method public getName()Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    return-object v0
.end method

.method public getNumLeafs(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSubtreeRootSig(I)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isUsed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    return v0
.end method

.method public markUsed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    return-void
.end method

.method public nextKey()Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextKey(I)V

    return-object v0
.end method
