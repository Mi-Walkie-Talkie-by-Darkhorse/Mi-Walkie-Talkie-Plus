.class public Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
.source "BaseScanActivity.java"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;


# instance fields
.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001bb
    .end annotation
.end field

.field mTitleBar:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100097
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b3
    .end annotation
.end field

.field mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000af
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->showTipDiaog()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGroupDetailInfo(IZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7533\u8bf7\u52a0\u7fa4"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u786e\u8ba4\u52a0\u5165\u8be5\u7fa4\uff1f"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Z)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Z)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/d;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/d;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u7533\u8bf7"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/e;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/e;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u672a\u53d1\u73b0\u4e8c\u7ef4\u7801"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->isActivated()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e8c\u7ef4\u7801\u5185\u5bb9"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Z)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Z)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const v1, 0x7f09006c

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/b;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const v1, 0x7f090075

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/c;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->isActivated()Z

    move-result v0

    return v0
.end method


# virtual methods
.method final synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->finish()V

    return-void
.end method

.method final synthetic a(Lcom/ifengyu/im/DB/entity/GroupEntity;Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    iget v2, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqApplyJoinGroup(IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method final synthetic b(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    return-void
.end method

.method final synthetic c(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f04001f

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initListener()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/a;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f09018f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->onDestroy()V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->TAG:Ljava/lang/String;

    const-string v1, "open camera error"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a()V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->onStart()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->onStop()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->stopCamera()V

    return-void
.end method
