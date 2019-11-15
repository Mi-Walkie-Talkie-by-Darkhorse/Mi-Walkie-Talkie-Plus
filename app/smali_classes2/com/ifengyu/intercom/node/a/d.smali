.class public Lcom/ifengyu/intercom/node/a/d;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"


# static fields
.field private static final f:Ljava/lang/String;

.field private static g:Lcom/ifengyu/intercom/node/a/d;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/ifengyu/intercom/node/a/a;

.field public e:Lcom/ifengyu/intercom/node/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/a/d;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    new-instance v0, Lcom/ifengyu/intercom/node/a/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/node/a/b;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/node/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/a/a;-><init>(Lcom/ifengyu/intercom/node/a/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/node/a/d;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/a/d;->g:Lcom/ifengyu/intercom/node/a/d;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/ifengyu/intercom/node/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/node/a/d;->g:Lcom/ifengyu/intercom/node/a/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/node/a/d;->f:Ljava/lang/String;

    const-string v2, "already been initialized!"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/ifengyu/intercom/node/a/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ifengyu/intercom/node/a/d;->g:Lcom/ifengyu/intercom/node/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    const-class v2, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "connection_config"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcom/ifengyu/intercom/node/a/d;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntent() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/node/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/a/d;->e:Lcom/ifengyu/intercom/node/q;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/a/d;->f:Ljava/lang/String;

    const-string v1, "didn\'t remove any config, skipping update"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/a/d;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "connection_remove"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/node/a/d;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "ble_priority"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/node/a/d;->f:Ljava/lang/String;

    const-string v1, "requestConnectionPrio: null btAddress, ignore."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/intercom/node/a/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/a/d;->a:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/a/d;->a:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/a/d;->c()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/node/a/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to starting conn service for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/a/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/a/d;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/a/d;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/a/a;->b(Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/a/d;->f:Ljava/lang/String;

    const-string v1, "didn\'t remove any config, skipping update"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    const-class v3, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "connection_config"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "connection_remove"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "notReConn"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 5

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/a/d;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    const-class v3, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ifengyu/intercom/node/a/d;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to starting conn service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/a/d;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/a/d;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/a/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method
