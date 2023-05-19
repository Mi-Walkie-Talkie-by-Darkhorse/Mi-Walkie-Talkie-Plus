.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/k1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/k1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/k1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->r3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
