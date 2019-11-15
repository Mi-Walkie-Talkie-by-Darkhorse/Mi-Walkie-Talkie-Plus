.class final Lcom/amap/api/col/sl/g$2;
.super Ljava/lang/Object;
.source "GPSLocation.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/g;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/g;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/g$2;->a:Lcom/amap/api/col/sl/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/g$2;->a:Lcom/amap/api/col/sl/g;

    iget-object v2, p0, Lcom/amap/api/col/sl/g$2;->a:Lcom/amap/api/col/sl/g;

    iget-object v2, v2, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/amap/api/col/sl/g$2;->a:Lcom/amap/api/col/sl/g;

    iget-object v3, v3, Lcom/amap/api/col/sl/g;->y:Landroid/location/GpsStatus;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/g;->y:Landroid/location/GpsStatus;

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/sl/g$2;->a:Lcom/amap/api/col/sl/g;

    const/4 v1, 0x0

    iput v1, v0, Lcom/amap/api/col/sl/g;->x:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "onGpsStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/g$2;->a:Lcom/amap/api/col/sl/g;

    iget-object v0, v0, Lcom/amap/api/col/sl/g;->y:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/sl/g$2;->a:Lcom/amap/api/col/sl/g;

    iget-object v0, v0, Lcom/amap/api/col/sl/g;->y:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge v1, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/g$2;->a:Lcom/amap/api/col/sl/g;

    iput v1, v0, Lcom/amap/api/col/sl/g;->x:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
