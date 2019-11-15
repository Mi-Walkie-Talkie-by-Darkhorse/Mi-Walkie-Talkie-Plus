.class public Lcom/ifengyu/intercom/a/b;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"


# static fields
.field private static volatile a:Lcom/ifengyu/intercom/a/b;


# instance fields
.field private b:Lokhttp3/OkHttpClient;

.field private c:Lcom/ifengyu/intercom/a/d/c;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/a/b;->b:Lokhttp3/OkHttpClient;

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/a/d/c;->a()Lcom/ifengyu/intercom/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/a/b;->c:Lcom/ifengyu/intercom/a/d/c;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/a/b;->b:Lokhttp3/OkHttpClient;

    goto :goto_0
.end method

.method public static a()Lcom/ifengyu/intercom/a/b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ifengyu/intercom/a/b;->a(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/a/b;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/a/b;->a:Lcom/ifengyu/intercom/a/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/ifengyu/intercom/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/a/b;->a:Lcom/ifengyu/intercom/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/a/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/a/b;-><init>(Lokhttp3/OkHttpClient;)V

    sput-object v0, Lcom/ifengyu/intercom/a/b;->a:Lcom/ifengyu/intercom/a/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/a/b;->a:Lcom/ifengyu/intercom/a/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d()Lcom/ifengyu/intercom/a/a/a;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/a/a/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/a/a/a;-><init>()V

    return-object v0
.end method

.method public static e()Lcom/ifengyu/intercom/a/a/c;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/a/a/c;

    invoke-direct {v0}, Lcom/ifengyu/intercom/a/a/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/a/c/e;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 3

    if-nez p2, :cond_0

    sget-object p2, Lcom/ifengyu/intercom/a/b/b;->a:Lcom/ifengyu/intercom/a/b/b;

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/a/c/e;->b()Lcom/ifengyu/intercom/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/c/c;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/a/c/e;->a()Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/a/b$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/ifengyu/intercom/a/b$1;-><init>(Lcom/ifengyu/intercom/a/b;Lcom/ifengyu/intercom/a/b/b;I)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/ifengyu/intercom/a/b/b;I)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/a/b;->c:Lcom/ifengyu/intercom/a/d/c;

    new-instance v1, Lcom/ifengyu/intercom/a/b$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ifengyu/intercom/a/b$3;-><init>(Lcom/ifengyu/intercom/a/b;Lcom/ifengyu/intercom/a/b/b;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/a/d/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/a/b/b;I)V
    .locals 7

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/ifengyu/intercom/a/b;->c:Lcom/ifengyu/intercom/a/d/c;

    new-instance v0, Lcom/ifengyu/intercom/a/b$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/a/b$2;-><init>(Lcom/ifengyu/intercom/a/b;Lcom/ifengyu/intercom/a/b/b;Lokhttp3/Call;Ljava/lang/Exception;I)V

    invoke-virtual {v6, v0}, Lcom/ifengyu/intercom/a/d/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b;->c:Lcom/ifengyu/intercom/a/d/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/d/c;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public c()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b;->b:Lokhttp3/OkHttpClient;

    return-object v0
.end method
