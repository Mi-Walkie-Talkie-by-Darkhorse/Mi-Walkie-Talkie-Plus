.class public final Lcom/amap/api/maps/CameraUpdate;
.super Ljava/lang/Object;
.source "CameraUpdate.java"


# instance fields
.field a:Lcom/autonavi/amap/mapcore/CameraUpdateMessage;


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/CameraUpdate;->a:Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    return-void
.end method


# virtual methods
.method public getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/CameraUpdate;->a:Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    return-object v0
.end method
