.class public final Lcom/huawei/hms/scankit/p/Va;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/huawei/hms/scankit/aiscan/common/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Ya;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->b()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/Ya;-><init>(Lcom/huawei/hms/scankit/p/bb;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Ya;->a(Z)Lcom/huawei/hms/scankit/p/Ua;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    new-instance v4, Lcom/huawei/hms/scankit/p/Xa;

    invoke-direct {v4}, Lcom/huawei/hms/scankit/p/Xa;-><init>()V

    invoke-virtual {v4, v2, p2}, Lcom/huawei/hms/scankit/p/Xa;->a(Lcom/huawei/hms/scankit/p/Ua;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object v2
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v1

    :goto_0
    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 5
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Ya;->a(Z)Lcom/huawei/hms/scankit/p/Ua;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    .line 7
    new-instance v1, Lcom/huawei/hms/scankit/p/Xa;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/Xa;-><init>()V

    invoke-virtual {v1, v0, p2}, Lcom/huawei/hms/scankit/p/Xa;->a(Lcom/huawei/hms/scankit/p/Ua;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object v1
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    if-eqz v3, :cond_1

    .line 8
    sget-boolean p2, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz p2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/x;

    .line 10
    invoke-virtual {v3}, [Lcom/huawei/hms/scankit/aiscan/common/z;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, [Lcom/huawei/hms/scankit/aiscan/common/z;

    sget-object v9, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[BI[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;J)V

    return-object p1

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 12
    throw v2

    .line 13
    :cond_2
    throw p1

    :cond_3
    :goto_2
    move-object v6, v3

    if-eqz p2, :cond_4

    .line 14
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/huawei/hms/scankit/aiscan/common/A;

    if-eqz p2, :cond_4

    if-eqz v6, :cond_4

    .line 15
    array-length v0, v6

    :goto_3
    if-ge p1, v0, :cond_4

    aget-object v2, v6, p1

    .line 16
    invoke-interface {p2, v2}, Lcom/huawei/hms/scankit/aiscan/common/A;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 17
    :cond_4
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/e;->c()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/e;->a()I

    move-result v5

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[BI[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;J)V

    return-object p1
.end method
