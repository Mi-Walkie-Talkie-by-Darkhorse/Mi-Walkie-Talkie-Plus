.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/c1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    iput-wide p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/c1;->b:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/c1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/c1;->b:J

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->u3(JLcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
