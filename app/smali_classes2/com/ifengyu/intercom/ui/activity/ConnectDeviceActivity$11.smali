.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const v1, 0x7f090095

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/a;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
