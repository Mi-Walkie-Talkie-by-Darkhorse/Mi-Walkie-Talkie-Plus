.class public Lcom/xiaomi/infra/galaxy/fds/android/model/ResponseContentTypeParam;
.super Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
.source "ResponseContentTypeParam.java"


# static fields
.field private static final RESPONSE_CONTENT_TYPE:Ljava/lang/String; = "response-content-type"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;->params:Ljava/util/Map;

    const-string v1, "response-content-type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
