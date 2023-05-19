.class public abstract Lcom/huawei/hms/scankit/p/sa;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/qa;


# direct methods
.method public static declared-synchronized a()Lcom/huawei/hms/scankit/p/qa;
    .locals 2

    const-class v0, Lcom/huawei/hms/scankit/p/sa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/sa;->a:Lcom/huawei/hms/scankit/p/qa;

    if-nez v1, :cond_0

    .line 1
    sget-object v1, Lcom/huawei/hms/scankit/p/va;->a:Lcom/huawei/hms/scankit/p/va;

    .line 2
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/va;->a()Lcom/huawei/hms/scankit/p/qa;

    move-result-object v1

    sput-object v1, Lcom/huawei/hms/scankit/p/sa;->a:Lcom/huawei/hms/scankit/p/qa;

    :cond_0
    sget-object v1, Lcom/huawei/hms/scankit/p/sa;->a:Lcom/huawei/hms/scankit/p/qa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hms/scankit/p/sa;->a()Lcom/huawei/hms/scankit/p/qa;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/huawei/hms/scankit/p/p;->a:Lcom/huawei/hms/scankit/p/p;

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data type no longer collects range.type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hmsSdk"

    invoke-static {p1, p0}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hms/scankit/p/sa;->a:Lcom/huawei/hms/scankit/p/qa;

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hms/scankit/p/qa;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/sa;->a()Lcom/huawei/hms/scankit/p/qa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/p;->a:Lcom/huawei/hms/scankit/p/p;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/scankit/p/sa;->a:Lcom/huawei/hms/scankit/p/qa;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/qa;->a(I)V

    :cond_0
    return-void
.end method
