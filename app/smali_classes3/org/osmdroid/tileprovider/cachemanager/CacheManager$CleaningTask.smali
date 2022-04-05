.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;
.super Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CleaningTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    return-void
.end method


# virtual methods
.method protected cleanArea()I
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    iget v2, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    if-gt v2, v6, :cond_7

    iget-object v6, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    iget-object v8, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v6

    iget-object v7, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v7

    iget-object v9, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v7

    const/4 v8, 0x1

    shl-int v9, v8, v2

    iget v10, v7, Landroid/graphics/Point;->y:I

    const/4 v11, -0x1

    if-lez v10, :cond_0

    const/4 v10, -0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    iget v12, v7, Landroid/graphics/Point;->x:I

    if-lez v12, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    iget v12, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v10

    :goto_3
    iget v13, v6, Landroid/graphics/Point;->y:I

    const/4 v14, 0x2

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    if-gt v12, v13, :cond_6

    iget v13, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v11

    :goto_4
    iget v15, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v15, v14

    add-int/2addr v15, v11

    if-gt v13, v15, :cond_5

    invoke-static {v12, v9}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v15

    invoke-static {v13, v9}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v8

    new-instance v3, Lorg/osmdroid/tileprovider/MapTile;

    invoke-direct {v3, v2, v8, v15}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    invoke-static {v1, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    rem-int/lit16 v3, v5, 0x3e8

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    new-array v3, v14, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v3, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v16, 0x1

    aput-object v8, v3, v16

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return v4
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->cleanArea()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning completed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " tiles deleted."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object p1, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    invoke-super {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onPreExecute()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const-string v1, "Cleaning tiles"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-virtual {v1, v2, v2, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->zoomMessage(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    iget v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->possibleTilesInArea(Lorg/osmdroid/util/BoundingBox;II)I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
