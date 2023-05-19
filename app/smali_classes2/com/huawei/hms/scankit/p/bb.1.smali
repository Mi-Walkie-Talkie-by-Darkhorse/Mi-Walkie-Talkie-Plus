.class public final Lcom/huawei/hms/scankit/p/bb;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    .line 4
    iput p2, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    add-int/lit8 p1, p1, 0x1f

    .line 5
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    mul-int p1, p1, p2

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "Both dimensions must be greater than 0"

    :try_start_1
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public constructor <init>(III[I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    .line 11
    iput p2, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    .line 12
    iput p3, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    .line 13
    iput-object p4, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    iget v2, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 23
    :goto_0
    iget v3, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 24
    :goto_1
    iget v4, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    if-ge v3, v4, :cond_1

    .line 25
    invoke-virtual {p0, v3, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_2

    :cond_0
    move-object v4, p2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;
    .locals 4

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v0

    iget v1, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ab;->a()V

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    new-instance p2, Lcom/huawei/hms/scankit/p/ab;

    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    invoke-direct {p2, v0}, Lcom/huawei/hms/scankit/p/ab;-><init>(I)V

    .line 18
    :goto_1
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    mul-int p1, p1, v0

    const/4 v0, 0x0

    .line 19
    :goto_2
    iget v1, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x20

    .line 20
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    add-int v3, p1, v0

    aget v2, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/huawei/hms/scankit/p/ab;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/hms/scankit/p/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    invoke-static {v0, p2}, Lcom/huawei/hms/scankit/util/b;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, v0, p2

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 6
    iget v1, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    if-gt p4, v1, :cond_2

    iget v1, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    if-gt p3, v1, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    .line 7
    iget v1, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    mul-int v1, v1, p2

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    .line 8
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    div-int/lit8 v4, v2, 0x20

    add-int/2addr v4, v1

    aget v5, v3, v4

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 9
    :cond_2
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "The region must fit inside the matrix"

    :try_start_1
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 10
    throw p1

    .line 11
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p2, "Height and width must be at least 1"

    :try_start_3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 12
    throw p1

    .line 13
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string p2, "Left and top must be nonnegative"

    :try_start_5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 14
    throw p1
.end method

.method public b()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    return v0
.end method

.method public b(ILcom/huawei/hms/scankit/p/ab;)V
    .locals 3

    .line 4
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ab;->c()[I

    move-result-object p2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    iget v1, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    mul-int p1, p1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b(II)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    invoke-static {v0, p2}, Lcom/huawei/hms/scankit/util/b;->a([II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c()Lcom/huawei/hms/scankit/p/bb;
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6
    aget v2, v2, v1

    not-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/huawei/hms/scankit/p/bb;

    iget v2, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    iget v3, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    iget v4, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/huawei/hms/scankit/p/bb;-><init>(III[I)V

    return-object v1
.end method

.method public c(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    invoke-static {v0, p2}, Lcom/huawei/hms/scankit/util/b;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    :cond_0
    return-void
.end method

.method public clone()Lcom/huawei/hms/scankit/p/bb;
    .locals 5

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/p/bb;

    iget v1, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    iget v2, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    iget v3, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hms/scankit/p/bb;-><init>(III[I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->clone()Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    return v0
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    .line 3
    new-instance v2, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v2, v0}, Lcom/huawei/hms/scankit/p/ab;-><init>(I)V

    .line 4
    new-instance v3, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v3, v0}, Lcom/huawei/hms/scankit/p/ab;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 5
    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_0

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/huawei/hms/scankit/p/bb;->a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    .line 7
    invoke-virtual {p0, v4, v3}, Lcom/huawei/hms/scankit/p/bb;->a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/ab;->g()V

    .line 9
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/ab;->g()V

    .line 10
    invoke-virtual {p0, v0, v3}, Lcom/huawei/hms/scankit/p/bb;->b(ILcom/huawei/hms/scankit/p/ab;)V

    .line 11
    invoke-virtual {p0, v4, v2}, Lcom/huawei/hms/scankit/p/bb;->b(ILcom/huawei/hms/scankit/p/ab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/huawei/hms/scankit/p/bb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/huawei/hms/scankit/p/bb;

    .line 3
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    iget v2, p1, Lcom/huawei/hms/scankit/p/bb;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    iget v2, p1, Lcom/huawei/hms/scankit/p/bb;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    iget v2, p1, Lcom/huawei/hms/scankit/p/bb;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    iget-object p1, p1, Lcom/huawei/hms/scankit/p/bb;->d:[I

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->a:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lcom/huawei/hms/scankit/p/bb;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bb;->d:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "X "

    const-string v1, "  "

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hms/scankit/p/bb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
