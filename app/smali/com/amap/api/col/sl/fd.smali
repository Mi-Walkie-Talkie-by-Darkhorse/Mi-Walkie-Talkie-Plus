.class public final Lcom/amap/api/col/sl/fd;
.super Ljava/lang/Object;
.source "OffLineManager.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.autonavi.aps.amapapi.offline.Off"

    iput-object v0, p0, Lcom/amap/api/col/sl/fd;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/fd;->c:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/fd;->d:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/fd;->e:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/col/sl/ev;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fd;->d()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v1, "getPureOfflineLocation"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/amap/api/col/sl/ev;

    const-string v3, ""

    invoke-direct {v1, v3}, Lcom/amap/api/col/sl/ev;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/amap/api/col/sl/ev;->b(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    move-object v0, v2

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fd;->d()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v1, "stopOff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fd;->d:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/sl/fg;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/amap/api/col/sl/ev;)Lcom/amap/api/col/sl/ev;
    .locals 3

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Lcom/amap/api/col/sl/ev;->getErrorCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p6

    :cond_1
    if-nez p4, :cond_2

    new-instance p4, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p4}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    :cond_2
    invoke-static {p4}, Lcom/amap/api/col/sl/fq;->a(Lcom/amap/api/location/AMapLocationClientOption;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p5}, Lcom/amap/api/col/sl/fd;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Lcom/amap/api/col/sl/fg;->a(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->e(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->setLocationType(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/amap/api/col/sl/ev;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/col/sl/fd;->a(Lorg/json/JSONObject;)V

    move-object p6, v0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fd;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v1, "getOffDlHist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v1, "stopOff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fd;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/sl/fd;->e:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/sl/fp;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fd;->c:Z

    if-nez v0, :cond_0

    const-string v0, "OfflineLocation"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fd;->c:Z

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fd;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/sl/fd;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/col/sl/fd;->c:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OffLineLocManager"

    const-string v2, "initOffLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/col/sl/fb;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/amap/api/col/sl/fb;->b:Ljava/util/ArrayList;

    iget v1, p1, Lcom/amap/api/col/sl/fb;->a:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v0, "resetCdmaData"

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/fd;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "resetCdmaData"

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/fd;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/fa;

    iget v1, v0, Lcom/amap/api/col/sl/fa;->f:I

    if-lez v1, :cond_1

    iget v1, v0, Lcom/amap/api/col/sl/fa;->e:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/sl/fd;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v2, "setCdmaLatLon"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/amap/api/col/sl/fa;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v0, v0, Lcom/amap/api/col/sl/fa;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "resetCdmaData"

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/fd;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fd;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fd;->d:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/sl/fq;->a(Lcom/amap/api/location/AMapLocationClientOption;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v2, "startOff"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fd;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OffLineLocManager"

    const-string v2, "getLocation:isOffLineLoc"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/amap/api/col/sl/ev;)V
    .locals 9

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/amap/api/col/sl/ev;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/amap/api/col/sl/ev;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/amap/api/col/sl/fd;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v5, "updateHM"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/amap/api/col/sl/fd;->e:Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v1, "setLastLoc"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const-string v0, "stopOff"

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/fd;->a(Ljava/lang/String;)V

    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/fd;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/fd;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fd;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fd;->b:Ljava/lang/Object;

    const-string v1, "resetPureOfflineCache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
