.class public Lcom/sina/weibo/sdk/b/g;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/b/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/sina/weibo/sdk/b/g;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private volatile e:Ljava/util/concurrent/locks/ReentrantLock;

.field private f:Lcom/sina/weibo/sdk/b/d;

.field private g:Lcom/sina/weibo/sdk/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/g;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/g;->b:Landroid/content/Context;

    new-instance v0, Lcom/sina/weibo/sdk/b/d;

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/g;->f:Lcom/sina/weibo/sdk/b/d;

    new-instance v0, Lcom/sina/weibo/sdk/b/b;

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/g;->g:Lcom/sina/weibo/sdk/b/b;

    iput-object p2, p0, Lcom/sina/weibo/sdk/b/g;->d:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/b/g;
    .locals 2

    const-class v1, Lcom/sina/weibo/sdk/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/b/g;->c:Lcom/sina/weibo/sdk/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sina/weibo/sdk/b/g;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/sina/weibo/sdk/b/g;->c:Lcom/sina/weibo/sdk/b/g;

    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/b/g;->c:Lcom/sina/weibo/sdk/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/g;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/g;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/b/g;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/b/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/g;->g:Lcom/sina/weibo/sdk/b/b;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b/b;->a()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/g;->g:Lcom/sina/weibo/sdk/b/b;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b/b;->b()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/b/a;

    iget-object v2, p0, Lcom/sina/weibo/sdk/b/g;->g:Lcom/sina/weibo/sdk/b/b;

    invoke-virtual {v2, v0}, Lcom/sina/weibo/sdk/b/b;->a(Lcom/sina/weibo/sdk/b/a;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/b/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sina/weibo/sdk/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/b/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/b/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/b/g;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/b/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/b/c;

    iget-object v2, p0, Lcom/sina/weibo/sdk/b/g;->f:Lcom/sina/weibo/sdk/b/d;

    invoke-virtual {v2, v0}, Lcom/sina/weibo/sdk/b/d;->a(Lcom/sina/weibo/sdk/b/c;)Z

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "http://api.weibo.cn/2/client/common_config"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sina/weibo/sdk/net/f;

    invoke-direct {v2, p1}, Lcom/sina/weibo/sdk/net/f;-><init>(Ljava/lang/String;)V

    const-string v3, "appkey"

    invoke-virtual {v2, v3, p1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "packagename"

    invoke-virtual {v2, v3, v0}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_hash"

    invoke-virtual {v2, v0, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    const-string v1, "0031405000"

    invoke-virtual {v2, v0, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://api.weibo.cn/2/client/common_config"

    const-string v1, "GET"

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/net/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/b/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/g;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/b/g$a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/g;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/b/g$a;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/g;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/b/g$a;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    sget-object v0, Lcom/sina/weibo/sdk/b/g;->a:Ljava/lang/String;

    const-string v1, "it\'s only %d ms from last time get cmd"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sina/weibo/sdk/b/g$1;

    invoke-direct {v2, p0, v0}, Lcom/sina/weibo/sdk/b/g$1;-><init>(Lcom/sina/weibo/sdk/b/g;Landroid/content/SharedPreferences;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
