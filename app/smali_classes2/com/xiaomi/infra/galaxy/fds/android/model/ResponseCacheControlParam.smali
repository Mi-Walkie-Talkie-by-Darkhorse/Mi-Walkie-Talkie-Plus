.class public Lcom/xiaomi/infra/galaxy/fds/android/model/ResponseCacheControlParam;
.super Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;


# static fields
.field private static final RESPONSE_CACHE_CONTROL:Ljava/lang/String; = "response-cache-control"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;->params:Ljava/util/Map;

    const-string v1, "response-cache-control"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
