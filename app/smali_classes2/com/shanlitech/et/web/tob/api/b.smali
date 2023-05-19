.class public abstract Lcom/shanlitech/et/web/tob/api/b;
.super Ljava/lang/Object;
.source "BaseServiceAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic c(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v1

    const-string v2, "loginToken"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cm-auth-token"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lb/c/a/a;->h()Lb/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/a;->i()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shanlitech/et/web/tob/api/a;->a:Lcom/shanlitech/et/web/tob/api/a;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shanlitech/et/web/tob/api/b;->b(Ljava/lang/String;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/b;->d()Lcom/google/gson/Gson;

    move-result-object v0

    .line 2
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-virtual {v1, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    new-instance v1, Lcom/shanlitech/et/web/http/a;

    invoke-direct {v1, v0}, Lcom/shanlitech/et/web/http/a;-><init>(Lcom/google/gson/Gson;)V

    .line 4
    invoke-virtual {p2, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 5
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/tob/api/b;->e(Lretrofit2/Retrofit;)V

    return-void
.end method

.method protected d()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/h;->f()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method protected abstract e(Lretrofit2/Retrofit;)V
.end method
