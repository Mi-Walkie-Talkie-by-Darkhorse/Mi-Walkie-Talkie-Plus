.class public final Lcom/huawei/hms/scankit/p/cb;
.super Ljava/lang/Object;
.source "BitSource.java"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/cb;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/cb;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/huawei/hms/scankit/p/cb;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)I
    .locals 9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/16 v1, 0x20

    if-gt p1, v1, :cond_8

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v1

    if-gt p1, v1, :cond_8

    .line 2
    iget v1, p0, Lcom/huawei/hms/scankit/p/cb;->c:I

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/16 v4, 0x8

    if-lez v1, :cond_3

    rsub-int/lit8 v1, v1, 0x8

    if-ge p1, v1, :cond_0

    move v5, p1

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    sub-int/2addr v1, v5

    rsub-int/lit8 v6, v5, 0x8

    shr-int v6, v3, v6

    shl-int/2addr v6, v1

    .line 3
    iget-object v7, p0, Lcom/huawei/hms/scankit/p/cb;->a:[B

    iget v8, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    invoke-static {v7, v8}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4
    iget-object v7, p0, Lcom/huawei/hms/scankit/p/cb;->a:[B

    iget v8, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    aget-byte v7, v7, v8

    and-int/2addr v6, v7

    shr-int v1, v6, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr p1, v5

    .line 5
    iget v6, p0, Lcom/huawei/hms/scankit/p/cb;->c:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/huawei/hms/scankit/p/cb;->c:I

    if-ne v6, v4, :cond_2

    .line 6
    iput v2, p0, Lcom/huawei/hms/scankit/p/cb;->c:I

    .line 7
    iget v2, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    :cond_2
    move v2, v1

    :cond_3
    if-lez p1, :cond_7

    :goto_2
    if-lt p1, v4, :cond_5

    .line 8
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/cb;->a:[B

    iget v5, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    invoke-static {v1, v5}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v1

    if-eqz v1, :cond_4

    shl-int/lit8 v1, v2, 0x8

    .line 9
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/cb;->a:[B

    iget v5, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    aget-byte v2, v2, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    move v2, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    add-int/lit8 p1, p1, -0x8

    goto :goto_2

    :cond_5
    if-lez p1, :cond_7

    rsub-int/lit8 v0, p1, 0x8

    shr-int v1, v3, v0

    shl-int/2addr v1, v0

    .line 11
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/cb;->a:[B

    iget v4, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    invoke-static {v3, v4}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v3

    if-eqz v3, :cond_6

    shl-int/2addr v2, p1

    .line 12
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/cb;->a:[B

    iget v4, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    shr-int v0, v1, v0

    or-int/2addr v0, v2

    move v2, v0

    .line 13
    :cond_6
    iget v0, p0, Lcom/huawei/hms/scankit/p/cb;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/huawei/hms/scankit/p/cb;->c:I

    :cond_7
    return v2

    .line 14
    :cond_8
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 15
    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/cb;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/cb;->b:I

    return v0
.end method
