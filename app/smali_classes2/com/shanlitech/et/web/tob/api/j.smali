.class interface abstract Lcom/shanlitech/et/web/tob/api/j;
.super Ljava/lang/Object;
.source "StoreApi.java"


# virtual methods
.method public abstract a(Ljava/util/HashMap;)Lretrofit2/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lcom/shanlitech/et/web/http/ReqData;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lcom/shanlitech/et/web/http/ReqCode;
        value = "favoriteRecord"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fy-store/hismsg/record"
    .end annotation
.end method

.method public abstract b(Ljava/util/HashMap;)Lretrofit2/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lcom/shanlitech/et/web/http/ReqData;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lcom/shanlitech/et/web/http/ReqCode;
        value = "readrecord"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fy-store/hismsg/record"
    .end annotation
.end method

.method public abstract c(Ljava/util/HashMap;)Lretrofit2/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lcom/shanlitech/et/web/http/ReqData;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lcom/shanlitech/et/web/http/ReqCode;
        value = "removeFavoriteRecord"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fy-store/hismsg/record"
    .end annotation
.end method

.method public abstract d(Ljava/util/HashMap;)Lretrofit2/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lcom/shanlitech/et/web/http/ReqData;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lcom/shanlitech/et/web/http/ReqCode;
        value = "queryRecordm"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Ljava/lang/Object<",
            "Lcom/shanlitech/et/model/push/HistoryMessage;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fy-store/hismsg/record"
    .end annotation
.end method

.method public abstract e(Ljava/util/HashMap;)Lretrofit2/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lcom/shanlitech/et/web/http/ReqData;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lcom/shanlitech/et/web/http/ReqCode;
        value = "removerecord"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fy-store/hismsg/record"
    .end annotation
.end method

.method public abstract f(Ljava/util/HashMap;)Lretrofit2/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lcom/shanlitech/et/web/http/ReqData;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lcom/shanlitech/et/web/http/ReqCode;
        value = "getfavorite"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Ljava/lang/Object<",
            "Lcom/shanlitech/et/model/push/HistoryMessage;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fy-store/hismsg/record"
    .end annotation
.end method
