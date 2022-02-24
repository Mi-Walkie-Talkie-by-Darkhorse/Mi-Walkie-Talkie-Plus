.class final Lcom/amap/api/col/l3/g$2;
.super Ljava/lang/Object;
.source "GpsLocation.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


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

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 4

    const-string v0, "GpsLocation"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    iget-object v1, v1, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    iget-object v2, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    iget-object v2, v2, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v3}, Lcom/amap/api/col/l3/g;->g(Lcom/amap/api/col/l3/g;)Landroid/location/GpsStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1}, Lcom/amap/api/col/l3/g;->g(Lcom/amap/api/col/l3/g;)Landroid/location/GpsStatus;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1}, Lcom/amap/api/col/l3/g;->g(Lcom/amap/api/col/l3/g;)Landroid/location/GpsStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    invoke-static {v1}, Lcom/amap/api/col/l3/g;->g(Lcom/amap/api/col/l3/g;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    .line 7
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ge v2, v1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 9
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "GPS_EVENT_SATELLITE_STATUS"

    .line 10
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;I)I

    :goto_1
    return-void

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/g$2;->a:Lcom/amap/api/col/l3/g;

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/col/l3/g;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string v1, "onGpsStatusChanged"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
