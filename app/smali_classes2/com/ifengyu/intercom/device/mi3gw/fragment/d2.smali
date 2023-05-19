.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/d2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/d2;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/d2;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->s3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
