.class public Lcom/autonavi/amap/mapcore/MapProjection;
.super Ljava/lang/Object;
.source "MapProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    int-to-long v0, p0

    int-to-long v2, p1

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v2, p2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v2, p2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-void
.end method

.method public static lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    const/16 v0, 0x14

    invoke-static {p2, p3, p0, p1, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    return-void
.end method
