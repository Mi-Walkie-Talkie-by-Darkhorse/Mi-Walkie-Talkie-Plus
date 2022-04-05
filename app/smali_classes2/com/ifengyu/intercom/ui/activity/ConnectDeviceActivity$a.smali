.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/lite/dialog/list/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(I)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    if-eqz p3, :cond_2

    const/4 p4, 0x0

    if-eq p3, p2, :cond_1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p2, p4}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const-class p3, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p2, p4}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const-class p4, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.ifengyu.intercom.action.CONNECT_HELP"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-virtual {p3, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p3, p3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/app/Activity;)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p3, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->j(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object p3

    const p4, 0x7f1100a6

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object p3

    const p4, 0x7f1100b2

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p3, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method
