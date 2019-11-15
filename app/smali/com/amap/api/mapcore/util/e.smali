.class Lcom/amap/api/mapcore/util/e;
.super Ljava/lang/Object;
.source "AMapOnLocationChangedListener.java"

# interfaces
.implements Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;


# instance fields
.field a:Landroid/location/Location;

.field private b:Lcom/amap/api/mapcore/util/l;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/e;->b:Lcom/amap/api/mapcore/util/l;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iput-object p1, p0, Lcom/amap/api/mapcore/util/e;->a:Landroid/location/Location;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/e;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapOnLocationChangedListener"

    const-string v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
