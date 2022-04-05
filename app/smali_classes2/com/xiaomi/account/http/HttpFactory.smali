.class public abstract Lcom/xiaomi/account/http/HttpFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHttpClient()Lcom/xiaomi/account/http/HttpClient;
    .locals 1

    new-instance v0, Lcom/xiaomi/account/http/HttpClientConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/account/http/HttpClientConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->build()Lcom/xiaomi/account/http/HttpClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/http/HttpFactory;->createHttpClient(Lcom/xiaomi/account/http/HttpClientConfig;)Lcom/xiaomi/account/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public createHttpClient(Landroid/net/Network;)Lcom/xiaomi/account/http/HttpClient;
    .locals 1

    new-instance v0, Lcom/xiaomi/account/http/HttpClientConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/account/http/HttpClientConfig$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->network(Landroid/net/Network;)Lcom/xiaomi/account/http/HttpClientConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->build()Lcom/xiaomi/account/http/HttpClientConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/http/HttpFactory;->createHttpClient(Lcom/xiaomi/account/http/HttpClientConfig;)Lcom/xiaomi/account/http/HttpClient;

    move-result-object p1

    return-object p1
.end method

.method public abstract createHttpClient(Lcom/xiaomi/account/http/HttpClientConfig;)Lcom/xiaomi/account/http/HttpClient;
.end method
