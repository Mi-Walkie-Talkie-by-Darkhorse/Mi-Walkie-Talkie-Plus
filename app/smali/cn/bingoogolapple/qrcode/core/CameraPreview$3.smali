.class Lcn/bingoogolapple/qrcode/core/CameraPreview$3;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/qrcode/core/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V
    .locals 0

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$300(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$3;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$300(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
