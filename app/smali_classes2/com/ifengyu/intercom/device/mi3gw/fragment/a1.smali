.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/a1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/a1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    check-cast p1, Lcom/ifengyu/library/http/entity/HttpDataList;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->q3(Lcom/ifengyu/library/http/entity/HttpDataList;)V

    return-void
.end method
