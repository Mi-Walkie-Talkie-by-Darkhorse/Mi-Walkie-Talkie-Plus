.class public abstract Lcn/bingoogolapple/qrcode/core/QRCodeView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;
    }
.end annotation


# instance fields
.field protected mCamera:Landroid/hardware/Camera;

.field protected mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

.field protected mHandler:Landroid/os/Handler;

.field private mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

.field private mOrientation:I

.field protected mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

.field protected mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

.field protected mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

.field protected mSpotAble:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    new-instance p3, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;

    invoke-direct {p3, p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    iput-object p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    new-instance v0, Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    new-instance v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0, p1, p2}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->initCustomAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    sget v1, Lcn/bingoogolapple/qrcode/core/R$id;->bgaqrcode_camera_preview:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setId(I)V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getId()I

    move-result p2

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getId()I

    move-result p2

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {p0, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getOrientation(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOrientation:I

    return-void
.end method

.method private startCameraById(I)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->setCamera(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onScanQRCodeOpenCameraError()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelProcessDataTask()V
    .locals 1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->cancelTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    :cond_0
    return-void
.end method

.method public changeToScanBarcodeStyle()V
    .locals 2

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setIsBarcode(Z)V

    :cond_0
    return-void
.end method

.method public changeToScanQRCodeStyle()V
    .locals 2

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setIsBarcode(Z)V

    :cond_0
    return-void
.end method

.method public closeFlashlight()V
    .locals 1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->closeFlashlight()V

    return-void
.end method

.method public getIsScanBarcodeStyle()Z
    .locals 1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    return v0
.end method

.method public getScanBoxView()Lcn/bingoogolapple/qrcode/core/ScanBoxView;
    .locals 1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    return-object v0
.end method

.method public hiddenScanRect()V
    .locals 2

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->stopCamera()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->cancelProcessDataTask()V

    new-instance v0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOrientation:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;Landroid/hardware/Camera;[BLcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;ILandroid/hardware/Camera;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->perform()Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    :cond_0
    return-void
.end method

.method public openFlashlight()V
    .locals 1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->openFlashlight()V

    return-void
.end method

.method public setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    return-void
.end method

.method public showScanRect()V
    .locals 2

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startCamera()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startCamera(I)V

    return-void
.end method

.method public startCamera(I)V
    .locals 3

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p1, :cond_1

    invoke-direct {p0, v1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startCameraById(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public startSpot()V
    .locals 1

    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startSpotDelay(I)V

    return-void
.end method

.method public startSpotAndShowRect()V
    .locals 0

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startSpot()V

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->showScanRect()V

    return-void
.end method

.method public startSpotDelay(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startCamera()V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopCamera()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->stopSpotAndHiddenRect()V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->setCamera(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public stopSpot()V
    .locals 2

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->cancelProcessDataTask()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public stopSpotAndHiddenRect()V
    .locals 0

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->stopSpot()V

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->hiddenScanRect()V

    return-void
.end method
