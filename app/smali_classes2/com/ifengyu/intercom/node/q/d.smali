.class public Lcom/ifengyu/intercom/node/q/d;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"


# static fields
.field private static final f:Ljava/lang/String; = "d"

.field private static g:Lcom/ifengyu/intercom/node/q/d;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/ifengyu/intercom/node/q/a;

.field public e:Lcom/ifengyu/intercom/node/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/node/q/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/node/q/b;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/node/q/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/node/q/a;-><init>(Lcom/ifengyu/intercom/node/q/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/ifengyu/intercom/node/q/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/node/q/d;->g:Lcom/ifengyu/intercom/node/q/d;

    if-eqz v1, :cond_0

    .line 2
    sget-object p0, Lcom/ifengyu/intercom/node/q/d;->f:Ljava/lang/String;

    const-string v1, "already been initialized!"

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v1, Lcom/ifengyu/intercom/node/q/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/node/q/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ifengyu/intercom/node/q/d;->g:Lcom/ifengyu/intercom/node/q/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Lcom/ifengyu/intercom/node/q/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/node/q/d;->g:Lcom/ifengyu/intercom/node/q/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;
    .locals 3

    .line 13
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    const-class v2, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "connection_config"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    sget-object p1, Lcom/ifengyu/intercom/node/q/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/q/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/ifengyu/intercom/node/q/d;->a:Z

    if-eqz v1, :cond_0

    .line 9
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/ifengyu/intercom/node/q/d;->a:Z

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/q/d;->b()V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/ifengyu/intercom/node/p;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ifengyu/intercom/node/q/d;->e:Lcom/ifengyu/intercom/node/p;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/q/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/q/d;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "ble_priority"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 18
    :cond_1
    sget-object p1, Lcom/ifengyu/intercom/node/q/d;->f:Ljava/lang/String;

    const-string p2, "requestConnectionPrio: null btAddress, ignore."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/q/d;->a:Z

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    const-class v3, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/q/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lcom/ifengyu/intercom/node/q/d;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to starting conn service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 9
    :cond_3
    invoke-static {v2}, Lcom/ifengyu/intercom/i/d0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/node/q/d;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/q/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/q/a;->b(Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    if-nez p1, :cond_1

    .line 12
    sget-object p1, Lcom/ifengyu/intercom/node/q/d;->f:Ljava/lang/String;

    const-string p2, "didn\'t remove any config, skipping update"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    .line 16
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    const-class v2, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "connection_config"

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "connection_remove"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "notReConn"

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/node/q/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to starting conn service for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/ifengyu/intercom/node/q/d;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/q/d;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    if-nez p1, :cond_1

    .line 9
    sget-object p1, Lcom/ifengyu/intercom/node/q/d;->f:Ljava/lang/String;

    const-string v0, "didn\'t remove any config, skipping update"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q/d;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/q/d;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "connection_remove"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method
