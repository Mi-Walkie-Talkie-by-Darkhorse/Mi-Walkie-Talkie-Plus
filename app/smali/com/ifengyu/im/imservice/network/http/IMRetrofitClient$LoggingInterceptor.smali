.class public Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient$LoggingInterceptor;
.super Ljava/lang/Object;
.source "IMRetrofitClient.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggingInterceptor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->access$000()Lcom/ifengyu/im/utils/Logger;

    move-result-object v1

    const-string v4, "\u53d1\u9001\u8bf7\u6c42 %s on %s%n%s"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    invoke-virtual {v0, v6, v7}, Lokhttp3/Response;->peekBody(J)Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->access$000()Lcom/ifengyu/im/utils/Logger;

    move-result-object v6

    const-string v7, "\u63a5\u6536\u54cd\u5e94: [%s] %n\u8fd4\u56dejson:\u3010%s\u3011 %.1fms%n%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v11

    sub-long v2, v4, v2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v8, v12

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    aput-object v1, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
