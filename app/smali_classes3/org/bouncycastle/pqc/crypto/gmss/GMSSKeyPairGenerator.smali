.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.3"


# instance fields
.field private K:[I

.field private currentRootSigs:[[B

.field private currentSeeds:[[B

.field private digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private initialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private nextNextSeeds:[[B

.field private numLayer:I

.field private otsIndex:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    if-nez v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initializeDefault()V

    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v8, v5, [[[B

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v9, v5, [[[B

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v10, v5, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v11, v5, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v12, v5, [Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v13, v5, [Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v14, v5, [[Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v15, v5, [[Ljava/util/Vector;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v6, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v5, v7}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    aput-object v5, v8, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v7, v7, v6

    sub-int/2addr v5, v7

    new-array v5, v5, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aput-object v5, v10, v6

    if-lez v6, :cond_1

    add-int/lit8 v7, v6, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    filled-new-array {v5, v0}, [I

    move-result-object v5

    sget-object v16, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    aput-object v5, v9, v7

    add-int/lit8 v5, v6, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v7, v7, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    move-object/from16 v16, v0

    aget v16, v16, v6

    sub-int v7, v7, v16

    new-array v7, v7, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aput-object v7, v11, v5

    :cond_1
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    aput-object v5, v12, v6

    if-lez v6, :cond_2

    add-int/lit8 v5, v6, -0x1

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    aput-object v7, v13, v5

    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[B

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    const/16 v18, 0x0

    aget-object v19, v6, v7

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    filled-new-array {v7, v0}, [I

    move-result-object v7

    sget-object v17, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v7, v7, -0x1

    move/from16 v18, v7

    :goto_2
    if-ltz v18, :cond_7

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    move-object/from16 v17, v0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    move-object/from16 v19, v0

    aget v19, v19, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v7, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const/16 v17, 0x0

    aget-object v19, v12, v18

    aget-object v20, v6, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_3
    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    move-object/from16 v19, v0

    aget v19, v19, v18

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v19

    aget-object v19, v19, v17

    const/16 v20, 0x0

    aget-object v21, v8, v18

    aget-object v21, v21, v17

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v17, v18, 0x1

    :try_start_1
    aget-object v17, v5, v17

    aget-object v19, v12, v18

    aget-object v20, v6, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_3

    :catch_0
    move-exception v17

    invoke-static/range {v17 .. v17}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v17

    aput-object v17, v14, v18

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v17

    aput-object v17, v10, v18

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v7

    const/16 v17, 0x0

    aget-object v19, v5, v18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v21, v0

    move/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v7, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v18, -0x1

    move/from16 v18, v7

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v7, v7, -0x2

    move/from16 v17, v7

    :goto_5
    if-ltz v17, :cond_9

    aget-object v7, v13, v17

    add-int/lit8 v18, v17, 0x1

    aget-object v18, v6, v18

    add-int/lit8 v19, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v18

    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v17, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    if-ge v7, v0, :cond_8

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v19

    aget-object v19, v19, v7

    const/16 v20, 0x0

    aget-object v21, v9, v17

    aget-object v21, v21, v7

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v7

    aput-object v7, v15, v17

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v7

    aput-object v7, v11, v17

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v7

    const/16 v18, 0x0

    aget-object v19, v16, v17

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v7, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v17, 0x1

    aget-object v7, v6, v7

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v7, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v17, -0x1

    move/from16 v17, v7

    goto/16 :goto_5

    :cond_9
    new-instance v20, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;-><init>([BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v19, v0

    invoke-direct/range {v5 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    new-instance v6, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-object/from16 v0, v20

    invoke-direct {v6, v0, v5}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v6
.end method

.method private generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 9

    const/4 v1, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v0, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v2, v2, p4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v3, v3, p4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v4, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    invoke-virtual {v4, p2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    if-ne p4, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v5, v5, p4

    invoke-direct {v2, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    const/4 v2, 0x3

    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v5, v5, p4

    shl-int v5, v1, v5

    if-ge v0, v5, :cond_2

    if-ne v0, v3, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v5, v5, p4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v6, v6, p4

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_0

    invoke-virtual {v4, p3, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v5, p3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v8, v8, p4

    invoke-direct {v6, v5, v7, v8}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v5, v5, p4

    invoke-direct {v2, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getSignature([B)[B

    move-result-object v2

    aput-object v2, v0, p4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v3, v3, p4

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/bouncycastle/crypto/Digest;I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    aget-object v2, v2, p4

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->Verify([B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v4

    :goto_2
    return-object v0

    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v1, v1, [B

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v2, v2, p3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v3, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    const/4 v1, 0x3

    move v2, v1

    move v1, v0

    :goto_0
    const/4 v4, 0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v5, v5, p3

    shl-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v4, v4, p3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v5, v5, p3

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_0

    invoke-virtual {v3, p2, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, p2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v7, v7, p3

    invoke-direct {v5, v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "N\ufffdchster Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initializeDefault()V
    .locals 7

    const/4 v2, 0x4

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v6, v0

    invoke-direct {v5, v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void

    :array_0
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 7

    const/16 v0, 0xa

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-gt p1, v0, :cond_0

    new-array v1, v3, [I

    aput v0, v1, v5

    new-array v2, v3, [I

    const/4 v0, 0x3

    aput v0, v2, v5

    new-array v3, v3, [I

    aput v4, v3, v5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v5, v1

    invoke-direct {v4, v5, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v0, p2, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void

    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    new-array v3, v4, [I

    fill-array-data v3, :array_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v5, v1

    invoke-direct {v4, v5, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v0, p2, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    goto :goto_0

    :cond_1
    new-array v1, v6, [I

    fill-array-data v1, :array_3

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    new-array v3, v6, [I

    fill-array-data v3, :array_5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v5, v1

    invoke-direct {v4, v5, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v0, p2, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    goto :goto_0

    :array_0
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x9
        0x9
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 5

    check-cast p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    return-void
.end method
