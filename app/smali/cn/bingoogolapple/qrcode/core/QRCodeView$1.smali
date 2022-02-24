.class Lcn/bingoogolapple/qrcode/core/QRCodeView$1;
.super Lcn/bingoogolapple/qrcode/core/ProcessDataTask;
.source "QRCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/QRCodeView;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;Landroid/hardware/Camera;[BLcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;ILandroid/hardware/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iput-object p6, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->val$camera:Landroid/hardware/Camera;

    invoke-direct {p0, p2, p3, p4, p5}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;-><init>(Landroid/hardware/Camera;[BLcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iget-object v0, v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    invoke-interface {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onScanQRCodeSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->val$camera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
