.class final Lcom/huawei/hms/scankit/p/bc;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/bb;

.field private b:Lcom/huawei/hms/scankit/p/zc;

.field private c:Lcom/huawei/hms/scankit/p/vc;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/p/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method private a(III)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/bc;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    shl-int/lit8 p1, p3, 0x1

    or-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 p1, p3, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method a()V
    .locals 5

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 6
    :goto_1
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3, v0, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v4, v2, v0}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 8
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3, v2, v0}, Lcom/huawei/hms/scankit/p/bb;->a(II)V

    .line 9
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3, v0, v2}, Lcom/huawei/hms/scankit/p/bb;->a(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->b:Lcom/huawei/hms/scankit/p/zc;

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->c:Lcom/huawei/hms/scankit/p/vc;

    .line 4
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/bc;->d:Z

    return-void
.end method

.method b()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/bc;->c()Lcom/huawei/hms/scankit/p/vc;

    move-result-object v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/bc;->d()Lcom/huawei/hms/scankit/p/zc;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/huawei/hms/scankit/p/lc;->values()[Lcom/huawei/hms/scankit/p/lc;

    move-result-object v3

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/vc;->a()B

    move-result v1

    aget-object v1, v3, v1

    .line 4
    iget-object v3, v0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v3

    .line 5
    iget-object v4, v0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1, v4, v3}, Lcom/huawei/hms/scankit/p/lc;->a(Lcom/huawei/hms/scankit/p/bb;I)V

    .line 6
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/zc;->a()Lcom/huawei/hms/scankit/p/bb;

    move-result-object v1

    .line 7
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v4

    new-array v4, v4, [B

    add-int/lit8 v5, v3, -0x1

    const/4 v7, 0x1

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-lez v8, :cond_6

    const/4 v12, 0x6

    if-ne v8, v12, :cond_0

    add-int/lit8 v8, v8, -0x1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v3, :cond_5

    if-eqz v7, :cond_1

    sub-int v13, v5, v12

    goto :goto_2

    :cond_1
    move v13, v12

    :goto_2
    const/4 v14, 0x0

    :goto_3
    const/4 v15, 0x2

    if-ge v14, v15, :cond_4

    sub-int v15, v8, v14

    .line 8
    invoke-virtual {v1, v15, v13}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v16

    if-nez v16, :cond_3

    add-int/lit8 v11, v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    .line 9
    iget-object v6, v0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v6, v15, v13}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v6, v10, 0x1

    move v10, v6

    :cond_2
    const/16 v6, 0x8

    if-ne v11, v6, :cond_3

    add-int/lit8 v6, v9, 0x1

    int-to-byte v10, v10

    .line 10
    aput-byte v10, v4, v9

    move v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x2

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v1

    if-ne v9, v1, :cond_7

    return-object v4

    .line 12
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v1

    throw v1
.end method

.method c()Lcom/huawei/hms/scankit/p/vc;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->c:Lcom/huawei/hms/scankit/p/vc;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    .line 2
    invoke-direct {p0, v1, v4, v2}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    .line 3
    invoke-direct {p0, v1, v4, v2}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v2

    .line 4
    invoke-direct {p0, v4, v4, v2}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v2

    .line 5
    invoke-direct {p0, v4, v1, v2}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v1

    const/4 v2, 0x5

    :goto_1
    if-ltz v2, :cond_2

    .line 6
    invoke-direct {p0, v4, v2, v1}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    add-int/lit8 v5, v2, -0x1

    :goto_2
    if-lt v5, v3, :cond_3

    .line 8
    invoke-direct {p0, v4, v5, v0}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x8

    :goto_3
    if-ge v3, v2, :cond_4

    .line 9
    invoke-direct {p0, v3, v4, v0}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 10
    :cond_4
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/vc;->a(II)Lcom/huawei/hms/scankit/p/vc;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->c:Lcom/huawei/hms/scankit/p/vc;

    if-eqz v0, :cond_5

    return-object v0

    .line 11
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method d()Lcom/huawei/hms/scankit/p/zc;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->b:Lcom/huawei/hms/scankit/p/zc;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v0

    add-int/lit8 v1, v0, -0x11

    .line 3
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    .line 4
    invoke-static {v1}, Lcom/huawei/hms/scankit/p/zc;->c(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v0, -0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    :goto_0
    if-ltz v4, :cond_3

    add-int/lit8 v6, v0, -0x9

    :goto_1
    if-lt v6, v1, :cond_2

    .line 5
    invoke-direct {p0, v6, v4, v5}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {v5}, Lcom/huawei/hms/scankit/p/zc;->a(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/zc;->c()I

    move-result v5

    if-ne v5, v0, :cond_4

    .line 8
    iput-object v4, p0, Lcom/huawei/hms/scankit/p/bc;->b:Lcom/huawei/hms/scankit/p/zc;

    return-object v4

    :cond_4
    :goto_2
    if-ltz v2, :cond_6

    add-int/lit8 v4, v0, -0x9

    :goto_3
    if-lt v4, v1, :cond_5

    .line 9
    invoke-direct {p0, v2, v4, v3}, Lcom/huawei/hms/scankit/p/bc;->a(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 10
    :cond_6
    invoke-static {v3}, Lcom/huawei/hms/scankit/p/zc;->a(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 11
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/zc;->c()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 12
    iput-object v1, p0, Lcom/huawei/hms/scankit/p/bc;->b:Lcom/huawei/hms/scankit/p/zc;

    return-object v1

    .line 13
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/bc;->c:Lcom/huawei/hms/scankit/p/vc;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/p/lc;->values()[Lcom/huawei/hms/scankit/p/lc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/bc;->c:Lcom/huawei/hms/scankit/p/vc;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/vc;->a()B

    move-result v1

    aget-object v0, v0, v1

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/bc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/scankit/p/lc;->a(Lcom/huawei/hms/scankit/p/bb;I)V

    return-void
.end method
