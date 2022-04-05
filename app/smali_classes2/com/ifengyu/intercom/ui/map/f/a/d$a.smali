.class Lcom/ifengyu/intercom/ui/map/f/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/f/a/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/f/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/f/a/d;->a(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->a(Lcom/ifengyu/intercom/ui/map/f/a/d;Z)Z

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u9999\u6e2f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u6fb3\u95e8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u6fb3\u9580"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ifengyu/intercom/i/u;->a(DD)[D

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    new-instance v4, Lcom/amap/api/location/AMapLocation;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/ui/map/f/a/d;->a(Lcom/ifengyu/intercom/ui/map/f/a/d;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v3

    aget-wide v4, v0, v2

    invoke-virtual {v3, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v3

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->a(Lcom/ifengyu/intercom/ui/map/f/a/d;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/f/a/d;->c(Lcom/ifengyu/intercom/ui/map/f/a/d;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setBearing(F)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->a(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-interface {p1, v0, v1}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/ui/map/f/a/d;->a(Lcom/ifengyu/intercom/ui/map/f/a/d;Z)Z

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v4

    double-to-int p1, v4

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ifengyu/intercom/i/d0;->a(DDI)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/f/a/d;->b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/i/d0;->a(DD)V

    :cond_5
    :goto_1
    return-void
.end method
