.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;
.super Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;


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
            "Ljava/util/ArrayList<",
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
    .locals 0

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->downloadArea()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected downloadArea()I
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    instance-of v1, v1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    const-string v2, "OsmDroid"

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    iget-object v4, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    iget v2, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    if-gt v2, v8, :cond_5

    iget-object v8, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v8

    iget-object v10, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v10}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v8

    iget-object v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v9

    iget-object v11, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v11}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v9

    shl-int v10, v6, v2

    iget v11, v9, Landroid/graphics/Point;->y:I

    :goto_1
    iget v12, v8, Landroid/graphics/Point;->y:I

    if-gt v11, v12, :cond_4

    iget v12, v9, Landroid/graphics/Point;->x:I

    :goto_2
    iget v13, v8, Landroid/graphics/Point;->x:I

    if-gt v12, v13, :cond_3

    invoke-static {v11, v10}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v13

    invoke-static {v12, v10}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v14

    new-instance v15, Lorg/osmdroid/tileprovider/MapTile;

    invoke-direct {v15, v2, v14, v13}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    iget-object v13, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-virtual {v13, v1, v15}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v13

    if-nez v13, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v13, v7, 0xa

    if-nez v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_1

    return v4

    :cond_1
    new-array v13, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v0, v13}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    goto/16 :goto_16

    :cond_6
    iget-object v4, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mGeoPoints:Ljava/util/ArrayList;

    if-eqz v4, :cond_23

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v7, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    const/4 v8, 0x0

    move-object v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    iget v12, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    if-gt v7, v12, :cond_22

    shl-int v15, v6, v7

    iget-object v12, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mGeoPoints:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v17, v12

    check-cast v17, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13, v7}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v18

    if-eqz v11, :cond_1a

    if-eqz v8, :cond_18

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    sub-double v12, v12, v20

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v22

    sub-double v20, v20, v22

    div-double v12, v12, v20

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v22

    cmpl-double v14, v20, v22

    if-lez v14, :cond_7

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    goto :goto_5

    :cond_7
    const-wide v20, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    :goto_5
    sub-double v20, v20, v12

    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    move-object/from16 v23, v4

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-direct {v14, v12, v13, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v3, v9

    move v4, v10

    move/from16 v24, v11

    :goto_6
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    cmpl-double v13, v9, v11

    if-lez v13, :cond_8

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    cmpg-double v13, v9, v11

    if-ltz v13, :cond_9

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    cmpg-double v13, v9, v11

    if-gez v13, :cond_17

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    cmpl-double v13, v9, v11

    if-lez v13, :cond_17

    :cond_9
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    cmpl-double v13, v9, v11

    if-lez v13, :cond_a

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    cmpg-double v13, v9, v11

    if-ltz v13, :cond_b

    :cond_a
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    cmpg-double v13, v9, v11

    if-gez v13, :cond_17

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    cmpl-double v13, v9, v11

    if-lez v13, :cond_17

    :cond_b
    new-instance v25, Landroid/graphics/Point;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    move v13, v7

    move-object/from16 v26, v14

    move-object/from16 v14, v25

    invoke-static/range {v9 .. v14}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v11

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v13

    invoke-virtual/range {v26 .. v26}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v27

    mul-double v27, v27, v11

    div-double v27, v27, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    const-wide v31, 0x415854a640000000L    # 6378137.0

    div-double v31, v18, v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    mul-double v29, v29, v33

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    mul-double v33, v33, v35

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v33, v33, v35

    add-double v29, v29, v33

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->asin(D)D

    move-result-wide v29

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    mul-double v33, v33, v35

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v5, v33, v35

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    mul-double v9, v9, v33

    sub-double v9, v31, v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    add-double v27, v27, v5

    mul-double v29, v29, v13

    div-double v5, v29, v11

    move-object/from16 v9, v26

    invoke-virtual {v9, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    mul-double v27, v27, v13

    div-double v5, v27, v11

    invoke-virtual {v9, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-static {v5, v6, v10, v11, v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    iget v3, v5, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    neg-int v3, v3

    :goto_7
    iget v6, v5, Landroid/graphics/Point;->y:I

    if-ltz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_8

    :cond_d
    neg-int v6, v6

    :goto_8
    iget v10, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v3

    :goto_9
    iget v11, v5, Landroid/graphics/Point;->x:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    add-int/2addr v11, v3

    if-gt v10, v11, :cond_15

    iget v11, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v6

    :goto_a
    iget v13, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v13, v12

    add-int/2addr v13, v6

    if-gt v11, v13, :cond_14

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    move/from16 v26, v3

    iget v3, v14, Landroid/graphics/Point;->x:I

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v3, v14}, Landroid/graphics/Point;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_c

    :cond_e
    move/from16 v3, v26

    goto :goto_b

    :cond_f
    move/from16 v26, v3

    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_13

    iget v3, v12, Landroid/graphics/Point;->y:I

    invoke-static {v3, v15}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v3

    iget v13, v12, Landroid/graphics/Point;->x:I

    invoke-static {v13, v15}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v13

    new-instance v14, Lorg/osmdroid/tileprovider/MapTile;

    invoke-direct {v14, v7, v13, v3}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    iget-object v3, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-virtual {v3, v1, v14}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v3

    if-nez v3, :cond_10

    add-int/lit8 v4, v4, 0x1

    :cond_10
    add-int/lit8 v24, v24, 0x1

    rem-int/lit8 v3, v24, 0xa

    if-nez v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_11

    return v4

    :cond_11
    const/4 v3, 0x2

    new-array v13, v3, [Ljava/lang/Integer;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v22, 0x1

    aput-object v3, v13, v22

    invoke-virtual {v0, v13}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_d

    :cond_12
    const/4 v14, 0x0

    :goto_d
    move-object/from16 v13, v23

    invoke-virtual {v13, v14, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_e

    :cond_13
    move-object/from16 v13, v23

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v23, v13

    move/from16 v3, v26

    const/4 v12, 0x1

    goto :goto_a

    :cond_14
    move/from16 v26, v3

    move-object/from16 v13, v23

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    :cond_15
    move-object v3, v5

    :cond_16
    move-object v14, v9

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_17
    move-object/from16 v13, v23

    move-object v9, v3

    move v10, v4

    move/from16 v11, v24

    goto :goto_f

    :cond_18
    move-object v13, v4

    :cond_19
    :goto_f
    const/16 v19, 0x1

    goto/16 :goto_15

    :cond_1a
    move-object v13, v4

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v9

    iget v3, v9, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_1b

    const/4 v14, 0x0

    goto :goto_10

    :cond_1b
    neg-int v3, v3

    move v14, v3

    :goto_10
    iget v3, v9, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_1c

    const/4 v3, 0x0

    goto :goto_11

    :cond_1c
    neg-int v3, v3

    :goto_11
    iget v4, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v14

    :goto_12
    iget v5, v9, Landroid/graphics/Point;->x:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/2addr v5, v14

    if-gt v4, v5, :cond_19

    iget v5, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v3

    :goto_13
    iget v8, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v6

    add-int/2addr v8, v3

    if-gt v5, v8, :cond_20

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v8, v15}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v8

    iget v12, v6, Landroid/graphics/Point;->x:I

    invoke-static {v12, v15}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v12

    move/from16 v18, v3

    new-instance v3, Lorg/osmdroid/tileprovider/MapTile;

    invoke-direct {v3, v7, v12, v8}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    iget-object v8, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-virtual {v8, v1, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v3

    if-nez v3, :cond_1d

    add-int/lit8 v10, v10, 0x1

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v3, v11, 0xa

    if-nez v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1e

    return v10

    :cond_1e
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v3, 0x0

    aput-object v12, v8, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v19, 0x1

    aput-object v12, v8, v19

    invoke-virtual {v0, v8}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_14

    :cond_1f
    const/4 v3, 0x0

    const/16 v19, 0x1

    :goto_14
    invoke-virtual {v13, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v18

    const/4 v6, 0x1

    goto :goto_13

    :cond_20
    move/from16 v18, v3

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :goto_15
    move-object v4, v13

    move-object/from16 v8, v17

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_21
    move-object v13, v4

    const/16 v19, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_22
    move-object v13, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloaded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tiles"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v10

    goto :goto_16

    :cond_23
    const/4 v3, 0x0

    :goto_16
    return v3

    :cond_24
    const-string v1, "TileSource is not an online tile source"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errors."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskComplete()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskFailed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "OsmDroid"

    const-string v1, "Error caught processing cachemanager callback, your implementation is faulty"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object p1, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    invoke-super {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onPreExecute()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->possibleTilesInArea(Lorg/osmdroid/util/BoundingBox;II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mGeoPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->possibleTilesCovered(Ljava/util/ArrayList;II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Downloading tiles"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-virtual {v2, v3, v3, v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->zoomMessage(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->setPossibleTilesInArea(I)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->downloadStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "OsmDroid"

    const-string v2, "Error caught processing cachemanager callback, your implementation is faulty"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method
