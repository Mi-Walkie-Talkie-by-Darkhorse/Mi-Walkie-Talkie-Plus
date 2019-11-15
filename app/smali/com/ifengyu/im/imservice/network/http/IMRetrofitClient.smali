.class public Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;
.super Ljava/lang/Object;
.source "IMRetrofitClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient$LoggingInterceptor;
    }
.end annotation


# static fields
.field private static final HOST:Ljava/lang/String; = "http://im-test.ifengyu.com/"

.field private static converterFactory:Lretrofit2/d$a;

.field private static factory:Lretrofit2/c$a;

.field private static logger:Lcom/ifengyu/im/utils/Logger;

.field private static sApiService:Lcom/ifengyu/im/imservice/network/http/IMServiceApi;

.field private static sOkhttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->sOkhttpClient:Lokhttp3/OkHttpClient;

    invoke-static {}, Lretrofit2/a/a/a;->a()Lretrofit2/a/a/a;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->converterFactory:Lretrofit2/d$a;

    invoke-static {}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->factory:Lretrofit2/c$a;

    const-class v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->logger:Lcom/ifengyu/im/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/ifengyu/im/utils/Logger;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->logger:Lcom/ifengyu/im/utils/Logger;

    return-object v0
.end method

.method public static getServiceApi()Lcom/ifengyu/im/imservice/network/http/IMServiceApi;
    .locals 2

    sget-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->sApiService:Lcom/ifengyu/im/imservice/network/http/IMServiceApi;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->sOkhttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient$LoggingInterceptor;

    invoke-direct {v1}, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient$LoggingInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->sOkhttpClient:Lokhttp3/OkHttpClient;

    new-instance v0, Lretrofit2/l$a;

    invoke-direct {v0}, Lretrofit2/l$a;-><init>()V

    sget-object v1, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->sOkhttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lretrofit2/l$a;->a(Lokhttp3/OkHttpClient;)Lretrofit2/l$a;

    move-result-object v0

    const-string v1, "http://im-test.ifengyu.com/"

    invoke-virtual {v0, v1}, Lretrofit2/l$a;->a(Ljava/lang/String;)Lretrofit2/l$a;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->converterFactory:Lretrofit2/d$a;

    invoke-virtual {v0, v1}, Lretrofit2/l$a;->a(Lretrofit2/d$a;)Lretrofit2/l$a;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->factory:Lretrofit2/c$a;

    invoke-virtual {v0, v1}, Lretrofit2/l$a;->a(Lretrofit2/c$a;)Lretrofit2/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/l$a;->a()Lretrofit2/l;

    move-result-object v0

    const-class v1, Lcom/ifengyu/im/imservice/network/http/IMServiceApi;

    invoke-virtual {v0, v1}, Lretrofit2/l;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/network/http/IMServiceApi;

    sput-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->sApiService:Lcom/ifengyu/im/imservice/network/http/IMServiceApi;

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->sApiService:Lcom/ifengyu/im/imservice/network/http/IMServiceApi;

    return-object v0
.end method
