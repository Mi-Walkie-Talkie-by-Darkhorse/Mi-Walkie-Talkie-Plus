.class interface abstract Lcom/shanlitech/et/web/tob/api/h;
.super Ljava/lang/Object;
.source "OrganizationAPI.java"


# virtual methods
.method public abstract a(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Lcom/shanlitech/et/web/tob/api/model/AccountInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "dispatcher/api/user/getAccountInformation"
    .end annotation
.end method
