.class Lorg/bouncycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/field/Polynomial;


# instance fields
.field protected final exponents:[I


# direct methods
.method constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/field/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v1, p1, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getDegree()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v1, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getExponentsPresent()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
