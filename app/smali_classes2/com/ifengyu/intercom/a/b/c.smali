.class public abstract Lcom/ifengyu/intercom/a/b/c;
.super Lcom/ifengyu/intercom/a/b/b;
.source "DiscoverCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/a/b/b",
        "<",
        "Lcom/ifengyu/intercom/bean/DiscoverResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/DiscoverResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/bean/DiscoverResult;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/DiscoverResult;

    return-object v0
.end method

.method public synthetic b(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/a/b/c;->a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/DiscoverResult;

    move-result-object v0

    return-object v0
.end method
