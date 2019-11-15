.class public Lorg/bouncycastle/pqc/crypto/rainbow/Layer;
.super Ljava/lang/Object;


# instance fields
.field private coeff_alpha:[[[S

.field private coeff_beta:[[[S

.field private coeff_eta:[S

.field private coeff_gamma:[[S

.field private oi:I

.field private vi:I

.field private viNext:I


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    sub-int v0, p2, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    filled-new-array {v0, v2, v3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    filled-new-array {v0, v2, v3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_2

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_5

    move v0, v1

    :goto_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v0, v2, :cond_4

    move v2, v1

    :goto_5
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_6
    if-ge v2, v4, :cond_7

    move v0, v1

    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v3, v3, v2

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_7
    :goto_8
    if-ge v1, v4, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getViNext()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCoeffAlpha()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    return-object v0
.end method

.method public getCoeffBeta()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    return-object v0
.end method

.method public getCoeffEta()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    return-object v0
.end method

.method public getCoeffGamma()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    return-object v0
.end method

.method public getOi()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    return v0
.end method

.method public getVi()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    return v0
.end method

.method public getViNext()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public plugInVinegars([S)[[S
    .locals 10

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    new-array v5, v1, [S

    move v1, v2

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v1, v3, :cond_2

    move v3, v2

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v4, v6, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    aget-object v6, v6, v1

    aget-object v6, v6, v3

    aget-short v6, v6, v4

    aget-short v7, p1, v3

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aget-short v7, p1, v4

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aget-short v7, v5, v1

    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_3
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v1, v3, :cond_5

    move v3, v2

    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_4

    move v4, v2

    :goto_5
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v4, v6, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    aget-object v6, v6, v1

    aget-object v6, v6, v3

    aget-short v6, v6, v4

    aget-short v7, p1, v4

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aget-object v7, v0, v1

    aget-object v8, v0, v1

    aget-short v8, v8, v3

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_6
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v1, v3, :cond_7

    move v3, v2

    :goto_7
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v4, v4, v1

    aget-short v4, v4, v3

    aget-short v6, p1, v3

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aget-short v6, v5, v1

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_8
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v1, v3, :cond_9

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    :goto_9
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    if-ge v3, v4, :cond_8

    aget-object v4, v0, v1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    sub-int v6, v3, v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v7, v7, v1

    aget-short v7, v7, v3

    aget-object v8, v0, v1

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    sub-int v9, v3, v9

    aget-short v8, v8, v9

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    move v1, v2

    :goto_a
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v1, v3, :cond_a

    aget-short v3, v5, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    aget-short v4, v4, v1

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    :goto_b
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v2, v1, :cond_b

    aget-object v1, v0, v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    aget-short v4, v5, v2

    aput-short v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    return-object v0
.end method
