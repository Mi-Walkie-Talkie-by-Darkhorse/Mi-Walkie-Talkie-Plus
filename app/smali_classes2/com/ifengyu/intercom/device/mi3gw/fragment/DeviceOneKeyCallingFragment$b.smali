.class Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment$b;
.super Lcom/ifengyu/library/b/e/a;
.source "DeviceOneKeyCallingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->D3(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment$b;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment$b;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->i3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setDeviceSosContact fail"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment$b;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    const v0, 0x7f11037b

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->j3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;I)V

    return-void
.end method