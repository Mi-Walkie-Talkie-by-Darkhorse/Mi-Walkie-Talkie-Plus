.class final Lretrofit2/g;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/g$a;,
        Lretrofit2/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/m",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile c:Z

.field private d:Lokhttp3/Call;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/m;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/m",
            "<TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/g;->a:Lretrofit2/m;

    iput-object p2, p0, Lretrofit2/g;->b:[Ljava/lang/Object;

    return-void
.end method

.method private f()Lokhttp3/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/g;->a:Lretrofit2/m;

    iget-object v1, p0, Lretrofit2/g;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lretrofit2/m;->a([Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/g;->a:Lretrofit2/m;

    iget-object v1, v1, Lretrofit2/m;->c:Lokhttp3/Call$Factory;

    invoke-interface {v1, v0}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lretrofit2/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/g;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lretrofit2/g;->f:Z

    iget-object v0, p0, Lretrofit2/g;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lretrofit2/g;->e:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lretrofit2/g;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    iget-object v0, p0, Lretrofit2/g;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    iget-object v0, p0, Lretrofit2/g;->d:Lokhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    :try_start_2
    invoke-direct {p0}, Lretrofit2/g;->f()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/g;->d:Lokhttp3/Call;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v1, p0, Lretrofit2/g;->c:Z

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_4
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/g;->a(Lokhttp3/Response;)Lretrofit2/k;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_4
    iput-object v0, p0, Lretrofit2/g;->e:Ljava/lang/Throwable;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method a(Lokhttp3/Response;)Lretrofit2/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lretrofit2/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v2, Lretrofit2/g$b;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lretrofit2/g$b;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    :cond_0
    :try_start_0
    invoke-static {v1}, Lretrofit2/n;->a(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v2, v0}, Lretrofit2/k;->a(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lretrofit2/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    throw v0

    :cond_1
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lretrofit2/k;->a(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/k;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Lretrofit2/g$a;

    invoke-direct {v2, v1}, Lretrofit2/g$a;-><init>(Lokhttp3/ResponseBody;)V

    :try_start_1
    iget-object v1, p0, Lretrofit2/g;->a:Lretrofit2/m;

    invoke-virtual {v1, v2}, Lretrofit2/m;->a(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lretrofit2/k;->a(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/k;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Lretrofit2/g$a;->a()V

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/g;->c:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/g;->d:Lokhttp3/Call;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lretrofit2/g;->c:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lretrofit2/g;->d:Lokhttp3/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lretrofit2/g;->d:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lretrofit2/g;->e()Lretrofit2/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lretrofit2/b;
    .locals 1

    invoke-virtual {p0}, Lretrofit2/g;->e()Lretrofit2/g;

    move-result-object v0

    return-object v0
.end method

.method public e()Lretrofit2/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/g",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lretrofit2/g;

    iget-object v1, p0, Lretrofit2/g;->a:Lretrofit2/m;

    iget-object v2, p0, Lretrofit2/g;->b:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lretrofit2/g;-><init>(Lretrofit2/m;[Ljava/lang/Object;)V

    return-object v0
.end method
