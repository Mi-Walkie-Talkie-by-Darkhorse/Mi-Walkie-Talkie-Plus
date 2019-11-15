.class public Lcom/amap/api/maps/model/AMapCameraInfo;
.super Ljava/lang/Object;
.source "AMapCameraInfo.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->b:F

    iput v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->c:F

    iput v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->d:F

    iput v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->e:F

    iput v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->f:F

    iput p1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->a:F

    iput p2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->b:F

    iput p3, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->c:F

    iput p4, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->d:F

    iput p5, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->e:F

    iput p6, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->f:F

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->b:F

    return v0
.end method

.method public getFov()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->a:F

    return v0
.end method

.method public getRotate()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->c:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->d:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->e:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->f:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fov:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aspectRatio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rotate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pos_x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pos_y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pos_z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
