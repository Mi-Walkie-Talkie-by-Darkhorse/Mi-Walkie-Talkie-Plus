.class Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$c;
.super Ljava/lang/Object;
.source "BleDeviceMapActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->W(I)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->R(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
