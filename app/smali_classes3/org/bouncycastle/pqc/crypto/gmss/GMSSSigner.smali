.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private currentAuthPaths:[[[B

.field private digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private gmssUtil:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;

.field private index:[I

.field key:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;

.field private mdLength:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messDigestTrees:Lorg/bouncycastle/crypto/Digest;

.field private numLayer:I

.field private ots:Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

.field private pubKeyBytes:[B

.field private random:Ljava/security/SecureRandom;

.field private subtreeRootSig:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    return-void
.end method

.method private initSign()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Private key already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getNumLeafs(I)I

    move-result v2

    if-lt v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more signatures can be generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getCurrentSeeds()[[B

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v2, v2, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v2, v2, [B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    invoke-direct {v2, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->ots:Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getCurrentAuthPaths()[[[B

    move-result-object v4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    new-array v1, v1, [[[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    move v2, v3

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    if-ge v2, v1, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v1, v4, v2

    array-length v1, v1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    filled-new-array {v1, v6}, [I

    move-result-object v1

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    aput-object v1, v5, v2

    move v1, v3

    :goto_1
    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v1, v5, :cond_2

    aget-object v5, v4, v2

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v6, v6, v2

    aget-object v6, v6, v1

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v5, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->index:[I

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getIndex()[I

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->index:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    move v1, v3

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getSubtreeRootSig(I)[B

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    array-length v5, v2

    new-array v5, v5, [B

    aput-object v5, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v4, v4, v1

    array-length v5, v2

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->markUsed()V

    return-void
.end method

.method private initVerify()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->getPublicKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->pubKeyBytes:[B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 10

    const/4 v9, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->ots:Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getSignature([B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;->concatenateArray([[B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->index:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;->intToBytesLittleEndian(I)[B

    move-result-object v2

    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v2

    invoke-static {v2, v9, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    array-length v5, v0

    invoke-static {v0, v9, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    array-length v0, v0

    add-int/2addr v0, v2

    array-length v2, v1

    invoke-static {v1, v9, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v9, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;->concatenateArray([[B)[B

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->index:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;->intToBytesLittleEndian(I)[B

    move-result-object v4

    array-length v5, v1

    new-array v5, v5, [B

    array-length v6, v1

    invoke-static {v1, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v5

    array-length v6, v4

    add-int/2addr v1, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v6, v6, v0

    array-length v6, v6

    add-int/2addr v1, v6

    array-length v6, v2

    add-int/2addr v1, v6

    new-array v1, v1, [B

    array-length v6, v5

    invoke-static {v5, v9, v1, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v5

    array-length v7, v4

    invoke-static {v4, v9, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v6, v6, v0

    array-length v7, v5

    array-length v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v8, v8, v0

    array-length v8, v8

    invoke-static {v6, v9, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    array-length v4, v4

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v5, v5, v0

    array-length v5, v5

    add-int/2addr v4, v5

    array-length v5, v2

    invoke-static {v2, v9, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v3

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    array-length v2, v3

    invoke-static {v3, v9, v0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    array-length v3, v1

    invoke-static {v1, v9, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->initSign()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->random:Ljava/security/SecureRandom;

    check-cast p2, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->initSign()V

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->initVerify()V

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v3, v2

    :goto_0
    if-ltz v7, :cond_5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v4

    aget v4, v4, v7

    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getSignatureLength()I

    move-result v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;

    invoke-virtual {v4, p2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSUtil;->bytesToIntLittleEndian([BI)I

    move-result v5

    add-int/lit8 v3, v3, 0x4

    new-array v4, v1, [B

    invoke-static {p2, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    invoke-virtual {v0, p1, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->Verify([B[B)[B

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OTS Public Key is null in GMSSSignature.verify"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v0

    aget v0, v0, v7

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v3, v1

    move v1, v2

    :goto_2
    array-length v8, v0

    if-ge v1, v8, :cond_2

    aget-object v8, v0, v1

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {p2, v3, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    add-int/2addr v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v1, v1, [B

    array-length v1, v0

    shl-int v1, v6, v1

    add-int/2addr v1, v5

    move-object v5, v4

    move v4, v1

    move v1, v2

    :goto_3
    array-length v8, v0

    if-ge v1, v8, :cond_4

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    shl-int/lit8 v8, v8, 0x1

    new-array v8, v8, [B

    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_3

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v5, v2, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, v0, v1

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v5, v2, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v4, v4, 0x2

    :goto_4
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    array-length v9, v8

    invoke-interface {v5, v8, v2, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v5, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    aget-object v9, v0, v1

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v9, v2, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    array-length v10, v5

    invoke-static {v5, v2, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    move-object p1, v5

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSSigner;->pubKeyBytes:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v6

    goto/16 :goto_1
.end method
