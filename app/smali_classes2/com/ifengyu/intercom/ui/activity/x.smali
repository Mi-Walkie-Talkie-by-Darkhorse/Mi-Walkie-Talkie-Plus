.class public final synthetic Lcom/ifengyu/intercom/ui/activity/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

.field private final synthetic b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/x;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/x;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/x;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/x;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method
