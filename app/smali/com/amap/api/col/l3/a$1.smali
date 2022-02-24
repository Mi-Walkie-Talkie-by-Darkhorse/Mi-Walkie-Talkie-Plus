.class final Lcom/amap/api/col/l3/a$1;
.super Ljava/lang/Object;
.source "GeoFenceManager.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/a;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    iget-boolean v0, v0, Lcom/amap/api/col/l3/a;->y:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    iget-boolean v0, v0, Lcom/amap/api/col/l3/a;->o:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    iput-object p1, v0, Lcom/amap/api/col/l3/a;->s:Lcom/amap/api/location/AMapLocation;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v6

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v7

    if-nez v7, :cond_2

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v7

    iput-wide v7, p1, Lcom/amap/api/col/l3/a;->t:J

    .line 7
    iget-object p1, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    const/4 v7, 0x5

    invoke-virtual {p1, v7, v2, v0, v1}, Lcom/amap/api/col/l3/a;->a(ILandroid/os/Bundle;J)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const-string v7, "\u5b9a\u4f4d\u5931\u8d25"

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v8

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "locationDetail:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v5

    .line 11
    invoke-static {v7, v8, v9, v10}, Lcom/amap/api/col/l3/a;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const/16 v6, 0x8

    :goto_0
    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    iput v5, p1, Lcom/amap/api/col/l3/a;->v:I

    .line 13
    iget-object p1, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/amap/api/col/l3/a;->a(ILandroid/os/Bundle;J)V

    return-void

    .line 14
    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    iget-boolean v0, v0, Lcom/amap/api/col/l3/a;->m:Z

    if-nez v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/a;->a(I)V

    const-string v0, "interval"

    const-wide/16 v1, 0x7d0

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 18
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/amap/api/col/l3/a;->a(ILandroid/os/Bundle;J)V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    iget v1, v0, Lcom/amap/api/col/l3/a;->v:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/amap/api/col/l3/a;->v:I

    .line 20
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    iget v0, v0, Lcom/amap/api/col/l3/a;->v:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    const-string v0, "location_errorcode"

    .line 21
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/amap/api/col/l3/a$1;->a:Lcom/amap/api/col/l3/a;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/col/l3/a;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method
