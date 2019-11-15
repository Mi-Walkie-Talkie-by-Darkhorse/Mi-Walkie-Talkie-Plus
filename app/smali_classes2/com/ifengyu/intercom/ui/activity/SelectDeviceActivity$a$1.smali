.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->b(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->g(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->g(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->g(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->h(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/node/f;->a(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/Class;)V

    :cond_3
    return-void
.end method
