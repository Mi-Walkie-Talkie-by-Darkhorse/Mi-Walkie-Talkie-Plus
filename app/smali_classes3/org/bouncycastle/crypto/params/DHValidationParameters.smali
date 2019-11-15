.class public Lorg/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iput p2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    iget v1, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iget-object v1, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getCounter()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
