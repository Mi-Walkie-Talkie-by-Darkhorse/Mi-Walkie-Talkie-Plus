.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.CONNECT_HELP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-direct {v2, v1, v0, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
