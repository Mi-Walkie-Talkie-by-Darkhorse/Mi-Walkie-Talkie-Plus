.class public Lcn/bingoogolapple/qrcode/core/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

.field private doAutoFocus:Ljava/lang/Runnable;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

.field private mPreviewing:Z

.field private mSurfaceCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    new-instance v0, Lcn/bingoogolapple/qrcode/core/CameraPreview$2;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview$2;-><init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    new-instance v0, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;-><init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    return-void
.end method

.method static synthetic access$000(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$200(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    return v0
.end method

.method static synthetic access$300(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    return-object v0
.end method

.method private flashLightAvailable()Z
    .locals 2

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

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
.method public closeFlashlight()V
    .locals 2

    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->flashLightAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->closeFlashlight(Landroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getDefaultSize(II)I

    move-result v0

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    invoke-virtual {v2}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    invoke-virtual {v2}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v1

    mul-float/2addr v4, v7

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v5, v3

    mul-float/2addr v5, v7

    int-to-float v6, v2

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    int-to-float v1, v2

    mul-float/2addr v1, v7

    int-to-float v2, v3

    div-float/2addr v1, v2

    int-to-float v2, v0

    div-float v1, v2, v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    :cond_0
    :goto_0
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void

    :cond_1
    int-to-float v0, v3

    mul-float/2addr v0, v7

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v1

    div-float v0, v2, v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    goto :goto_0
.end method

.method public openFlashlight()V
    .locals 2

    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->flashLightAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->openFlashlight(Landroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 2

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    new-instance v0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->requestLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->showCameraPreview()V

    goto :goto_0
.end method

.method public showCameraPreview()V
    .locals 3

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopCameraPreview()V
    .locals 3

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    new-instance v0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;-><init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    return-void
.end method
