.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$13;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$13;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$13;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    new-instance v1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$13;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$13;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$13;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    return-void
.end method
