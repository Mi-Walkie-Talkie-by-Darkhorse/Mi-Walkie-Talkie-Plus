.class public final Lorg/bouncycastle/crypto/params/KDFCounterParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private fixedInputDataCounterPrefix:[B

.field private fixedInputDataCounterSuffix:[B

.field private ki:[B

.field private r:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;-><init>([B[B[BI)V

    return-void
.end method

.method public constructor <init>([B[B[BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A KDF requires Ki (a seed) as input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->ki:[B

    if-nez p2, :cond_1

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterPrefix:[B

    :goto_0
    if-nez p3, :cond_2

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    :goto_1
    const/16 v0, 0x8

    if-eq p4, v0, :cond_3

    const/16 v0, 0x10

    if-eq p4, v0, :cond_3

    const/16 v0, 0x18

    if-eq p4, v0, :cond_3

    const/16 v0, 0x20

    if-eq p4, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of counter should be 8, 16, 24 or 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterPrefix:[B

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    goto :goto_1

    :cond_3
    iput p4, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->r:I

    return-void
.end method


# virtual methods
.method public getFixedInputData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFixedInputDataCounterPrefix()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterPrefix:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFixedInputDataCounterSuffix()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->r:I

    return v0
.end method
