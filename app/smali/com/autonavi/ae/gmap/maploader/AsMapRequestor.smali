.class Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mMapLoader:Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;->mMapLoader:Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;->mMapLoader:Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;->mMapLoader:Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doRequest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
