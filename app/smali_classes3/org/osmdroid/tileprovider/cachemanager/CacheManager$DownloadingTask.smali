.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;
.super Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-direct/range {p0 .. p7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-direct/range {p0 .. p7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->downloadArea()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected downloadArea()I
    .locals 37

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v6, v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v6}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v6

    instance-of v6, v6, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v6, v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v6}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMin:I

    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMax:I

    if-gt v6, v9, :cond_1f

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v14

    invoke-static {v10, v11, v14, v15, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v14, v15, v0, v1, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v13

    const/4 v9, 0x1

    shl-int v14, v9, v6

    iget v9, v13, Landroid/graphics/Point;->y:I

    :goto_1
    iget v10, v11, Landroid/graphics/Point;->y:I

    if-gt v9, v10, :cond_6

    iget v10, v13, Landroid/graphics/Point;->x:I

    move/from16 v36, v10

    move v10, v8

    move v8, v7

    move/from16 v7, v36

    :goto_2
    iget v15, v11, Landroid/graphics/Point;->x:I

    if-gt v7, v15, :cond_5

    invoke-static {v9, v14}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v15

    invoke-static {v7, v14}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v16

    new-instance v17, Lorg/osmdroid/tileprovider/MapTile;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v6, v1, v15}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    move-object/from16 v0, v17

    invoke-virtual {v15, v12, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v15

    if-nez v15, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    rem-int/lit8 v15, v10, 0xa

    if-nez v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->isCancelled()Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_1
    :goto_3
    return v8

    :cond_2
    const-string v6, "OsmDroid"

    const-string v7, "TileSource is not an online tile source"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->publishProgress([Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v7, v8

    move v8, v10

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mGeoPoints:Ljava/util/ArrayList;

    if-eqz v6, :cond_1f

    const/4 v13, 0x0

    const/4 v6, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMin:I

    :goto_4
    move-object/from16 v0, p0

    iget v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMax:I

    if-gt v10, v9, :cond_1e

    const/4 v9, 0x1

    shl-int v22, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mGeoPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move-object v14, v13

    move v9, v8

    move v8, v7

    move-object v7, v6

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v10}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v24

    if-eqz v9, :cond_16

    if-eqz v14, :cond_23

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v18

    sub-double v16, v16, v18

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v18

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v26

    sub-double v18, v18, v26

    div-double v16, v16, v18

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v18

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v26

    cmpl-double v6, v18, v26

    if-lez v6, :cond_11

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    sub-double v16, v18, v16

    :goto_6
    new-instance v26, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v18

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v15, v7

    move/from16 v18, v8

    move/from16 v19, v9

    :cond_8
    :goto_7
    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_9

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_a

    :cond_9
    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_22

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_22

    :cond_a
    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_b

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_c

    :cond_b
    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_22

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_22

    :cond_c
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v6 .. v11}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v28

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v8, v8, v28

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const-wide v30, 0x415854a640000000L    # 6378137.0

    div-double v30, v24, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    const-wide v32, 0x415854a640000000L    # 6378137.0

    div-double v32, v24, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->asin(D)D

    move-result-wide v28

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    const-wide v32, 0x415854a640000000L    # 6378137.0

    div-double v32, v24, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    const-wide v32, 0x415854a640000000L    # 6378137.0

    div-double v32, v24, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v6, v6, v34

    sub-double v6, v32, v6

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double v8, v8, v28

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    div-double v8, v8, v28

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, v10}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget v6, v7, Landroid/graphics/Point;->x:I

    if-ltz v6, :cond_12

    const/4 v6, 0x0

    move v11, v6

    :goto_8
    iget v6, v7, Landroid/graphics/Point;->y:I

    if-ltz v6, :cond_13

    const/4 v6, 0x0

    move v15, v6

    :goto_9
    iget v6, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v11

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v18, v6

    :goto_a
    iget v6, v7, Landroid/graphics/Point;->x:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v11

    move/from16 v0, v18

    if-gt v0, v6, :cond_15

    iget v6, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v15

    move/from16 v19, v6

    :goto_b
    iget v6, v7, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v15

    move/from16 v0, v19

    if-gt v0, v6, :cond_14

    new-instance v27, Landroid/graphics/Point;

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    const/16 v20, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->equals(II)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    :goto_c
    if-nez v6, :cond_10

    move-object/from16 v0, v27

    iget v6, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v22

    invoke-static {v6, v0}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v6

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v20

    new-instance v28, Lorg/osmdroid/tileprovider/MapTile;

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-direct {v0, v10, v1, v6}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    move-object/from16 v0, v28

    invoke-virtual {v6, v12, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v6

    if-nez v6, :cond_e

    add-int/lit8 v8, v8, 0x1

    :cond_e
    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v6, v9, 0xa

    if-nez v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v6, v20

    const/16 v20, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v6, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->publishProgress([Ljava/lang/Object;)V

    :cond_f
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_10
    add-int/lit8 v6, v19, 0x1

    move/from16 v19, v6

    goto/16 :goto_b

    :cond_11
    const-wide v18, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    sub-double v16, v18, v16

    goto/16 :goto_6

    :cond_12
    iget v6, v7, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    move v11, v6

    goto/16 :goto_8

    :cond_13
    iget v6, v7, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    move v15, v6

    goto/16 :goto_9

    :cond_14
    add-int/lit8 v6, v18, 0x1

    move/from16 v18, v6

    goto/16 :goto_a

    :cond_15
    move-object v15, v7

    move/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_7

    :cond_16
    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-static {v6, v7, v14, v15, v10}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v16

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Point;->x:I

    if-ltz v6, :cond_17

    const/4 v6, 0x0

    :goto_d
    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-ltz v7, :cond_18

    const/4 v7, 0x0

    :goto_e
    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v6

    move/from16 v36, v11

    move v11, v9

    move v9, v8

    move/from16 v8, v36

    :goto_f
    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v6

    if-gt v8, v14, :cond_1c

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v14, v7

    :goto_10
    move-object/from16 v0, v16

    iget v15, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v7

    if-gt v14, v15, :cond_1b

    new-instance v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v22

    invoke-static {v15, v0}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v18

    new-instance v19, Lorg/osmdroid/tileprovider/MapTile;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v10, v1, v15}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    move-object/from16 v0, v19

    invoke-virtual {v15, v12, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v15

    if-nez v15, :cond_20

    add-int/lit8 v15, v9, 0x1

    :goto_11
    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v9, v11, 0xa

    if-nez v9, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_19

    move v8, v15

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    goto :goto_d

    :cond_18
    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    goto :goto_e

    :cond_19
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Integer;

    const/16 v18, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v9, v18

    const/16 v18, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v9, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->publishProgress([Ljava/lang/Object;)V

    :cond_1a
    const/4 v9, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v9, v15

    goto :goto_10

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_f

    :cond_1c
    move-object/from16 v6, v16

    move v7, v9

    move v8, v11

    :goto_12
    move-object v14, v13

    move v9, v8

    move v8, v7

    move-object v7, v6

    goto/16 :goto_5

    :cond_1d
    add-int/lit8 v10, v10, 0x1

    move-object v6, v7

    move-object v13, v14

    move v7, v8

    move v8, v9

    goto/16 :goto_4

    :cond_1e
    const-string v6, "OsmDroid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloaded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tiles"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move v8, v7

    goto/16 :goto_3

    :cond_20
    move v15, v9

    goto :goto_11

    :cond_21
    move/from16 v6, v20

    goto/16 :goto_c

    :cond_22
    move-object v6, v15

    move/from16 v7, v18

    move/from16 v8, v19

    goto :goto_12

    :cond_23
    move-object v6, v7

    move v7, v8

    move v8, v9

    goto :goto_12
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->showUI:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errors."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskComplete()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskFailed(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OsmDroid"

    const-string v2, "Error caught processing cachemanager callback, your implementation is faulty"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    invoke-super {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onPreExecute()V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    iget v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMin:I

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMax:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->possibleTilesInArea(Lorg/osmdroid/util/BoundingBox;II)I

    move-result v0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->showUI:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Downloading tiles"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMin:I

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMin:I

    iget v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMax:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->zoomMessage(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    invoke-interface {v1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->setPossibleTilesInArea(I)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->downloadStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mGeoPoints:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mGeoPoints:Ljava/util/ArrayList;

    iget v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMin:I

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->mZoomMax:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->possibleTilesCovered(Ljava/util/ArrayList;II)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OsmDroid"

    const-string v2, "Error caught processing cachemanager callback, your implementation is faulty"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
