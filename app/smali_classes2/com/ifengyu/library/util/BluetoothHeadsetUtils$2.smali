.class Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHeadsetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/util/BluetoothHeadsetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is off"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is on"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothDevice bond state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v2}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    iget-object v1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDevice bonded"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDevice unbonded"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDevice bonding"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth disconnected"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth connected"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :pswitch_9
    goto/16 :goto_0

    :pswitch_a
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHeadset disconnected"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    sget-object v1, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHeadset connected"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    sget-object v1, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->b:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request paring"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->e:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method
