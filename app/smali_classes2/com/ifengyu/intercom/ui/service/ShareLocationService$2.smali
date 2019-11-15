.class Lcom/ifengyu/intercom/ui/service/ShareLocationService$2;
.super Lcom/ifengyu/intercom/a/b/j;
.source "ShareLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ifengyu/intercom/ui/service/ShareLocationService;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$2;->c:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService$2;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "avatar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickname"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$2;->c:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->d(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setName(Ljava/lang/String;)V

    const-string v1, "ShareLocationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$2;->c:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 2

    const-string v0, "ShareLocationService"

    const-string v1, "queryUserInfo onError"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method
