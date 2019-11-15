.class public Lcom/ifengyu/intercom/service/a;
.super Ljava/lang/Object;
.source "WalkTalkInitializer.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z

.field private static c:Lcom/ifengyu/intercom/node/q;

.field private static d:Lcom/ifengyu/intercom/node/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/service/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ifengyu/intercom/service/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/ifengyu/intercom/node/q;
    .locals 2

    const-class v0, Lcom/ifengyu/intercom/service/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/q;
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
    .locals 6

    const/4 v5, 0x1

    const-class v1, Lcom/ifengyu/intercom/service/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/ifengyu/intercom/service/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/service/a;->a:Ljava/lang/String;

    const-string v2, "Attempted to re-initialize walktalk statics, ignoring"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v5

    :cond_0
    :try_start_1
    new-instance v0, Lcom/ifengyu/intercom/node/q;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/q;

    invoke-static {p0}, Lcom/ifengyu/intercom/node/a/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/service/a;->d:Lcom/ifengyu/intercom/node/a/d;

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/update/a;->a()Lcom/ifengyu/intercom/update/a;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/q;

    invoke-virtual {v4, v2}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/h;)V

    sget-object v2, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/q;

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/h;)V

    sget-object v2, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/q;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/h;)V

    sget-object v0, Lcom/ifengyu/intercom/service/a;->d:Lcom/ifengyu/intercom/node/a/d;

    sget-object v2, Lcom/ifengyu/intercom/service/a;->c:Lcom/ifengyu/intercom/node/q;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/a/d;->a(Lcom/ifengyu/intercom/node/q;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ifengyu/intercom/service/a;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/ifengyu/intercom/node/a/d;
    .locals 2

    const-class v0, Lcom/ifengyu/intercom/service/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/service/a;->d:Lcom/ifengyu/intercom/node/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
