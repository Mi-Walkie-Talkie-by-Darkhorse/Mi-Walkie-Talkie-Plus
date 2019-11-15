.class Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "BaseScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(I)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->b(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->hideTipDialog()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    :cond_0
    const-string v0, "\u672a\u627e\u5230\u8be5\u7fa4\u7ec4\u4fe1\u606f"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->hideTipDialog()V

    instance-of v0, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->c(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->hideTipDialog()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->mZxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    :cond_0
    const v0, 0x7f090155

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    return-void
.end method
