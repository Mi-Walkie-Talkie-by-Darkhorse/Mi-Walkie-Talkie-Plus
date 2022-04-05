.class public Lb/b/a/a/d/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/a/d/g$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "b.b.a.a.d.g"

.field private static g:Lb/b/a/a/d/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private volatile c:Ljava/util/concurrent/locks/ReentrantLock;

.field private d:Lb/b/a/a/d/d;

.field private e:Lb/b/a/a/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lb/b/a/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/d/g;->a:Landroid/content/Context;

    new-instance v0, Lb/b/a/a/d/d;

    invoke-direct {v0, p1}, Lb/b/a/a/d/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/b/a/a/d/g;->d:Lb/b/a/a/d/d;

    new-instance p1, Lb/b/a/a/d/b;

    iget-object v0, p0, Lb/b/a/a/d/g;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lb/b/a/a/d/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lb/b/a/a/d/g;->e:Lb/b/a/a/d/b;

    iput-object p2, p0, Lb/b/a/a/d/g;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lb/b/a/a/d/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lb/b/a/a/d/g;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic a(Lb/b/a/a/d/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/b/a/a/d/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/b/a/a/d/g;->e:Lb/b/a/a/d/b;

    invoke-virtual {v0}, Lb/b/a/a/d/b;->a()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lb/b/a/a/d/g;->e:Lb/b/a/a/d/b;

    invoke-virtual {p1}, Lb/b/a/a/d/b;->b()V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/a/d/a;

    iget-object v1, p0, Lb/b/a/a/d/g;->e:Lb/b/a/a/d/b;

    invoke-virtual {v1, v0}, Lb/b/a/a/d/b;->a(Lb/b/a/a/d/a;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic b(Lb/b/a/a/d/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/d/g;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Lb/b/a/a/d/g;
    .locals 2

    const-class v0, Lb/b/a/a/d/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb/b/a/a/d/g;->g:Lb/b/a/a/d/g;

    if-nez v1, :cond_0

    new-instance v1, Lb/b/a/a/d/g;

    invoke-direct {v1, p0, p1}, Lb/b/a/a/d/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lb/b/a/a/d/g;->g:Lb/b/a/a/d/g;

    :cond_0
    sget-object p0, Lb/b/a/a/d/g;->g:Lb/b/a/a/d/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/b/a/a/d/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lb/b/a/a/d/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/d/g;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/b/a/a/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/a/d/c;

    iget-object v1, p0, Lb/b/a/a/d/g;->d:Lb/b/a/a/d/d;

    invoke-virtual {v1, v0}, Lb/b/a/a/d/d;->a(Lb/b/a/a/d/c;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sina/weibo/sdk/net/f;

    invoke-direct {v2, p1}, Lcom/sina/weibo/sdk/net/f;-><init>(Ljava/lang/String;)V

    const-string v3, "appkey"

    invoke-virtual {v2, v3, p1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "packagename"

    invoke-virtual {v2, p1, v0}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_hash"

    invoke-virtual {v2, p1, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    const-string v0, "0031405000"

    invoke-virtual {v2, p1, v0}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "http://api.weibo.cn/2/client/common_config"

    const-string v0, "GET"

    invoke-static {p0, p1, v0, v2}, Lcom/sina/weibo/sdk/net/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lb/b/a/a/d/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/d/g;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lb/b/a/a/d/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/b/a/a/d/g$b;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/a/d/g;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lb/b/a/a/d/g$b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v1

    iget-object v3, p0, Lb/b/a/a/d/g;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lb/b/a/a/d/g$b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v3, v5, v1

    if-gez v3, :cond_0

    sget-object v0, Lb/b/a/a/d/g;->f:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "it\'s only %d ms from last time get cmd"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lb/b/a/a/d/g$a;

    invoke-direct {v2, p0, v0}, Lb/b/a/a/d/g$a;-><init>(Lb/b/a/a/d/g;Landroid/content/SharedPreferences;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
