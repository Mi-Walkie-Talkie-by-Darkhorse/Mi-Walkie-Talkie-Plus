.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/t0;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/t0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/t0;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/t0;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->K3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
