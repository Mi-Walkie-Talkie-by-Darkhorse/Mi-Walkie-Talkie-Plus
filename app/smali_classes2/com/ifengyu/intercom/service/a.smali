.class public Lcom/ifengyu/intercom/service/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Z = false

.field private static c:Lcom/ifengyu/intercom/node/p;

.field private static d:Lcom/ifengyu/intercom/node/q/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/ifengyu/intercom/node/q/d;
    .locals 2

    const-class v0, Lcom/ifengyu/intercom/service/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/service/a;->d:Lcom/ifengyu/intercom/node/q/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/ifengyu/intercom/service/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ifengyu/intercom/service/a;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/service/a;->a:Ljava/lang/String;

    const-string v1, "Attempted to re-initialize walktalk statics, ignoring"

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/ifengyu/intercom/node/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/node/p;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/p;

    invoke-static {p0}, Lcom/ifengyu/intercom/node/q/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p0

    sput-object p0, Lcom/ifengyu/intercom/service/a;->d:Lcom/ifengyu/intercom/node/q/d;

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p0

    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/h/a;->a()Lcom/ifengyu/intercom/h/a;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/p;

    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/g;)V

    sget-object v1, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/p;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/g;)V

    sget-object v1, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/p;

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/g;)V

    sget-object p0, Lcom/ifengyu/intercom/service/a;->d:Lcom/ifengyu/intercom/node/q/d;

    sget-object v1, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/p;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/node/q/d;->a(Lcom/ifengyu/intercom/node/p;)V

    sput-boolean v2, Lcom/ifengyu/intercom/service/a;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Lcom/ifengyu/intercom/node/p;
    .locals 2

    const-class v0, Lcom/ifengyu/intercom/service/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
