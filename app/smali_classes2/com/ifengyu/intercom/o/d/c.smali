.class public Lcom/ifengyu/intercom/o/d/c;
.super Ljava/lang/Object;
.source "RequestCall.java"


# instance fields
.field private a:Lcom/ifengyu/intercom/o/d/b;

.field private b:Lokhttp3/Request;

.field private c:Lokhttp3/Call;

.field private d:J

.field private e:J

.field private f:J

.field private g:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/o/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/o/d/c;->a:Lcom/ifengyu/intercom/o/d/b;

    return-void
.end method

.method private c(Lcom/ifengyu/intercom/o/c/a;)Lokhttp3/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/o/d/c;->a:Lcom/ifengyu/intercom/o/d/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/o/d/b;->e(Lcom/ifengyu/intercom/o/c/a;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/o/c/a;)Lokhttp3/Call;
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/o/d/c;->c(Lcom/ifengyu/intercom/o/c/a;)Lokhttp3/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/o/d/c;->b:Lokhttp3/Request;

    .line 2
    iget-wide v0, p0, Lcom/ifengyu/intercom/o/d/c;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-wide v4, p0, Lcom/ifengyu/intercom/o/d/c;->e:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_1

    iget-wide v4, p0, Lcom/ifengyu/intercom/o/d/c;->f:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/o/a;->d()Lcom/ifengyu/intercom/o/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/o/a;->e()Lokhttp3/OkHttpClient;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/o/d/c;->b:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/o/d/c;->c:Lokhttp3/Call;

    goto :goto_3

    :cond_1
    :goto_0
    const-wide/16 v4, 0x2710

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v4

    .line 4
    :goto_1
    iput-wide v0, p0, Lcom/ifengyu/intercom/o/d/c;->d:J

    .line 5
    iget-wide v0, p0, Lcom/ifengyu/intercom/o/d/c;->e:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move-wide v0, v4

    :goto_2
    iput-wide v0, p0, Lcom/ifengyu/intercom/o/d/c;->e:J

    .line 6
    iget-wide v0, p0, Lcom/ifengyu/intercom/o/d/c;->f:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    move-wide v4, v0

    :cond_4
    iput-wide v4, p0, Lcom/ifengyu/intercom/o/d/c;->f:J

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/o/a;->d()Lcom/ifengyu/intercom/o/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/o/a;->e()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/ifengyu/intercom/o/d/c;->d:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/ifengyu/intercom/o/d/c;->e:J

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/ifengyu/intercom/o/d/c;->f:J

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/o/d/c$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/o/d/c$a;-><init>(Lcom/ifengyu/intercom/o/d/c;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/o/d/c;->g:Lokhttp3/OkHttpClient;

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/o/d/c;->b:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/o/d/c;->c:Lokhttp3/Call;

    .line 14
    :goto_3
    iget-object p1, p0, Lcom/ifengyu/intercom/o/d/c;->c:Lokhttp3/Call;

    return-object p1
.end method

.method public b(Lcom/ifengyu/intercom/o/c/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/o/d/c;->a(Lcom/ifengyu/intercom/o/c/a;)Lokhttp3/Call;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/o/d/c;->b:Lokhttp3/Request;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/o/d/c;->e()Lcom/ifengyu/intercom/o/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/o/d/b;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/o/c/a;->c(Lokhttp3/Request;I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/o/a;->d()Lcom/ifengyu/intercom/o/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/intercom/o/a;->a(Lcom/ifengyu/intercom/o/d/c;Lcom/ifengyu/intercom/o/c/a;)V

    return-void
.end method

.method public d()Lokhttp3/Call;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/o/d/c;->c:Lokhttp3/Call;

    return-object v0
.end method

.method public e()Lcom/ifengyu/intercom/o/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/o/d/c;->a:Lcom/ifengyu/intercom/o/d/b;

    return-object v0
.end method
