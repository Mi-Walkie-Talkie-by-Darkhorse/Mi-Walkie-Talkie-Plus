.class public final synthetic Lcom/ifengyu/intercom/ui/activity/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/v;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/v;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method
