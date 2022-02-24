.class public final Lcom/amap/api/maps/CameraUpdate;
.super Ljava/lang/Object;
.source "CameraUpdate.java"


# instance fields
.field a:Lcom/autonavi/amap/mapcore/CameraUpdateMessage;


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/CameraUpdate;->a:Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    return-void
.end method


# virtual methods
.method public final getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/CameraUpdate;->a:Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    return-object v0
.end method
