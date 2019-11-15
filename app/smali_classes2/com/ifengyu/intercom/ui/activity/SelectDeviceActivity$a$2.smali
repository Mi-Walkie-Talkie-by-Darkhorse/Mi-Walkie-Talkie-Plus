.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$2;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$2;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$2;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$2;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$2;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$2;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    return-void
.end method
