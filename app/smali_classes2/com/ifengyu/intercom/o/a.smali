.class public Lcom/ifengyu/intercom/o/a;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"


# static fields
.field private static volatile c:Lcom/ifengyu/intercom/o/a;


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Lcom/ifengyu/intercom/o/e/c;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/o/a;->a:Lokhttp3/OkHttpClient;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/o/a;->a:Lokhttp3/OkHttpClient;

    .line 4
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/o/e/c;->d()Lcom/ifengyu/intercom/o/e/c;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/o/a;->b:Lcom/ifengyu/intercom/o/e/c;

    return-void
.end method

.method public static b()Lcom/ifengyu/intercom/o/b/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/o/b/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/o/b/a;-><init>()V

    return-object v0
.end method

.method public static d()Lcom/ifengyu/intercom/o/a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ifengyu/intercom/o/a;->f(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/o/a;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/o/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/o/a;->c:Lcom/ifengyu/intercom/o/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/o/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/o/a;->c:Lcom/ifengyu/intercom/o/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/o/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/o/a;-><init>(Lokhttp3/OkHttpClient;)V

    sput-object v1, Lcom/ifengyu/intercom/o/a;->c:Lcom/ifengyu/intercom/o/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/ifengyu/intercom/o/a;->c:Lcom/ifengyu/intercom/o/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/o/d/c;Lcom/ifengyu/intercom/o/c/a;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lcom/ifengyu/intercom/o/c/a;->a:Lcom/ifengyu/intercom/o/c/a;

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/o/d/c;->e()Lcom/ifengyu/intercom/o/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/o/d/b;->f()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/o/d/c;->d()Lokhttp3/Call;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/o/a$a;

    invoke-direct {v1, p0, p2, v0}, Lcom/ifengyu/intercom/o/a$a;-><init>(Lcom/ifengyu/intercom/o/a;Lcom/ifengyu/intercom/o/c/a;I)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/o/a;->b:Lcom/ifengyu/intercom/o/e/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/o/e/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public e()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/o/a;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public g(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/o/c/a;I)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/o/a;->b:Lcom/ifengyu/intercom/o/e/c;

    new-instance v7, Lcom/ifengyu/intercom/o/a$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ifengyu/intercom/o/a$b;-><init>(Lcom/ifengyu/intercom/o/a;Lcom/ifengyu/intercom/o/c/a;Lokhttp3/Call;Ljava/lang/Exception;I)V

    invoke-virtual {v0, v7}, Lcom/ifengyu/intercom/o/e/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Ljava/lang/Object;Lcom/ifengyu/intercom/o/c/a;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/o/a;->b:Lcom/ifengyu/intercom/o/e/c;

    new-instance v1, Lcom/ifengyu/intercom/o/a$c;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ifengyu/intercom/o/a$c;-><init>(Lcom/ifengyu/intercom/o/a;Lcom/ifengyu/intercom/o/c/a;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/o/e/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method
