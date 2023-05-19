.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;
.super Landroid/content/BroadcastReceiver;
.source "SealBleEarConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_4

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found bt ear address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/y;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x8000

    const-string v2, "android.bluetooth.device.extra.RSSI"

    .line 8
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p2

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/bean/BtEarBean;

    invoke-direct {v1, p1, p2}, Lcom/ifengyu/intercom/bean/BtEarBean;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->R(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x7f110315

    if-eqz p2, :cond_1

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Receiver: scan bt ear stated"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->X(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    const v1, 0x7f110353

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    move-result-object p1

    const p2, 0x7f08008f

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->e(I)V

    goto/16 :goto_1

    :cond_1
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Receiver: scan bt ear finished"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->R(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->X(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1102e8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->N(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->X(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f110354

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f110312

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->P(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;Z)Z

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    move-result-object p1

    const p2, 0x7f080091

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->f(I)V

    .line 27
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->d0()V

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$d;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->e0()V

    :cond_4
    :goto_1
    return-void
.end method
