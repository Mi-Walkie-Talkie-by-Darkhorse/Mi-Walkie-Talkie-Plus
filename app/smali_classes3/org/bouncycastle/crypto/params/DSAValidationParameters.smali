.class public Lorg/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;


# instance fields
.field private counter:I

.field private seed:[B

.field private usageIndex:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iput p2, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iput p3, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    iget v1, p1, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v2, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object v1, p1, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getCounter()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    return-object v0
.end method

.method public getUsageIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
