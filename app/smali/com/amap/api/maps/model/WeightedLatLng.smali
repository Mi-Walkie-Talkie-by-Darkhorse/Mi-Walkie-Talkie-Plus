.class public Lcom/amap/api/maps/model/WeightedLatLng;
.super Ljava/lang/Object;
.source "WeightedLatLng.java"


# static fields
.field public static final DEFAULT_INTENSITY:D = 1.0


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/DPoint;

.field public final intensity:D

.field public final latLng:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/maps/model/WeightedLatLng;-><init>(Lcom/amap/api/maps/model/LatLng;D)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "latLng can not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/model/WeightedLatLng;->a:Lcom/autonavi/amap/mapcore/DPoint;

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_1

    iput-wide p2, p0, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    :goto_0
    return-void

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    goto :goto_0
.end method


# virtual methods
.method protected getPoint()Lcom/autonavi/amap/mapcore/DPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/WeightedLatLng;->a:Lcom/autonavi/amap/mapcore/DPoint;

    return-object v0
.end method
