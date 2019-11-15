.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomInTileLooper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    return-void
.end method


# virtual methods
.method public handleTile(ILorg/osmdroid/tileprovider/MapTile;II)V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/osmdroid/tileprovider/MapTile;

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mOldZoomLevel:I

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v2

    iget v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v2, v6

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v6

    iget v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v6, v7

    invoke-direct {v0, v1, v2, v6}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shl-int v0, v4, v0

    rem-int v0, p3, v0

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    mul-int/2addr v0, v2

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shl-int v2, v4, v2

    rem-int v2, p4, v2

    iget v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    mul-int/2addr v2, v6

    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mSrcRect:Landroid/graphics/Rect;

    iget v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    add-int/2addr v7, v0

    iget v8, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    add-int/2addr v8, v2

    invoke-virtual {v6, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    instance-of v7, v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v7, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v5, v0

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    :cond_1
    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v1, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created scaled tile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, "scaled"

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v3, 0x42480000    # 50.0f

    iget-object v8, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move v0, v4

    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_6
    throw v0

    :cond_7
    move v0, v3

    goto :goto_1

    :cond_8
    move-object v2, v0

    goto :goto_0
.end method
