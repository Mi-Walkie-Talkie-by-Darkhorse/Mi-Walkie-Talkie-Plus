.class public Lcom/amap/api/mapcore/util/dt;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/dt;->c:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    if-eqz v0, :cond_0

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    if-gt v0, p1, :cond_1

    monitor-exit p0

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    invoke-direct {p0, v2, v0}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    iget v3, p0, Lcom/amap/api/mapcore/util/dt;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amap/api/mapcore/util/dt;->f:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/amap/api/mapcore/util/dt;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/dt;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/amap/api/mapcore/util/dt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/dt;->g:I

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/dt;->h:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/dt;->e:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/amap/api/mapcore/util/dt;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_3
    iget v2, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    invoke-direct {p0, p1, v1}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->c:I

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->a(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/dt;->d:I

    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/dt;->b:I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/amap/api/mapcore/util/dt;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget v1, p0, Lcom/amap/api/mapcore/util/dt;->c:I

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->a(I)V

    return-void
.end method

.method protected a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    return-void
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/amap/api/mapcore/util/dt;->g:I

    iget v2, p0, Lcom/amap/api/mapcore/util/dt;->h:I

    add-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->g:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/amap/api/mapcore/util/dt;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/amap/api/mapcore/util/dt;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/amap/api/mapcore/util/dt;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
