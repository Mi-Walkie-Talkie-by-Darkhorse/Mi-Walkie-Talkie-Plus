.class public Lcom/huawei/hms/scankit/p/P;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/huawei/hms/scankit/p/K;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "generate UploadData"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/huawei/hms/scankit/p/S;->a:Lcom/huawei/hms/scankit/p/S;

    .line 2
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/S;->a()V

    .line 3
    sget-object v1, Lcom/huawei/hms/scankit/p/S;->a:Lcom/huawei/hms/scankit/p/S;

    .line 4
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/S;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "event chifer is empty"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/huawei/hms/scankit/p/K;

    .line 5
    sget-object v1, Lcom/huawei/hms/scankit/p/S;->a:Lcom/huawei/hms/scankit/p/S;

    .line 6
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/S;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/K;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/la;
    .locals 2

    new-instance v0, Lcom/huawei/hms/scankit/p/la;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/la;-><init>()V

    invoke-static {}, Lcom/huawei/hms/scankit/p/ga;->a()Lcom/huawei/hms/scankit/p/ga;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/huawei/hms/scankit/p/ga;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hms/scankit/p/G;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/ma;
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/ma;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/ma;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huawei/hms/scankit/p/H;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hms/scankit/p/H;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/H;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/huawei/hms/scankit/p/H;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuffer;

    const-string p1, "hmshi"

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "qrt"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hms/scankit/p/H;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/na;
    .locals 2

    new-instance v0, Lcom/huawei/hms/scankit/p/na;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/na;-><init>()V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/I;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/I;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/scankit/p/I;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/ga;->a()Lcom/huawei/hms/scankit/p/ga;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/huawei/hms/scankit/p/ga;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hms/scankit/p/I;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App-Id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App-Ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Sdk-Name"

    const-string v2, "hianalytics"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Sdk-Ver"

    const-string v2, "2.2.0.304"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Device-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "servicetag"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string v1, "hmsSdk"

    const-string v2, "sendData RequestId : %s"

    invoke-static {v1, v2, p0}, Lcom/huawei/hms/scankit/p/T;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "Request-Id"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
