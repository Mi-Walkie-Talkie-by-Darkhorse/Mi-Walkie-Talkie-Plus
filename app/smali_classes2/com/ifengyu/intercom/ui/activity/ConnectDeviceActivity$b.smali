.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConnectDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U0()V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method