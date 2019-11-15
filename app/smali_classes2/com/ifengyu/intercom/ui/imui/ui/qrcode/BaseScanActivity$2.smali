.class Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "BaseScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(Lcom/ifengyu/im/DB/entity/GroupEntity;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    const v0, 0x7f090155

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->d(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "\u5df2\u53d1\u51fa\u7533\u8bf7\uff0c\u7b49\u5f85\u7fa4\u4e3b\u5ba1\u6838"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->finish()V

    return-void
.end method

.method public onTimeout()V
    .locals 1

    const v0, 0x7f090155

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->e(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$2;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    :cond_0
    return-void
.end method
