.class Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;
.super Ljava/lang/Object;
.source "UrlConnHttpFactory.java"

# interfaces
.implements Lcom/xiaomi/account/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/http/UrlConnHttpFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpUrlConnClient"
.end annotation


# static fields
.field private static final BODY_STRING_SPLIT:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "HttpUrlConnClient"


# instance fields
.field config:Lcom/xiaomi/account/http/HttpClientConfig;

.field final synthetic this$0:Lcom/xiaomi/account/http/UrlConnHttpFactory;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/http/UrlConnHttpFactory;Lcom/xiaomi/account/http/HttpClientConfig;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/account/http/UrlConnHttpFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/account/http/HttpClientConfig;

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/http/UrlConnHttpFactory;Lcom/xiaomi/account/http/HttpClientConfig;Lcom/xiaomi/account/http/UrlConnHttpFactory$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;-><init>(Lcom/xiaomi/account/http/UrlConnHttpFactory;Lcom/xiaomi/account/http/HttpClientConfig;)V

    return-void
.end method


# virtual methods
.method public excute(Lcom/xiaomi/account/http/Request;)Lcom/xiaomi/account/http/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/xiaomi/account/http/Request;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/account/http/HttpClientConfig;

    iget-wide v2, v1, Lcom/xiaomi/account/http/HttpClientConfig;->connectTimeoutMs:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/account/http/HttpClientConfig;

    iget-wide v2, v1, Lcom/xiaomi/account/http/HttpClientConfig;->readTimeoutMs:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p1, Lcom/xiaomi/account/http/Request;->formBody:Ljava/util/Map;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_0
    iget-boolean v1, p1, Lcom/xiaomi/account/http/Request;->followRedirects:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p1, Lcom/xiaomi/account/http/Request;->headers:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/xiaomi/account/http/Request;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1

    :cond_0
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p1, Lcom/xiaomi/account/http/Request;->formBody:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p1, Lcom/xiaomi/account/http/Request;->formBody:Ljava/util/Map;

    invoke-static {v3}, Lcom/xiaomi/account/http/UrlConnHttpFactory;->joinToQuery(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v2, Lcom/xiaomi/account/http/Response$Builder;

    invoke-direct {v2}, Lcom/xiaomi/account/http/Response$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/xiaomi/account/http/Response$Builder;->code(I)Lcom/xiaomi/account/http/Response$Builder;

    move-result-object v2

    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/account/http/Response$Builder;->location(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;

    move-result-object v2

    const-string v3, "Set-Cookie"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/account/http/Response$Builder;->setCookie(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/account/http/Response$Builder;->headers(Ljava/util/Map;)Lcom/xiaomi/account/http/Response$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    const/4 v3, 0x0

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v2, v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/xiaomi/account/http/Response$Builder;->body(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/http/Response$Builder;->build()Lcom/xiaomi/account/http/Response;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_6
    :try_start_7
    invoke-virtual {v4}, Lcom/xiaomi/account/http/Response$Builder;->build()Lcom/xiaomi/account/http/Response;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method
