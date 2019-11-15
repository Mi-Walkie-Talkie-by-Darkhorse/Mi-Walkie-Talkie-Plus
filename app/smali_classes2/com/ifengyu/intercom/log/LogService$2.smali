.class Lcom/ifengyu/intercom/log/LogService$2;
.super Landroid/content/BroadcastReceiver;
.source "LogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/log/LogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/log/LogService;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/log/LogService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/log/LogService$2;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/log/LogService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLogTaskReceiver\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MONITOR_LOG_SIZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$2;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v0}, Lcom/ifengyu/intercom/log/LogService;->e(Lcom/ifengyu/intercom/log/LogService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$2;->a:Lcom/ifengyu/intercom/log/LogService;

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogService$2;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v1}, Lcom/ifengyu/intercom/log/LogService;->d(Lcom/ifengyu/intercom/log/LogService;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/log/LogService;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/log/LogService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The log is out of date !"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/log/LogService$b;

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogService$2;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/log/LogService$b;-><init>(Lcom/ifengyu/intercom/log/LogService;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/log/LogService$b;->start()V

    goto :goto_0
.end method
