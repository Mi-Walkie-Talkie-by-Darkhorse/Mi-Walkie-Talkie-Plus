.class public Lcom/autonavi/amap/mapcore/animation/GLEmergeAnimation;
.super Lcom/autonavi/amap/mapcore/animation/GLAnimation;
.source "GLEmergeAnimation.java"


# instance fields
.field public mStartPoint:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/animation/GLEmergeAnimation;->mStartPoint:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 0

    return-void
.end method
