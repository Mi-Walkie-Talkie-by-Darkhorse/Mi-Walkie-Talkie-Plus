.class public final synthetic Lcom/ifengyu/intercom/ui/activity/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

.field public final synthetic b:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/a;->b:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/a;->b:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m0(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    return-void
.end method
