.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/m;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/m;->notifyItemRemoved(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->g()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
