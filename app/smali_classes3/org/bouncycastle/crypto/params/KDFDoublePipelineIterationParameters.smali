.class public final Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# static fields
.field private static final UNUSED_R:I = 0x20


# instance fields
.field private final fixedInputData:[B

.field private final ki:[B

.field private final r:I

.field private final useCounter:Z


# direct methods
.method private constructor <init>([B[BIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A KDF requires Ki (a seed) as input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->ki:[B

    if-nez p2, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->fixedInputData:[B

    :goto_0
    const/16 v0, 0x8

    if-eq p3, v0, :cond_2

    const/16 v0, 0x10

    if-eq p3, v0, :cond_2

    const/16 v0, 0x18

    if-eq p3, v0, :cond_2

    const/16 v0, 0x20

    if-eq p3, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of counter should be 8, 16, 24 or 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->fixedInputData:[B

    goto :goto_0

    :cond_2
    iput p3, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->r:I

    iput-boolean p4, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->useCounter:Z

    return-void
.end method

.method public static createWithCounter([B[BI)Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;-><init>([B[BIZ)V

    return-object v0
.end method

.method public static createWithoutCounter([B[B)Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;-><init>([B[BIZ)V

    return-object v0
.end method


# virtual methods
.method public getFixedInputData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->fixedInputData:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->r:I

    return v0
.end method

.method public useCounter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/KDFDoublePipelineIterationParameters;->useCounter:Z

    return v0
.end method
