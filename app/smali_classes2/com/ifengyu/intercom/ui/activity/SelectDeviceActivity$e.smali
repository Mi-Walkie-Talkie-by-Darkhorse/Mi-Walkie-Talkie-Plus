.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/ui/adapter/n$d;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    const v2, 0x7f1102c2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->k(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p1

    const p2, 0x8f03

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const-class p2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->j(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/lite/h/h0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v()V

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    const v2, 0x7f1102c0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
