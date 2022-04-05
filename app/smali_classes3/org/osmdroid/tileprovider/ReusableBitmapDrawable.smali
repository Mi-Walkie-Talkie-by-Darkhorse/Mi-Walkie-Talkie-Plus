.class public Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
.super Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;


# instance fields
.field private mBitmapRecycled:Z

.field private mUsageRefCount:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    iput p1, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    return-void
.end method


# virtual methods
.method public beginUsingDrawable()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishUsingDrawable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    if-ltz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced endUsingDrawable() called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBitmapValid()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryRecycle()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
