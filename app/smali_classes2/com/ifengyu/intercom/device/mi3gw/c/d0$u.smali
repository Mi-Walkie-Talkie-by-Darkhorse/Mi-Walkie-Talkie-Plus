.class Lcom/ifengyu/intercom/device/mi3gw/c/d0$u;
.super Ljava/lang/Object;
.source "DeviceDataShare.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/c/d0;->R0(JLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/ifengyu/intercom/http/entity/UploadFileEntity;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/ifengyu/library/http/entity/NewHttpResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$u;->b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    iput-wide p2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$u;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;
    .locals 3
    .param p1    # Lcom/ifengyu/intercom/http/entity/UploadFileEntity;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/http/entity/UploadFileEntity;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/ifengyu/library/http/entity/NewHttpResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$u;->b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/UploadFileEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gavatar"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 5
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$u;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ifengyu/intercom/n/a;->y(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/http/entity/UploadFileEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$u;->a(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
