.class public final Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothListenerReceiver"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->D1()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive--ble closing"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->D1()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive--ble opened"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->q3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->D1()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive--ble opening"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
