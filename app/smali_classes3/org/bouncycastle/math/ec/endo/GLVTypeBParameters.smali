.class public Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;


# instance fields
.field protected final beta:Ljava/math/BigInteger;

.field protected final bits:I

.field protected final g1:Ljava/math/BigInteger;

.field protected final g2:Ljava/math/BigInteger;

.field protected final lambda:Ljava/math/BigInteger;

.field protected final v1A:Ljava/math/BigInteger;

.field protected final v1B:Ljava/math/BigInteger;

.field protected final v2A:Ljava/math/BigInteger;

.field protected final v2B:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v1"

    invoke-static {p3, v0}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "v2"

    invoke-static {p4, v0}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    aget-object v0, p3, v1

    iput-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    aget-object v0, p3, v2

    iput-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    aget-object v0, p4, v1

    iput-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    aget-object v0, p4, v2

    iput-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    iput p7, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    return-void
.end method

.method private static checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must consist of exactly 2 (non-null) values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBeta()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getBits()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    return v0
.end method

.method public getG1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getG2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLambda()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV1()[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getV1A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV1B()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV2()[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getV2A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV2B()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    return-object v0
.end method
