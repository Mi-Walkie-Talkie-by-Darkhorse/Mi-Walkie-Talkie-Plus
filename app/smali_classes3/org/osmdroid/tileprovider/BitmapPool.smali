.class public Lorg/osmdroid/tileprovider/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# static fields
.field private static sInstance:Lorg/osmdroid/tileprovider/BitmapPool;


# instance fields
.field final mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    return-void
.end method

.method public static getInstance()Lorg/osmdroid/tileprovider/BitmapPool;
    .locals 1

    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    if-nez v0, :cond_0

    new-instance v0, Lorg/osmdroid/tileprovider/BitmapPool;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/BitmapPool;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    :cond_0
    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    return-object v0
.end method


# virtual methods
.method public applyReusableOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainBitmapFromPool()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return-void
.end method

.method public clearBitmapPool()V
    .locals 2

    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    iget-object v1, v0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v1

    :goto_0
    :try_start_0
    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public obtainBitmapFromPool()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainBitmapFromPool()Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, p2, :cond_1

    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V
    .locals 3

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->tryRecycle()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
