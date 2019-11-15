.class public final Lcom/amap/api/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "CameraPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->d:F

    return-object p0
.end method

.method public build()Lcom/amap/api/maps/model/CameraPosition;
    .locals 7

    const/4 v0, 0x0

    const-string v2, "build"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->a:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_0

    const-string v1, "CameraPosition"

    const-string v3, "target is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amap/api/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->a:Lcom/amap/api/maps/model/LatLng;

    iget v4, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->b:F

    iget v5, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->c:F

    iget v6, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->d:F

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CameraPosition"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->a:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->c:F

    return-object p0
.end method

.method public zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->b:F

    return-object p0
.end method
