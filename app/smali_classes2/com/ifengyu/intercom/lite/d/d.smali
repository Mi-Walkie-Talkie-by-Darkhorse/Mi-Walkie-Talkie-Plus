.class public Lcom/ifengyu/intercom/lite/d/d;
.super Ljava/lang/Object;
.source "RetrofitClient.java"


# static fields
.field private static a:Lokhttp3/OkHttpClient;

.field private static b:Lretrofit2/Retrofit;


# direct methods
.method public static a()Lretrofit2/Retrofit;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/d/d;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/d/d;->a(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/lite/d/d;->b:Lretrofit2/Retrofit;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://api.ifengyu.com"

    .line 5
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/lite/d/d;->a:Lokhttp3/OkHttpClient;

    .line 6
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 8
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/d/d;->b:Lretrofit2/Retrofit;

    .line 10
    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/lite/d/d;->b:Lretrofit2/Retrofit;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    .line 11
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 12
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 15
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 16
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 17
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 18
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/ifengyu/intercom/lite/d/d;->a:Lokhttp3/OkHttpClient;

    return-void
.end method