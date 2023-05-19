.class public final Lcom/huawei/hms/scankit/p/oc;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/aiscan/common/u;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/u;

    sget-object v1, Lcom/huawei/hms/scankit/aiscan/common/h;->e:Lcom/huawei/hms/scankit/aiscan/common/h;

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/aiscan/common/u;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/oc;->a:Lcom/huawei/hms/scankit/aiscan/common/u;

    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/p/bc;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/bc;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bc;->d()Lcom/huawei/hms/scankit/p/zc;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bc;->c()Lcom/huawei/hms/scankit/p/vc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/vc;->b()Lcom/huawei/hms/scankit/p/qc;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bc;->b()[B

    move-result-object p1

    .line 14
    invoke-static {p1, v0, v1}, Lcom/huawei/hms/scankit/p/cc;->a([BLcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;)[Lcom/huawei/hms/scankit/p/cc;

    move-result-object p1

    .line 15
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    .line 16
    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/cc;->b()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-array v2, v5, [B

    .line 18
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    .line 19
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/cc;->a()[B

    move-result-object v8

    .line 20
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/cc;->b()I

    move-result v7

    .line 21
    invoke-direct {p0, v8, v7}, Lcom/huawei/hms/scankit/p/oc;->a([BI)V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_1

    add-int/lit8 v10, v6, 0x1

    .line 22
    aget-byte v11, v8, v9

    aput-byte v11, v2, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 23
    :cond_2
    invoke-static {v2, v0, v1, p2}, Lcom/huawei/hms/scankit/p/nc;->a([BLcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p1

    return-object p1
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 24
    array-length v0, p1

    .line 25
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 26
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/oc;->a:Lcom/huawei/hms/scankit/aiscan/common/u;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/huawei/hms/scankit/aiscan/common/u;->a([II)V
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 28
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 29
    :catch_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/bb;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/bb;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/bc;

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/bc;-><init>(Lcom/huawei/hms/scankit/p/bb;)V

    .line 2
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/huawei/hms/scankit/p/oc;->a(Lcom/huawei/hms/scankit/p/bc;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bc;->e()V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/bc;->a(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bc;->d()Lcom/huawei/hms/scankit/p/zc;

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bc;->c()Lcom/huawei/hms/scankit/p/vc;

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bc;->a()V

    .line 8
    invoke-direct {p0, v0, p2}, Lcom/huawei/hms/scankit/p/oc;->a(Lcom/huawei/hms/scankit/p/bc;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p2

    .line 9
    new-instance v0, Lcom/huawei/hms/scankit/p/xc;

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/xc;-><init>(Z)V

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/aiscan/common/e;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    .line 10
    :catch_1
    throw p1
.end method
