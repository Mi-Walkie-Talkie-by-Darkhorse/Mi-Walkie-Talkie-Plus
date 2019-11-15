.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomOutTileLooper"
.end annotation


# static fields
.field private static final MAX_ZOOM_OUT_DIFF:I = 0x4


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    return-void
.end method


# virtual methods
.method protected handleTile(ILorg/osmdroid/tileprovider/MapTile;II)V
    .locals 16

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v7, v2, v3

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v8, v2, v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v9, v2, v3

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v9, :cond_5

    const/4 v2, 0x0

    move v6, v2

    :goto_2
    if-ge v6, v9, :cond_4

    new-instance v2, Lorg/osmdroid/tileprovider/MapTile;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mOldZoomLevel:I

    add-int v11, v7, v5

    add-int v12, v8, v6

    invoke-direct {v2, v10, v11, v12}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v10, v10, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v10, v2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v10, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_7

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_7

    if-nez v4, :cond_6

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v2

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, -0x333334

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDestRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v11, v5

    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v12, v6

    add-int/lit8 v13, v5, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v14, v15

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v10, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v4, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v4, v10}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_5
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mNewTiles:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created scaled tile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v2, "scaled"

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3

    :cond_7
    move-object v2, v3

    move-object v3, v4

    goto :goto_4
.end method
