.class public Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.source "LRULimitedMemoryCache.java"


# static fields
.field private static final INITIAL_CAPACITY:I = 0xa

.field private static final LOAD_FACTOR:F = 1.1f


# instance fields
.field private final lruCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->clear()V

    return-void
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
