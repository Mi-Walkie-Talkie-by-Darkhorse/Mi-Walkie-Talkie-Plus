.class public final synthetic Lcom/ifengyu/intercom/ui/activity/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/r;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/r;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    check-cast p1, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/lite/models/DeviceModel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    return-object p1
.end method
