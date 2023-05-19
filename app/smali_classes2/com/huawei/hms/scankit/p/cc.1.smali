.class final Lcom/huawei/hms/scankit/p/cc;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/p/cc;->a:I

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/cc;->b:[B

    return-void
.end method

.method static a([BLcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;)[Lcom/huawei/hms/scankit/p/cc;
    .locals 12

    .line 1
    array-length v0, p0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 2
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/zc;->a(Lcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc$b;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/zc$b;->a()[Lcom/huawei/hms/scankit/p/zc$a;

    move-result-object p1

    .line 4
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v3, p1, v1

    .line 5
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/zc$a;->a()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-array p2, v2, [Lcom/huawei/hms/scankit/p/cc;

    .line 7
    array-length v1, p1

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const/4 v7, 0x0

    .line 8
    :goto_2
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/zc$a;->a()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/zc$a;->b()I

    move-result v8

    .line 10
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/zc$b;->b()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v10, v6, 0x1

    .line 11
    new-instance v11, Lcom/huawei/hms/scankit/p/cc;

    new-array v9, v9, [B

    invoke-direct {v11, v8, v9}, Lcom/huawei/hms/scankit/p/cc;-><init>(I[B)V

    aput-object v11, p2, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    aget-object p1, p2, v0

    iget-object p1, p1, Lcom/huawei/hms/scankit/p/cc;->b:[B

    array-length v4, p1

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_4

    .line 13
    aget-object p1, p2, v2

    iget-object p1, p1, Lcom/huawei/hms/scankit/p/cc;->b:[B

    array-length p1, p1

    if-ne p1, v4, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v7, v2, 0x1

    move-object v2, p2

    move-object v3, p0

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/huawei/hms/scankit/p/cc;->a([Lcom/huawei/hms/scankit/p/cc;[BILcom/huawei/hms/scankit/p/zc$b;II)[Lcom/huawei/hms/scankit/p/cc;

    move-result-object p0

    return-object p0

    .line 15
    :cond_5
    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 16
    throw p0
.end method

.method private static a([Lcom/huawei/hms/scankit/p/cc;[BILcom/huawei/hms/scankit/p/zc$b;II)[Lcom/huawei/hms/scankit/p/cc;
    .locals 6

    .line 17
    invoke-virtual {p3}, Lcom/huawei/hms/scankit/p/zc$b;->b()I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_0

    .line 18
    aget-object v3, p0, v2

    iget-object v3, v3, Lcom/huawei/hms/scankit/p/cc;->b:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p5

    :goto_2
    if-ge v0, p4, :cond_2

    .line 19
    aget-object v2, p0, v0

    iget-object v2, v2, Lcom/huawei/hms/scankit/p/cc;->b:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    aput-byte v1, v2, p2

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_2

    .line 20
    :cond_2
    aget-object v0, p0, p3

    iget-object v0, v0, Lcom/huawei/hms/scankit/p/cc;->b:[B

    array-length v0, v0

    :goto_3
    if-ge p2, v0, :cond_6

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p4, :cond_5

    if-ge v2, p5, :cond_3

    move v3, p2

    goto :goto_5

    :cond_3
    add-int/lit8 v3, p2, 0x1

    :goto_5
    if-ltz v2, :cond_4

    .line 21
    :try_start_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    aget-object v4, p0, v2

    iget-object v4, v4, Lcom/huawei/hms/scankit/p/cc;->b:[B

    invoke-static {v4, v3}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    invoke-static {p1, v1}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    aget-object v4, p0, v2

    iget-object v4, v4, Lcom/huawei/hms/scankit/p/cc;->b:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p1, v1

    aput-byte v1, v4, v3

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_4

    .line 24
    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 25
    throw p0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    return-object p0
.end method


# virtual methods
.method a()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/cc;->b:[B

    return-object v0
.end method

.method b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/cc;->a:I

    return v0
.end method
