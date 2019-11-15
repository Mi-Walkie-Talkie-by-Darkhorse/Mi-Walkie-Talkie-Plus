.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

.field key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field signableDocumentLength:I

.field private x:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    return-void
.end method

.method private initSign([Lorg/bouncycastle/pqc/crypto/rainbow/Layer;[S)[S
    .locals 5

    const/4 v1, 0x0

    array-length v0, p2

    new-array v0, v0, [S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB1()[S

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA1()[[S

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v2

    move v0, v1

    :goto_0
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    aget-short v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private makeMessageRepresentative([B)[S
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    new-array v2, v1, [S

    move v1, v0

    :cond_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    :goto_0
    return-object v2

    :cond_1
    aget-byte v3, p1, v1

    int-to-short v3, v3

    aput-short v3, v2, v0

    aget-short v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0
.end method

.method private verifySignatureIntern([S)[S
    .locals 13

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffQuadratic()[[S

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffSingular()[[S

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffScalar()[S

    move-result-object v7

    array-length v0, v5

    new-array v8, v0, [S

    aget-object v0, v6, v1

    array-length v9, v0

    move v0, v1

    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_2

    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v9, :cond_1

    move v4, v2

    move v2, v3

    :goto_2
    if-ge v2, v9, :cond_0

    aget-object v10, v5, v0

    aget-short v10, v10, v4

    aget-short v11, p1, v3

    aget-short v12, p1, v2

    invoke-static {v11, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v11

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v10

    aget-short v11, v8, v0

    invoke-static {v11, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v8, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    aget-object v2, v6, v0

    aget-short v2, v2, v3

    aget-short v10, p1, v3

    invoke-static {v2, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v2

    aget-short v10, v8, v0

    invoke-static {v10, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v8, v0

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_1

    :cond_1
    aget-short v2, v8, v0

    aget-short v3, v7, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v8
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 14

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    move-result-object v5

    array-length v6, v5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    add-int/lit8 v0, v6, -0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getViNext()I

    move-result v0

    new-array v7, v0, [B

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v8

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v5, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->initSign([Lorg/bouncycastle/pqc/crypto/rainbow/Layer;[S)[S

    move-result-object v9

    move v4, v2

    move v0, v2

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v3, v5, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v3

    new-array v10, v3, [S

    aget-object v3, v5, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v3

    new-array v3, v3, [S

    move v3, v0

    move v0, v2

    :goto_1
    aget-object v11, v5, v4

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v11

    if-ge v0, v11, :cond_1

    aget-short v11, v9, v3

    aput-short v11, v10, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    aget-object v11, v5, v4

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->plugInVinegars([S)[[S

    move-result-object v11

    invoke-virtual {v0, v11, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->solveEquation([[S[S)[S

    move-result-object v10

    if-nez v10, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "LES is not solveable!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    return-object v7

    :cond_2
    move v0, v2

    :goto_3
    array-length v11, v10

    if-ge v0, v11, :cond_3

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    aget-object v12, v5, v4

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v12

    add-int/2addr v12, v0

    aget-short v13, v10, v0

    aput-short v13, v11, v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB2()[S

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v3

    move v0, v2

    :goto_4
    array-length v4, v7

    if-ge v0, v4, :cond_5

    aget-short v4, v3, v0

    int-to-byte v4, v4

    aput-byte v4, v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getDocLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    check-cast p2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    array-length v0, p2

    new-array v2, v0, [S

    move v0, v1

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    aget-byte v4, p2, v0

    int-to-short v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v4

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->verifySignatureIntern([S)[S

    move-result-object v5

    array-length v0, v4

    array-length v2, v5

    if-eq v0, v2, :cond_1

    :goto_1
    return v1

    :cond_1
    move v0, v1

    move v2, v3

    :goto_2
    array-length v6, v4

    if-ge v0, v6, :cond_3

    if-eqz v2, :cond_2

    aget-short v2, v4, v0

    aget-short v6, v5, v0

    if-ne v2, v6, :cond_2

    move v2, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_1
.end method
