.class public final synthetic Lcom/ifengyu/intercom/ui/activity/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/f;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/f;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    check-cast p1, Lcom/ifengyu/intercom/lite/event/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/lite/event/a;)V

    return-void
.end method