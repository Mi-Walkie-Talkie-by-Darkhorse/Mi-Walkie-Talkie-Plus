.class public Lcom/ifengyu/intercom/g/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/ifengyu/intercom/g/b;


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Lcom/ifengyu/intercom/g/f/c;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/g/b;->a:Lokhttp3/OkHttpClient;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/g/b;->a:Lokhttp3/OkHttpClient;

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/g/f/c;->c()Lcom/ifengyu/intercom/g/f/c;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/g/b;->b:Lcom/ifengyu/intercom/g/f/c;

    return-void
.end method

.method public static a(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/g/b;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/g/b;->c:Lcom/ifengyu/intercom/g/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/ifengyu/intercom/g/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/g/b;->c:Lcom/ifengyu/intercom/g/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ifengyu/intercom/g/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/g/b;-><init>(Lokhttp3/OkHttpClient;)V

    sput-object v1, Lcom/ifengyu/intercom/g/b;->c:Lcom/ifengyu/intercom/g/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/ifengyu/intercom/g/b;->c:Lcom/ifengyu/intercom/g/b;

    return-object p0
.end method

.method public static c()Lcom/ifengyu/intercom/g/c/a;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/g/c/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/g/c/a;-><init>()V

    return-object v0
.end method

.method public static d()Lcom/ifengyu/intercom/g/b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ifengyu/intercom/g/b;->a(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/g/b;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/ifengyu/intercom/g/c/c;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/g/c/c;

    invoke-direct {v0}, Lcom/ifengyu/intercom/g/c/c;-><init>()V

    return-object v0
.end method

.method public static f()Lcom/ifengyu/intercom/g/c/d;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/g/c/d;

    invoke-direct {v0}, Lcom/ifengyu/intercom/g/c/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/b;->b:Lcom/ifengyu/intercom/g/f/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/f/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/g/e/f;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Lcom/ifengyu/intercom/g/d/b;->a:Lcom/ifengyu/intercom/g/d/b;

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/g/e/f;->d()Lcom/ifengyu/intercom/g/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/e/c;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/g/e/f;->c()Lokhttp3/Call;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/g/b$a;

    invoke-direct {v1, p0, p2, v0}, Lcom/ifengyu/intercom/g/b$a;-><init>(Lcom/ifengyu/intercom/g/b;Lcom/ifengyu/intercom/g/d/b;I)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/ifengyu/intercom/g/d/b;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/g/b;->b:Lcom/ifengyu/intercom/g/f/c;

    new-instance v1, Lcom/ifengyu/intercom/g/b$c;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ifengyu/intercom/g/b$c;-><init>(Lcom/ifengyu/intercom/g/b;Lcom/ifengyu/intercom/g/d/b;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/g/f/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/g/d/b;I)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/g/b;->b:Lcom/ifengyu/intercom/g/f/c;

    new-instance v7, Lcom/ifengyu/intercom/g/b$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ifengyu/intercom/g/b$b;-><init>(Lcom/ifengyu/intercom/g/b;Lcom/ifengyu/intercom/g/d/b;Lokhttp3/Call;Ljava/lang/Exception;I)V

    invoke-virtual {v0, v7}, Lcom/ifengyu/intercom/g/f/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/b;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method
