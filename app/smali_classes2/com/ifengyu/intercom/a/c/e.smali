.class public Lcom/ifengyu/intercom/a/c/e;
.super Ljava/lang/Object;
.source "RequestCall.java"


# instance fields
.field private a:Lcom/ifengyu/intercom/a/c/c;

.field private b:Lokhttp3/Request;

.field private c:Lokhttp3/Call;

.field private d:J

.field private e:J

.field private f:J

.field private g:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/a/c/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/a/c/e;->a:Lcom/ifengyu/intercom/a/c/c;

    return-void
.end method

.method private c(Lcom/ifengyu/intercom/a/b/b;)Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->a:Lcom/ifengyu/intercom/a/c/c;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/a/c/c;->a(Lcom/ifengyu/intercom/a/b/b;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/ifengyu/intercom/a/c/e;
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/intercom/a/c/e;->d:J

    return-object p0
.end method

.method public a()Lokhttp3/Call;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->c:Lokhttp3/Call;

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/a/b/b;)Lokhttp3/Call;
    .locals 6

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/a/c/e;->c(Lcom/ifengyu/intercom/a/b/b;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->b:Lokhttp3/Request;

    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->d:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->e:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->f:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    :cond_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->d:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->d:J

    :goto_0
    iput-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->d:J

    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->e:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->e:J

    :goto_1
    iput-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->e:J

    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/e;->f:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v2, p0, Lcom/ifengyu/intercom/a/c/e;->f:J

    :cond_1
    iput-wide v2, p0, Lcom/ifengyu/intercom/a/c/e;->f:J

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->a()Lcom/ifengyu/intercom/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/b;->c()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/a/c/e;->d:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/a/c/e;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/a/c/e;->f:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->g:Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->g:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/ifengyu/intercom/a/c/e;->b:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->c:Lokhttp3/Call;

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->c:Lokhttp3/Call;

    return-object v0

    :cond_2
    move-wide v0, v2

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->a()Lcom/ifengyu/intercom/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/b;->c()Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/a/c/e;->b:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->c:Lokhttp3/Call;

    goto :goto_2
.end method

.method public b()Lcom/ifengyu/intercom/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->a:Lcom/ifengyu/intercom/a/c/c;

    return-object v0
.end method

.method public b(J)Lcom/ifengyu/intercom/a/c/e;
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/intercom/a/c/e;->e:J

    return-object p0
.end method

.method public b(Lcom/ifengyu/intercom/a/b/b;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/a/c/e;->a(Lcom/ifengyu/intercom/a/b/b;)Lokhttp3/Call;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->b:Lokhttp3/Request;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/a/c/e;->b()Lcom/ifengyu/intercom/a/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/a/c/c;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/a/b/b;->a(Lokhttp3/Request;I)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->a()Lcom/ifengyu/intercom/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/intercom/a/b;->a(Lcom/ifengyu/intercom/a/c/e;Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public c(J)Lcom/ifengyu/intercom/a/c/e;
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/intercom/a/c/e;->f:J

    return-object p0
.end method

.method public c()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/a/c/e;->a(Lcom/ifengyu/intercom/a/b/b;)Lokhttp3/Call;

    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/e;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
