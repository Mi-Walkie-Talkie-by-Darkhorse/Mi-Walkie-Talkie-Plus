.class public final Lcom/amap/api/col/l3/ea;
.super Ljava/lang/Object;


# instance fields
.field public a:[I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/ea;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/ea;->c:Z

    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amap/api/col/l3/ea;->a:[I

    return-void
.end method

.method private c(I)[I
    .locals 3

    new-array v0, p1, [I

    iget-object v1, p0, Lcom/amap/api/col/l3/ea;->a:[I

    iget v2, p0, Lcom/amap/api/col/l3/ea;->b:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/amap/api/col/l3/ea;->a:[I

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/ea;->a:[I

    iget v1, p0, Lcom/amap/api/col/l3/ea;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/ea;->c(I)[I

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3/ea;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amap/api/col/l3/ea;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public final b(I)[I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ea;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/amap/api/col/l3/ea;->a:[I

    array-length p1, p1

    if-le v0, p1, :cond_0

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/ea;->c(I)[I

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/ea;->a:[I

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amap/api/col/l3/ea;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amap/api/col/l3/ea;

    iget v1, p0, Lcom/amap/api/col/l3/ea;->b:I

    iget v3, p1, Lcom/amap/api/col/l3/ea;->b:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/amap/api/col/l3/ea;->a:[I

    aget v4, v4, v3

    iget-object v5, p1, Lcom/amap/api/col/l3/ea;->a:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/amap/api/col/l3/ea;->b:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ea;->a:[I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lcom/amap/api/col/l3/ea;->b:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
