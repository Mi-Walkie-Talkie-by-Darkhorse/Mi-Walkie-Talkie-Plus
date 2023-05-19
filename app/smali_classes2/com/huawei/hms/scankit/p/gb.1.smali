.class final Lcom/huawei/hms/scankit/p/gb;
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
    iput p1, p0, Lcom/huawei/hms/scankit/p/gb;->a:I

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/gb;->b:[B

    return-void
.end method

.method static a([BLcom/huawei/hms/scankit/p/nb;)[Lcom/huawei/hms/scankit/p/gb;
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/nb;->c()Lcom/huawei/hms/scankit/p/nb$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/nb$b;->a()[Lcom/huawei/hms/scankit/p/nb$a;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 4
    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/nb$a;->a()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-array v2, v5, [Lcom/huawei/hms/scankit/p/gb;

    .line 6
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, v1, v5

    const/4 v8, 0x0

    .line 7
    :goto_2
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/nb$a;->a()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 8
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/nb$a;->b()I

    move-result v9

    .line 9
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/nb$b;->b()I

    move-result v10

    add-int/2addr v10, v9

    add-int/lit8 v11, v6, 0x1

    .line 10
    new-instance v12, Lcom/huawei/hms/scankit/p/gb;

    new-array v10, v10, [B

    invoke-direct {v12, v9, v10}, Lcom/huawei/hms/scankit/p/gb;-><init>(I[B)V

    aput-object v12, v2, v6

    add-int/lit8 v8, v8, 0x1

    move v6, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_2
    aget-object v1, v2, v3

    iget-object v1, v1, Lcom/huawei/hms/scankit/p/gb;->b:[B

    array-length v1, v1

    .line 12
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/nb$b;->b()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v0, :cond_4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_3

    .line 13
    aget-object v8, v2, v7

    iget-object v8, v8, Lcom/huawei/hms/scankit/p/gb;->b:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v8, v4

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/nb;->g()I

    move-result p1

    const/16 v4, 0x18

    if-ne p1, v4, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_6

    const/16 v4, 0x8

    goto :goto_6

    :cond_6
    move v4, v6

    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_7

    .line 15
    aget-object v8, v2, v7

    iget-object v8, v8, Lcom/huawei/hms/scankit/p/gb;->b:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v8, v0

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_7

    .line 16
    :cond_7
    aget-object v0, v2, v3

    iget-object v0, v0, Lcom/huawei/hms/scankit/p/gb;->b:[B

    array-length v0, v0

    :goto_8
    if-ge v1, v0, :cond_b

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v6, :cond_a

    if-eqz p1, :cond_8

    add-int/lit8 v7, v4, 0x8

    .line 17
    rem-int/2addr v7, v6

    goto :goto_a

    :cond_8
    move v7, v4

    :goto_a
    if-eqz p1, :cond_9

    const/4 v8, 0x7

    if-le v7, v8, :cond_9

    add-int/lit8 v8, v1, -0x1

    goto :goto_b

    :cond_9
    move v8, v1

    .line 18
    :goto_b
    aget-object v7, v2, v7

    iget-object v7, v7, Lcom/huawei/hms/scankit/p/gb;->b:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v7, v8

    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_9

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 19
    :cond_b
    array-length p0, p0

    if-ne v5, p0, :cond_c

    return-object v2

    .line 20
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method a()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/gb;->b:[B

    return-object v0
.end method

.method b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/gb;->a:I

    return v0
.end method
