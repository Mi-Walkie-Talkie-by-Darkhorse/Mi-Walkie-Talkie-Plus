.class public Lcom/amap/api/mapcore/util/gb;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    const/16 v0, 0x25

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return v0
.end method

.method public a(B)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return-object p0
.end method

.method public a(C)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return-object p0
.end method

.method public a(D)Lcom/amap/api/mapcore/util/gb;
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/gb;->a(J)Lcom/amap/api/mapcore/util/gb;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return-object p0
.end method

.method public a(I)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return-object p0
.end method

.method public a(J)Lcom/amap/api/mapcore/util/gb;
    .locals 5

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([J)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([I)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([S)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    check-cast p1, [C

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([C)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([B)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([D)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([F)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([Z)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_8
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/gb;

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    goto :goto_0
.end method

.method public a(S)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return-object p0
.end method

.method public a(Z)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    return-object p0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a([B)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/gb;->a(B)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([C)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/gb;->a(C)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([D)Lcom/amap/api/mapcore/util/gb;
    .locals 4

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/mapcore/util/gb;->a(D)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([F)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/gb;->a(F)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([I)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/gb;->a(I)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([J)Lcom/amap/api/mapcore/util/gb;
    .locals 4

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/mapcore/util/gb;->a(J)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/gb;->a(Ljava/lang/Object;)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([S)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/gb;->a(S)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([Z)Lcom/amap/api/mapcore/util/gb;
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/gb;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->b:I

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/gb;->a(Z)Lcom/amap/api/mapcore/util/gb;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/gb;->a()I

    move-result v0

    return v0
.end method
