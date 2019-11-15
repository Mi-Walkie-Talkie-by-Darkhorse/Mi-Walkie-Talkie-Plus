.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/adapter/m$a;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v2, 0x7f0901b5

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v3, 0x7f090088

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ZZLjava/lang/String;I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, p2, p3, p4}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v2, 0x7f0901b3

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
