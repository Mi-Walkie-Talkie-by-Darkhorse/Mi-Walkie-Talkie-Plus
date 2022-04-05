.class public Lcom/ifengyu/intercom/g/e/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/ifengyu/intercom/g/e/c;

.field private b:Lokhttp3/Request;

.field private c:Lokhttp3/Call;

.field private d:J

.field private e:J

.field private f:J

.field private g:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/g/e/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/f;->a:Lcom/ifengyu/intercom/g/e/c;

    return-void
.end method

.method private c(Lcom/ifengyu/intercom/g/d/b;)Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/f;->a:Lcom/ifengyu/intercom/g/e/c;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/g/e/c;->a(Lcom/ifengyu/intercom/g/d/b;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(J)Lcom/ifengyu/intercom/g/e/f;
    .locals 0

    iput-wide p1, p0, Lcom/ifengyu/intercom/g/e/f;->f:J

    return-object p0
.end method

.method public a(Lcom/ifengyu/intercom/g/d/b;)Lokhttp3/Call;
    .locals 6

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/g/e/f;->c(Lcom/ifengyu/intercom/g/d/b;)Lokhttp3/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/f;->b:Lokhttp3/Request;

    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->e:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->f:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->d()Lcom/ifengyu/intercom/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/g/b;->b()Lokhttp3/OkHttpClient;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/f;->b:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/f;->c:Lokhttp3/Call;

    goto :goto_3

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->d:J

    const-wide/16 v4, 0x2710

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v4

    :goto_1
    iput-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->d:J

    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->e:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move-wide v0, v4

    :goto_2
    iput-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->e:J

    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->f:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    move-wide v4, v0

    :cond_4
    iput-wide v4, p0, Lcom/ifengyu/intercom/g/e/f;->f:J

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->d()Lcom/ifengyu/intercom/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/g/b;->b()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->d:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->e:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/f;->f:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/g/e/f$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/g/e/f$a;-><init>(Lcom/ifengyu/intercom/g/e/f;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/f;->g:Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/f;->b:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/f;->c:Lokhttp3/Call;

    :goto_3
    iget-object p1, p0, Lcom/ifengyu/intercom/g/e/f;->c:Lokhttp3/Call;

    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/f;->c:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public b(J)Lcom/ifengyu/intercom/g/e/f;
    .locals 0

    iput-wide p1, p0, Lcom/ifengyu/intercom/g/e/f;->d:J

    return-object p0
.end method

.method public b()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/g/e/f;->a(Lcom/ifengyu/intercom/g/d/b;)Lokhttp3/Call;

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/f;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ifengyu/intercom/g/d/b;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/g/e/f;->a(Lcom/ifengyu/intercom/g/d/b;)Lokhttp3/Call;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/f;->b:Lokhttp3/Request;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/g/e/f;->d()Lcom/ifengyu/intercom/g/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/e/c;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/g/d/b;->a(Lokhttp3/Request;I)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->d()Lcom/ifengyu/intercom/g/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/intercom/g/b;->a(Lcom/ifengyu/intercom/g/e/f;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public c(J)Lcom/ifengyu/intercom/g/e/f;
    .locals 0

    iput-wide p1, p0, Lcom/ifengyu/intercom/g/e/f;->e:J

    return-object p0
.end method

.method public c()Lokhttp3/Call;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/f;->c:Lokhttp3/Call;

    return-object v0
.end method

.method public d()Lcom/ifengyu/intercom/g/e/c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/f;->a:Lcom/ifengyu/intercom/g/e/c;

    return-object v0
.end method
