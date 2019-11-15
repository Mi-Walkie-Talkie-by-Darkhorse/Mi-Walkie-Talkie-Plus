.class public Lorg/bouncycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private cipherKeySize:I

.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I

.field private nonce:[B

.field private usePointCompression:Z


# direct methods
.method public constructor <init>([B[BI)V
    .locals 7

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[BZ)V

    return-void
.end method

.method public constructor <init>([B[BII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[BZ)V

    return-void
.end method

.method public constructor <init>([B[BII[B)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[BZ)V

    return-void
.end method

.method public constructor <init>([B[BII[BZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-eqz p2, :cond_1

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iput p3, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    iput p4, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->nonce:[B

    iput-boolean p6, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->usePointCompression:Z

    return-void

    :cond_0
    iput-object v3, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    goto :goto_1
.end method


# virtual methods
.method public getCipherKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    return v0
.end method

.method public getDerivationV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return v0
.end method

.method public getNonce()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->nonce:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPointCompression()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->usePointCompression:Z

    return v0
.end method

.method public setPointCompression(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->usePointCompression:Z

    return-void
.end method
