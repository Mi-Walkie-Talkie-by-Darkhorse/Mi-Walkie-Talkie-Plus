.class Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$n;
.super Ljava/lang/Object;
.source "BleDeviceMapActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->c1()V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$n;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$n;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/p/g0;->b(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method
