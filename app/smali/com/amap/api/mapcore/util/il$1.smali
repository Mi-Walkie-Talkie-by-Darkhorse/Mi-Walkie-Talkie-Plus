.class final Lcom/amap/api/mapcore/util/il$1;
.super Ljava/lang/Object;
.source "MapGPSLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/il;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/il;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/il$1;->a:Lcom/amap/api/mapcore/util/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-direct {v1, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;-><init>(Landroid/location/Location;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationType(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    const-string v0, "satellites"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setSatellites(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/il$1;->a:Lcom/amap/api/mapcore/util/il;

    iput-object v1, v0, Lcom/amap/api/mapcore/util/il;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/il$1;->a:Lcom/amap/api/mapcore/util/il;

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/il;->c:J

    iget-object v0, p0, Lcom/amap/api/mapcore/util/il$1;->a:Lcom/amap/api/mapcore/util/il;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/il;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAPGPSLocation"

    const-string v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/il$1;->a:Lcom/amap/api/mapcore/util/il;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/il;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MAPGPSLocation"

    const-string v2, "onProviderDisabled"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
