.class Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$m;
.super Ljava/lang/Object;
.source "BleDeviceMapActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$m;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$m;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$m;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$m;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
