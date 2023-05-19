.class Lcom/ifengyu/intercom/service/logCollect/LogService$b;
.super Landroid/content/BroadcastReceiver;
.source "LogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/service/logCollect/LogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/service/logCollect/LogService;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/service/logCollect/LogService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/service/logCollect/LogService$b;->a:Lcom/ifengyu/intercom/service/logCollect/LogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/service/logCollect/LogService;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLogTaskReceiver\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MONITOR_LOG_SIZE"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/service/logCollect/LogService$b;->a:Lcom/ifengyu/intercom/service/logCollect/LogService;

    invoke-static {p1}, Lcom/ifengyu/intercom/service/logCollect/LogService;->c(Lcom/ifengyu/intercom/service/logCollect/LogService;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.TIME_SET"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/service/logCollect/LogService$b;->a:Lcom/ifengyu/intercom/service/logCollect/LogService;

    invoke-static {p1}, Lcom/ifengyu/intercom/service/logCollect/LogService;->i(Lcom/ifengyu/intercom/service/logCollect/LogService;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lcom/ifengyu/intercom/service/logCollect/LogService;->m(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/service/logCollect/LogService;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "The log is out of date !"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Lcom/ifengyu/intercom/service/logCollect/LogService$d;

    iget-object p2, p0, Lcom/ifengyu/intercom/service/logCollect/LogService$b;->a:Lcom/ifengyu/intercom/service/logCollect/LogService;

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/service/logCollect/LogService$d;-><init>(Lcom/ifengyu/intercom/service/logCollect/LogService;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
