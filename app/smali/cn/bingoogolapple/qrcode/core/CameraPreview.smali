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

    .line 1
    const-class v0, Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    .line 4
    new-instance p1, Lcn/bingoogolapple/qrcode/core/CameraPreview$2;

    invoke-direct {p1, p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview$2;-><init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    .line 5
    new-instance p1, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;

    invoke-direct {p1, p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;-><init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    return-void
.end method

.method static synthetic access$000(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Landroid/hardware/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$100(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    return p0
.end method

.method static synthetic access$200(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    return p0
.end method

.method static synthetic access$300(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    return-object p0
.end method

.method private flashLightAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public closeFlashlight()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->flashLightAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->closeFlashlight(Landroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 6
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, v2, v3

    int-to-float v5, p2

    div-float/2addr v4, v5

    int-to-float v1, v1

    mul-float v6, v1, v3

    int-to-float v0, v0

    div-float/2addr v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    mul-float v0, v0, v3

    div-float/2addr v0, v1

    div-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int p1, v5

    goto :goto_0

    :cond_0
    div-float/2addr v2, v6

    add-float/2addr v2, v7

    float-to-int p2, v2

    :cond_1
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 7
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void
.end method

.method public openFlashlight()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->flashLightAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->openFlashlight(Landroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    .line 3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5
    iget-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->showCameraPreview()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showCameraPreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 6
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopCameraPreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    .line 4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 6
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    .line 3
    new-instance p1, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;

    invoke-direct {p1, p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;-><init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    .line 2
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    return-void
.end method
