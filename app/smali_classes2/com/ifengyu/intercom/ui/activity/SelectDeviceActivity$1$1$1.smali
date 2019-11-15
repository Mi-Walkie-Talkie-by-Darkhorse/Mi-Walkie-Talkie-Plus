.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
