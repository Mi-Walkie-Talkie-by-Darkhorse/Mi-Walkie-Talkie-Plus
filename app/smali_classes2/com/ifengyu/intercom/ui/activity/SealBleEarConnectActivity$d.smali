.class Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;
.super Landroid/content/BroadcastReceiver;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found bt ear address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x8000

    const-string v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p2

    new-instance v1, Lcom/ifengyu/intercom/bean/BtEarBean;

    invoke-direct {v1, p1, p2}, Lcom/ifengyu/intercom/bean/BtEarBean;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->k(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x7f110281

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Receiver: scan bt ear stated"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->n(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    const v1, 0x7f1102ad

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    move-result-object p1

    const p2, 0x7f080076

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a(I)V

    goto/16 :goto_1

    :cond_1
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->h(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Receiver: scan bt ear finished"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->k(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->n(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f110259

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->i(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->j(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->n(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1102ae

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f11027e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Z)Z

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    move-result-object p1

    const p2, 0x7f080078

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->y()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z()V

    :cond_4
    :goto_1
    return-void
.end method
