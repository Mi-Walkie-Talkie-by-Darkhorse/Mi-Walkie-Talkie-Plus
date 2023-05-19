.class Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e;
.super Ljava/lang/Object;
.source "BleDeviceMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->b0()V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    const v1, 0x7f110025

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    return-void
.end method
