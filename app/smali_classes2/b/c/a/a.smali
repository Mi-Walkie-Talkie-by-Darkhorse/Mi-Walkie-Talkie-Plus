.class public Lb/c/a/a;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a$b;
    }
.end annotation


# static fields
.field public static i:J = 0x12cL


# instance fields
.field private a:Landroid/app/Application;

.field private b:Landroid/os/Handler;

.field private c:Lokhttp3/OkHttpClient;

.field private d:Lcom/lzy/okgo/model/HttpParams;

.field private e:Lcom/lzy/okgo/model/HttpHeaders;

.field private f:I

.field private g:Lcom/lzy/okgo/cache/CacheMode;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lb/c/a/a;->b:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lb/c/a/a;->f:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lb/c/a/a;->h:J

    .line 6
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->b:Lcom/lzy/okgo/cache/CacheMode;

    iput-object v0, p0, Lb/c/a/a;->g:Lcom/lzy/okgo/cache/CacheMode;

    .line 7
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 8
    new-instance v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v2, "OkGo"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->d:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->h(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 10
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->g(Ljava/util/logging/Level;)V

    .line 11
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 15
    invoke-static {}, Lb/c/a/f/a;->b()Lb/c/a/f/a$c;

    move-result-object v1

    .line 16
    iget-object v2, v1, Lb/c/a/f/a$c;->a:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lb/c/a/f/a$c;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    sget-object v1, Lb/c/a/f/a;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 18
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lb/c/a/a;->c:Lokhttp3/OkHttpClient;

    return-void
.end method

.method synthetic constructor <init>(Lb/c/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/GetRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/GetRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Lb/c/a/a;
    .locals 1

    .line 1
    invoke-static {}, Lb/c/a/a$b;->a()Lb/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/PostRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Lcom/lzy/okgo/request/PutRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PutRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/PutRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PutRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/a;->g:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/c/a/a;->h:J

    return-wide v0
.end method

.method public d()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/a;->e:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public e()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/a;->d:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/a;->a:Landroid/app/Application;

    const-string v1, "please call OkGo.getInstance().init() first in application!"

    invoke-static {v0, v1}, Lb/c/a/g/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/c/a/a;->a:Landroid/app/Application;

    return-object v0
.end method

.method public g()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public i()Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/a;->c:Lokhttp3/OkHttpClient;

    const-string v1, "please call OkGo.getInstance().setOkHttpClient() first in application!"

    invoke-static {v0, v1}, Lb/c/a/g/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/c/a/a;->c:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lb/c/a/a;->f:I

    return v0
.end method

.method public m(Lokhttp3/OkHttpClient;)Lb/c/a/a;
    .locals 1

    const-string v0, "okHttpClient == null"

    .line 1
    invoke-static {p1, v0}, Lb/c/a/g/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/c/a/a;->c:Lokhttp3/OkHttpClient;

    return-object p0
.end method
