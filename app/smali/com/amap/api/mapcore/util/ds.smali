.class public Lcom/amap/api/mapcore/util/ds;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public a:[I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/ds;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ds;->c:Z

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    iget v1, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ds;->d(I)[I

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public b(I)I
    .locals 4

    iget v0, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    aget v1, v0, p1

    iget v2, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/ds;->c:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    aget v2, v0, v2

    aput v2, v0, p1

    goto :goto_0
.end method

.method public c(I)[I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ds;->d(I)[I

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    return-object v0
.end method

.method protected d(I)[I
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    iget v2, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/amap/api/mapcore/util/ds;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/amap/api/mapcore/util/ds;

    iget v3, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    iget v2, p1, Lcom/amap/api/mapcore/util/ds;->b:I

    if-eq v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/amap/api/mapcore/util/ds;->a:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ds;->a:[I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/amap/api/mapcore/util/ds;->b:I

    if-ge v0, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
