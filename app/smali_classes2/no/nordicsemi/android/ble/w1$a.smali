.class Lno/nordicsemi/android/ble/w1$a;
.super Landroid/content/BroadcastReceiver;
.source "BleManagerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/ble/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lno/nordicsemi/android/ble/w1;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/w1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "TURNING OFF"

    return-object p1

    :pswitch_1
    const-string p1, "ON"

    return-object p1

    :pswitch_2
    const-string p1, "TURNING ON"

    return-object p1

    :pswitch_3
    const-string p1, "OFF"

    return-object p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/16 p1, 0xa

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 1
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 2
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Broadcast] Action received: android.bluetooth.adapter.action.STATE_CHANGED, state changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    const/16 v1, 0xd

    if-eq v0, p1, :cond_0

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p2, v1, :cond_4

    if-eq p2, p1, :cond_4

    .line 6
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 7
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->f(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    .line 8
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Ljava/util/Deque;)Ljava/util/Deque;

    .line 9
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->t(Lno/nordicsemi/android/ble/w1;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v1

    const/16 v2, -0x64

    if-eqz v1, :cond_1

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v1

    iget-object v1, v1, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v3, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-eq v1, v3, :cond_1

    .line 11
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 12
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;

    .line 13
    :cond_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 15
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 16
    :cond_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 18
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/b2;)Lno/nordicsemi/android/ble/b2;

    .line 19
    :cond_3
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v0, p2}, Lno/nordicsemi/android/ble/w1;->k(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 20
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Z)Z

    if-eqz p1, :cond_5

    .line 21
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$a;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->b()V

    :cond_5
    :goto_0
    return-void
.end method
