.class final Lcom/amap/api/col/l3/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/g;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/g;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object v0, v0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iget-object v2, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-boolean v2, v2, Lcom/amap/api/col/l3/g;->e:Z

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v2}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v3

    iget-object v5, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v5}, Lcom/amap/api/col/l3/g;->b(Lcom/amap/api/col/l3/g;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/amap/api/col/l3/jz;->a(DD)Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3/kf;->a(Landroid/content/Context;JZ)V

    iget-object v2, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iput-boolean v1, v2, Lcom/amap/api/col/l3/g;->e:Z

    :cond_3
    iget-object v2, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v2}, Lcom/amap/api/col/l3/g;->c(Lcom/amap/api/col/l3/g;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/ki;->a(Landroid/location/Location;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setMock(Z)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    iget-object v2, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object v2, v2, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget p1, p1, Lcom/amap/api/col/l3/g;->w:I

    const/4 v2, 0x3

    if-le p1, v2, :cond_4

    const/16 p1, 0x868

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    const/16 p1, 0xf

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string p1, "GpsLocation has been mocked!#1501"

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/location/Location;->setSpeed(F)V

    invoke-virtual {v0, p1}, Landroid/location/Location;->setAccuracy(F)V

    invoke-virtual {v0, p1}, Landroid/location/Location;->setBearing(F)V

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget v0, p1, Lcom/amap/api/col/l3/g;->w:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/amap/api/col/l3/g;->w:I

    return-void

    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    const/4 v2, 0x0

    iput v2, v1, Lcom/amap/api/col/l3/g;->w:I

    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v1}, Lcom/amap/api/col/l3/g;->c(Lcom/amap/api/col/l3/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/g;->b(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/g;->c(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V

    invoke-static {v0}, Lcom/amap/api/col/l3/g;->b(Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/g;->d(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/g;->e(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object v1, v1, Lcom/amap/api/col/l3/g;->o:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object v3, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object v3, v3, Lcom/amap/api/col/l3/g;->y:Lcom/amap/api/location/AMapLocation;

    invoke-static {v2, v0, v3}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object v1, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object p1, p1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/amap/api/col/l3/g;->m:J

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object v1, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v1

    iput v1, p1, Lcom/amap/api/col/l3/g;->n:F

    :cond_7
    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    iget-object p1, p1, Lcom/amap/api/col/l3/g;->p:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1}, Lcom/amap/api/col/l3/g;->d(Lcom/amap/api/col/l3/g;)Ljava/lang/String;

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1}, Lcom/amap/api/col/l3/g;->e(Lcom/amap/api/col/l3/g;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1}, Lcom/amap/api/col/l3/g;->f(Lcom/amap/api/col/l3/g;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_5
    const-string v1, "GpsLocation"

    const-string v2, "onLocationChangedLast"

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    const-string v0, "GpsLocation"

    const-string v1, "onLocationChanged"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/amap/api/col/l3/g;->d:J

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    if-nez p2, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/amap/api/col/l3/g;->d:J

    iget-object p1, p0, Lcom/amap/api/col/l3/g$1;->a:Lcom/amap/api/col/l3/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_0
    return-void
.end method
