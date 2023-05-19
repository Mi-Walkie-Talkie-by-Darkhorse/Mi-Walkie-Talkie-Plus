.class public abstract Lcom/ifengyu/intercom/o/c/b;
.super Lcom/ifengyu/intercom/o/c/a;
.source "DiscoverCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/o/c/a<",
        "Lcom/ifengyu/intercom/bean/DiscoverResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/o/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/o/c/b;->h(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/DiscoverResult;

    move-result-object p1

    return-object p1
.end method

.method public h(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/DiscoverResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/ifengyu/intercom/bean/DiscoverResult;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/DiscoverResult;

    return-object p1
.end method
