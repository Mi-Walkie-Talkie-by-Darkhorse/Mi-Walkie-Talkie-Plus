.class Lcom/ifengyu/intercom/log/LogService$d;
.super Ljava/lang/Thread;
.source "LogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/log/LogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/log/LogService;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/log/LogService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    const-string p1, "LogCollectorThread"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/log/LogService;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LogCollectorThread is create"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v0}, Lcom/ifengyu/intercom/log/LogService;->a(Lcom/ifengyu/intercom/log/LogService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v0}, Lcom/ifengyu/intercom/log/LogService;->c(Lcom/ifengyu/intercom/log/LogService;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v0}, Lcom/ifengyu/intercom/log/LogService;->d(Lcom/ifengyu/intercom/log/LogService;)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/log/LogService;->a(Lcom/ifengyu/intercom/log/LogService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/log/LogService;->b(Lcom/ifengyu/intercom/log/LogService;Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/log/LogService;->a(Lcom/ifengyu/intercom/log/LogService;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/log/LogService;->b(Lcom/ifengyu/intercom/log/LogService;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    iget-object v2, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v2}, Lcom/ifengyu/intercom/log/LogService;->e(Lcom/ifengyu/intercom/log/LogService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/log/LogService;->c(Lcom/ifengyu/intercom/log/LogService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/log/LogService;->b(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v1}, Lcom/ifengyu/intercom/log/LogService;->e(Lcom/ifengyu/intercom/log/LogService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/log/LogService;->c(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$d;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-static {v0}, Lcom/ifengyu/intercom/log/LogService;->a(Lcom/ifengyu/intercom/log/LogService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
