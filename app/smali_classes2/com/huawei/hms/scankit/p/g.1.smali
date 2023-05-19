.class public Lcom/huawei/hms/scankit/p/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/scankit/p/i;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/g;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/scankit/p/g;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/J;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/n;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/huawei/hms/scankit/p/N;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/g;->d:Ljava/lang/String;

    invoke-direct {v1, p2, v0, p1, v2}, Lcom/huawei/hms/scankit/p/N;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/N;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "EventReportTask"

    const-string v1, "eventReportTask is running"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/scankit/p/k;->a(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "alltype"

    if-eqz v1, :cond_0

    const-string v3, "workKey is refresh,begin report all data"

    invoke-static {v0, v3}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hms/scankit/p/g;->c:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/g;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/g;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/g;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/huawei/hms/scankit/p/Q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/g;->b:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/g;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "no have events to report: tag:%s : type:%s"

    invoke-static {v0, v2, v1}, Lcom/huawei/hms/scankit/p/T;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v7, v4}, Lcom/huawei/hms/scankit/p/g;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "cached_v2_1"

    const-string v4, "stat_v2_1"

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/g;->a:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/g;->a:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/g;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/hms/scankit/p/g;->c:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/huawei/hms/scankit/p/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/huawei/hms/scankit/p/g;->a:Landroid/content/Context;

    new-array v8, v5, [Ljava/lang/String;

    aput-object v2, v8, v6

    invoke-static {v7, v4, v8}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/g;->a:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-static {v4, v3, v5}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_4

    const-string v1, "refresh local key"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/aa;->a()Lcom/huawei/hms/scankit/p/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/aa;->b()V

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/M;->a:Lcom/huawei/hms/scankit/p/M;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/M;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/huawei/hms/scankit/p/M;->a:Lcom/huawei/hms/scankit/p/M;

    .line 4
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/M;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
