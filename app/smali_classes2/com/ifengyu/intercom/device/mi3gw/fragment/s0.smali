.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/s0;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/s0;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->O3(Ljava/lang/Throwable;)V

    return-void
.end method