.class public final synthetic Lcom/ifengyu/intercom/device/mi3/activity/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3/activity/Mi3BaseFragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3/activity/Mi3BaseFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/activity/b;->a:Lcom/ifengyu/intercom/device/mi3/activity/Mi3BaseFragmentActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/activity/b;->a:Lcom/ifengyu/intercom/device/mi3/activity/Mi3BaseFragmentActivity;

    check-cast p1, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3/activity/Mi3BaseFragmentActivity;->P(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V

    return-void
.end method