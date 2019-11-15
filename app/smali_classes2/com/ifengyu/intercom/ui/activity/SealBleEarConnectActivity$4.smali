.class Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "SealBleEarConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const v3, 0x7f090183

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x400

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->i(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found bt ear address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.bluetooth.device.extra.RSSI"

    const/16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v2

    new-instance v3, Lcom/ifengyu/intercom/bean/BtEarBean;

    invoke-direct {v3, v0, v2}, Lcom/ifengyu/intercom/bean/BtEarBean;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->j(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Receiver: scan bt ear stated"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    const v2, 0x7f0901a1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->k(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    move-result-object v0

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a(I)V

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->l(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Receiver: scan bt ear finished"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->m(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->k(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    move-result-object v0

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->n(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Z)Z

    goto :goto_1
.end method
