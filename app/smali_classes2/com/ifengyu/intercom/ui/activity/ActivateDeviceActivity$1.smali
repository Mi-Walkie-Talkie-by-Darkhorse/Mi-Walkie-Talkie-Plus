.class Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$1;
.super Ljava/lang/Object;
.source "ActivateDeviceActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
