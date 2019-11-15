.class public final Lcom/amap/api/maps/model/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    return-void
.end method


# virtual methods
.method public contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->contains(Lcom/amap/api/maps/model/LatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/amap/api/maps/model/Polygon;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    check-cast p1, Lcom/amap/api/maps/model/Polygon;

    iget-object v2, p1, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFillColor()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getFillColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHoleOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getHoleOptions()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getPoints()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStrokeColor()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getStrokeColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStrokeWidth()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getStrokeWidth()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZIndex()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getZIndex()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->hashCodeRemote()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setFillColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setFillColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setHoleOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setHoleOptions(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setStrokeColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setStrokeColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setStrokeWidth(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setStrokeWidth(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setZIndex(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setZIndex(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
