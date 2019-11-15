.class Lorg/bouncycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bigInt:Ljava/math/BigInteger;

.field private final scale:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iput p2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return-void
.end method

.method private checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v1, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/math/BigInteger;I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public adjustScale(I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public divide(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public divide(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v3, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public floor()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public round()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->adjustScale(I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public shiftLeft(I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public subtract(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->negate()Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v5, -0x1

    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ne v3, v5, :cond_1

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v4, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ne v3, v5, :cond_2

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    new-array v3, v3, [C

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v6, v0, v5

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_3

    const/16 v7, 0x30

    aput-char v7, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_4

    add-int v2, v6, v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
