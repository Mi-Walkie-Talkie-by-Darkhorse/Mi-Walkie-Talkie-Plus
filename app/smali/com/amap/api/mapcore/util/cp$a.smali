.class public Lcom/amap/api/mapcore/util/cp$a;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/cp;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cp$a;->a:Lcom/amap/api/mapcore/util/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p2, Lcom/amap/api/maps/model/LatLng;

    check-cast p3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    float-to-double v2, p1

    iget-wide v4, p3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    float-to-double v4, p1

    iget-wide v6, p3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v8, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object v4
.end method
