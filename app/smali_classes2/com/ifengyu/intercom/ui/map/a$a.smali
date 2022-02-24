.class Lcom/ifengyu/intercom/ui/map/a$a;
.super Ljava/lang/Object;
.source "GaoDeMapOperate.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/a;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a$a;->a:Lcom/ifengyu/intercom/ui/map/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a$a;->a:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/ui/map/a;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const/4 v2, 0x1

    aget-wide v5, v0, v2

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v8, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method
