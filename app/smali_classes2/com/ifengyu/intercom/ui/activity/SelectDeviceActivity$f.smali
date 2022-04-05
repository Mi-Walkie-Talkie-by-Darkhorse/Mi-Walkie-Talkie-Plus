.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$f;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$f;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    check-cast p2, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$f;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
