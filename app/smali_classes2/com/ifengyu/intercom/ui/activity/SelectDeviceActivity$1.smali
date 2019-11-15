.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v2, 0x7f090234

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->g()V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/node/a/d;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
