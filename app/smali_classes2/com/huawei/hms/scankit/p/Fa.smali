.class public final Lcom/huawei/hms/scankit/p/Fa;
.super Ljava/lang/Object;
.source "CameraConfigImpl.java"


# instance fields
.field private a:Lcom/huawei/hms/scankit/p/xa;

.field b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 0

    if-nez p2, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 28
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/p/Fa;->a(Ljava/util/List;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, "CameraManager"

    const-string p1, "CameraConfigImpl::findCameraResolution camera not support"

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance p0, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private static a(Ljava/util/List;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/graphics/Point;",
            ")",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .line 32
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v4, v3

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 34
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    .line 35
    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    .line 36
    iget v8, p1, Landroid/graphics/Point;->x:I

    if-ne v7, v8, :cond_1

    iget v8, p1, Landroid/graphics/Point;->y:I

    if-ne v6, v8, :cond_1

    .line 37
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v7, v6}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_1
    mul-int v8, v7, v6

    int-to-double v8, v8

    const-wide v10, 0x4102c00000000000L    # 153600.0

    cmpg-double v12, v8, v10

    if-ltz v12, :cond_0

    int-to-double v8, v7

    int-to-double v10, v6

    div-double/2addr v8, v10

    sub-double/2addr v8, v0

    .line 38
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v12, v10, v4

    if-gez v12, :cond_0

    .line 39
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-wide v4, v2

    move v3, v6

    move v2, v7

    goto :goto_0

    .line 40
    :cond_2
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)V
    .locals 6

    const-string v0, "continuous-picture"

    const-string v1, "continuous-video"

    const-string v2, "auto"

    .line 41
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "CameraManager"

    if-nez v1, :cond_0

    const-string p0, "setFocusMode failed, use default"

    .line 43
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 44
    aget-object v4, v0, v3

    .line 45
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 46
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFocusMode: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method final a(Landroid/hardware/Camera;Lcom/huawei/hms/scankit/p/xa;)V
    .locals 5

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/Fa;->a:Lcom/huawei/hms/scankit/p/xa;

    .line 3
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xa;->a()Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/scankit/p/Fa;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/scankit/p/Fa;->b:Landroid/graphics/Point;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initCameraParameters previewCameraSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Fa;->b:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xa;->c()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xa;->a()Landroid/graphics/Point;

    move-result-object p2

    invoke-static {v0, p2, v3}, Lcom/huawei/hms/scankit/p/Fa;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/Fa;->c:Landroid/graphics/Point;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "initCameraParameters pictureCameraSize: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Fa;->c:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Fa;->b:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Fa;->c:Landroid/graphics/Point;

    .line 9
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Fa;->a:Lcom/huawei/hms/scankit/p/xa;

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 11
    iget v4, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 12
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Fa;->a:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xa;->c()I

    move-result p2

    if-nez p2, :cond_1

    .line 13
    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, p2, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Fa;->a:Lcom/huawei/hms/scankit/p/xa;

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xa;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "off"

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "torch"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object p2, v0

    .line 17
    :cond_2
    invoke-virtual {v1, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-static {v1}, Lcom/huawei/hms/scankit/p/Fa;->a(Landroid/hardware/Camera$Parameters;)V

    .line 19
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_0

    :cond_4
    const-string p2, "initCameraParameters::setDefaultZoom not support zoom"

    .line 21
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Fa;->a:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xa;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 23
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 24
    :cond_5
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_6
    return-void

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initCameraParameters param is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
