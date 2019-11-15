.class final Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEN_DESIRED_ZOOM:I = 0x1b


# instance fields
.field private mCameraResolution:Landroid/graphics/Point;

.field private final mContext:Landroid/content/Context;

.field private mPreviewResolution:Landroid/graphics/Point;

.field private mScreenResolution:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static autoFocusAble(Landroid/hardware/Camera;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "auto"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private doSetTorch(Landroid/hardware/Camera;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "torch"

    aput-object v3, v2, v4

    const-string v3, "on"

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static findBestMotZoomValue(Ljava/lang/CharSequence;I)I
    .locals 10

    const/4 v0, 0x0

    sget-object v1, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v6

    double-to-int v0, v8

    int-to-double v8, p1

    sub-double v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-int v5, p1, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v8, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_2
    return p1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static findBestPreviewSizeValue(Ljava/util/List;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/graphics/Point;",
            ")",
            "Landroid/graphics/Point;"
        }
    .end annotation

    const/4 v1, 0x0

    const v0, 0x7fffffff

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    move v3, v1

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p1, Landroid/graphics/Point;->y:I

    sub-int v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v0, v7

    if-nez v0, :cond_0

    :goto_1
    if-lez v5, :cond_1

    if-lez v4, :cond_1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    return-object v0

    :cond_0
    if-ge v0, v1, :cond_2

    move v1, v4

    move v2, v5

    :goto_3
    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_3

    :cond_3
    move v4, v2

    move v5, v3

    goto :goto_1
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static getPreviewResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findBestPreviewSizeValue(Ljava/util/List;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    shr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/graphics/Point;->y:I

    shr-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :cond_0
    return-object v0
.end method

.method private setZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 8

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-string v0, "zoom-supported"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x1b

    const-string v0, "max-zoom"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v0, v4

    if-le v1, v0, :cond_8

    :goto_1
    move v1, v0

    :cond_2
    :goto_2
    const-string v0, "taking-picture-zoom-max"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-le v1, v0, :cond_3

    move v1, v0

    :cond_3
    :goto_3
    const-string v0, "mot-zoom-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findBestMotZoomValue(Ljava/lang/CharSequence;I)I

    move-result v1

    :cond_4
    const-string v4, "mot-zoom-step"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    rem-int v4, v1, v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v1, v4

    :cond_5
    :goto_4
    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "zoom"

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_0

    const-string v0, "taking-picture-zoom"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public closeFlashlight(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mCameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_1
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :cond_0
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 4

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->autoFocusAble(Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mScreenResolution:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mScreenResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mScreenResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getOrientation(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mScreenResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mScreenResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    :cond_1
    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getPreviewResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    if-nez v2, :cond_2

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mCameraResolution:Landroid/graphics/Point;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mCameraResolution:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public openFlashlight(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-direct {p0, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->setZoom(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getDisplayOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
