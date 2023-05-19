.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/n;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/n;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    check-cast p1, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->G3(Lcom/ifengyu/intercom/device/common/event/ConnectEvent;)V

    return-void
.end method
