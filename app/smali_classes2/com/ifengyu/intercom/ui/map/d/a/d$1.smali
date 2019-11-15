.class Lcom/ifengyu/intercom/ui/map/d/a/d$1;
.super Ljava/lang/Object;
.source "MyLocationProvider.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/d/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/d/a/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/d/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/d/a/d;->a(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/ui/map/d/a/d;->a(Lcom/ifengyu/intercom/ui/map/d/a/d;Z)Z

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9999\u6e2f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6fb3\u95e8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6fb3\u9580"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/b/q;->a(DD)[D

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/ui/map/d/a/d;->a(Lcom/ifengyu/intercom/ui/map/d/a/d;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    aget-wide v2, v0, v4

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    aget-wide v2, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/d/a/d;->c(Lcom/ifengyu/intercom/ui/map/d/a/d;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/d/a/d;->a(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/ui/map/d/a/d;->a(Lcom/ifengyu/intercom/ui/map/d/a/d;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/b/w;->a(DDI)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/map/d/a/d;->a(Lcom/ifengyu/intercom/ui/map/d/a/d;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;->a:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/d/a/d;->b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/b/w;->a(DD)V

    goto :goto_1
.end method
