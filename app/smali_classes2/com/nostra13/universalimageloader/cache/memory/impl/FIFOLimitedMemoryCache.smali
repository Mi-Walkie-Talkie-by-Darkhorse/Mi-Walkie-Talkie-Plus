.class public Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.source "FIFOLimitedMemoryCache.java"


# instance fields
.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

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

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
