.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;
.super Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
.source "CacheManager.java"


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
    .locals 1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->showUI:Z

    return-void
.end method


# virtual methods
.method protected cleanArea()I
    .locals 15

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mZoomMin:I

    :goto_0
    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mZoomMax:I

    if-gt v0, v3, :cond_7

    iget-object v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    iget-object v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v8

    iget-object v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    iget-object v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v10

    invoke-static {v4, v5, v10, v11, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v9

    const/4 v3, 0x1

    shl-int v10, v3, v0

    iget v3, v9, Landroid/graphics/Point;->y:I

    if-lez v3, :cond_1

    const/4 v3, -0x1

    :goto_1
    iget v4, v9, Landroid/graphics/Point;->x:I

    if-lez v4, :cond_2

    const/4 v4, -0x1

    :goto_2
    iget v5, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v3

    :goto_3
    iget v6, v8, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_6

    iget v6, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v4

    move v14, v6

    move v6, v2

    move v2, v1

    move v1, v14

    :goto_4
    iget v11, v8, Landroid/graphics/Point;->x:I

    add-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v4

    if-gt v1, v11, :cond_5

    invoke-static {v5, v10}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v11

    invoke-static {v1, v10}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v12

    new-instance v13, Lorg/osmdroid/tileprovider/MapTile;

    invoke-direct {v13, v0, v12, v11}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    invoke-static {v7, v13}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v11, v2, 0x3e8

    if-nez v11, :cond_4

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    :goto_5
    return v6

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->publishProgress([Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v2

    move v2, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    move v6, v2

    goto :goto_5
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->cleanArea()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning completed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tiles deleted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    invoke-super {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onPreExecute()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Cleaning tiles"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mZoomMin:I

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mZoomMin:I

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mZoomMax:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->zoomMessage(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    iget v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mZoomMin:I

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mZoomMax:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->possibleTilesInArea(Lorg/osmdroid/util/BoundingBox;II)I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
