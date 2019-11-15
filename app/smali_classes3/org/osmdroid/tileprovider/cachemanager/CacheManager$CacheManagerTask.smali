.class public abstract Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
.super Landroid/os/AsyncTask;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CacheManagerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

.field mBB:Lorg/osmdroid/util/BoundingBox;

.field mCtx:Landroid/content/Context;

.field mGeoPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mZoomMax:I

.field mZoomMin:I

.field showUI:Z

.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    iput-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCtx:Landroid/content/Context;

    iput-object p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mGeoPoints:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget-object v0, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    return-void
.end method

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

    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Ljava/util/ArrayList;II)V

    iput-object p6, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    iput-boolean p7, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    iput-object p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mGeoPoints:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    iput-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCtx:Landroid/content/Context;

    iput-object p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mBB:Lorg/osmdroid/util/BoundingBox;

    iget-object v0, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget-object v0, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)V

    iput-object p6, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    iput-boolean p7, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    return-void
.end method


# virtual methods
.method protected createProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask$1;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCtx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->createProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->showUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->zoomMessage(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->callback:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->updateProgress(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OsmDroid"

    const-string v2, "Error caught processing cachemanager callback, your implementation is faulty"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
