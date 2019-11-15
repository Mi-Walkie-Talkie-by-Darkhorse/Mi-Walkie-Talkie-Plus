.class public Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
.source "SelfQRCodeActivity.java"


# instance fields
.field private a:I

.field private b:I

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

.field mIvQRCode:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10016d
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v0

    invoke-static {p1, v0}, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->syncEncodeQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->mIvQRCode:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->finish()V

    return-void
.end method

.method final synthetic a(Ljava/lang/String;Lio/reactivex/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/reactivex/l;->a(Ljava/lang/Object;)V

    invoke-interface {p2}, Lio/reactivex/l;->a()V

    return-void
.end method

.method final synthetic a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate qr code error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u4e8c\u7ef4\u7801\u751f\u6210\u5931\u8d25"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f040046

    return v0
.end method

.method protected initBundle(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "session_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->a:I

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->b:I

    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "DefaultLocale"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->a:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->b:I

    if-lez v0, :cond_1

    const-string v0, "00"

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->a:I

    if-ne v1, v8, :cond_2

    const-string v0, "00"

    :cond_0
    :goto_0
    const-string v1, "%010d"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%06d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FY%s%s%s%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    const/4 v0, 0x2

    aput-object v2, v5, v0

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/g;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/g;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/k;->create(Lio/reactivex/m;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/e/a;->a()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/h;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/i;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/i;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/b/f;Lio/reactivex/b/f;)Lio/reactivex/disposables/b;

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->a:I

    if-ne v1, v7, :cond_0

    const-string v0, "01"

    goto :goto_0
.end method

.method protected initListener()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/f;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
