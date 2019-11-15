.class Lcom/xiaomi/mipush/sdk/aa;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/z;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/z;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const-class v2, Lcom/xiaomi/mipush/sdk/u;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/z;->a(Lcom/xiaomi/mipush/sdk/z;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/u;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/z;->a(Lcom/xiaomi/mipush/sdk/z;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/u;->c(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    if-ne v5, v1, :cond_2

    const-string v3, "disable_syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/z;->a(Lcom/xiaomi/mipush/sdk/z;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/u;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/xiaomi/mipush/sdk/z;->a(Lcom/xiaomi/mipush/sdk/z;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/z;->a(Lcom/xiaomi/mipush/sdk/z;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/u;->b(Ljava/lang/String;)V

    :cond_1
    :goto_1
    monitor-exit v2

    return-void

    :cond_2
    if-nez v1, :cond_0

    const-string v1, "enable_syncing"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/z;->a(Lcom/xiaomi/mipush/sdk/z;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/u;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/xiaomi/mipush/sdk/z;->a(Lcom/xiaomi/mipush/sdk/z;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/aa;->a:Lcom/xiaomi/mipush/sdk/z;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/z;->a(Lcom/xiaomi/mipush/sdk/z;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/u;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
