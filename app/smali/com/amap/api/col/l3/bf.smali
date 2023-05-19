.class public final Lcom/amap/api/col/l3/bf;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field private static a:Lcom/amap/api/col/l3/bf;


# instance fields
.field private b:Lcom/amap/api/col/l3/jc;

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amap/api/col/l3/jd;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/bf;->d:Z

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/jc;->a()Lcom/amap/api/col/l3/jc;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/bf;->b:Lcom/amap/api/col/l3/jc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3/bf;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/bf;->c()Lcom/amap/api/col/l3/bf;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c()Lcom/amap/api/col/l3/bf;
    .locals 3

    const-class v0, Lcom/amap/api/col/l3/bf;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/bf;->a:Lcom/amap/api/col/l3/bf;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/amap/api/col/l3/bf;

    invoke-direct {v1}, Lcom/amap/api/col/l3/bf;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3/bf;->a:Lcom/amap/api/col/l3/bf;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/amap/api/col/l3/bf;->b:Lcom/amap/api/col/l3/jc;

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Lcom/amap/api/col/l3/jc;->a()Lcom/amap/api/col/l3/jc;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3/bf;->b:Lcom/amap/api/col/l3/jc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    sget-object v1, Lcom/amap/api/col/l3/bf;->a:Lcom/amap/api/col/l3/bf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/be;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    .line 4
    invoke-interface {p1}, Lcom/amap/api/col/l3/be;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/bb;

    if-nez v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/amap/api/col/l3/bb;->b()V

    .line 7
    iget-object v1, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3/be;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/amap/api/col/l3/be;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3/be;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/amap/api/col/l3/bb;

    move-object v1, p1

    check-cast v1, Lcom/amap/api/col/l3/bu;

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/amap/api/col/l3/bb;-><init>(Lcom/amap/api/col/l3/bu;Landroid/content/Context;B)V

    .line 12
    iget-object p2, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    monitor-enter p2

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3/be;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    .line 15
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/amap/api/col/l3/bf;->b:Lcom/amap/api/col/l3/jc;

    iget-object v0, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3/be;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3/jd;

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3/jc;->a(Lcom/amap/api/col/l3/jd;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/bb;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/bb;->b()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :goto_2
    invoke-static {}, Lcom/amap/api/col/l3/jc;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/bf;->b:Lcom/amap/api/col/l3/jc;

    .line 4
    sput-object v0, Lcom/amap/api/col/l3/bf;->a:Lcom/amap/api/col/l3/bf;

    return-void

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1
.end method

.method public final b(Lcom/amap/api/col/l3/be;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    .line 7
    invoke-interface {p1}, Lcom/amap/api/col/l3/be;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/bb;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bb;->c()V

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/bf;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3/be;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_0
    return-void
.end method
