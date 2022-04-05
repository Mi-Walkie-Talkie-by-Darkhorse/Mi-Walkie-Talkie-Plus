.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o$a;->b:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o$a;->a:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o$a;->b:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o$a;->a:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;)V

    return-void
.end method
