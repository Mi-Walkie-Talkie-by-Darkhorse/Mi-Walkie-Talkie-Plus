.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(I)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.CONNECT_HELP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
