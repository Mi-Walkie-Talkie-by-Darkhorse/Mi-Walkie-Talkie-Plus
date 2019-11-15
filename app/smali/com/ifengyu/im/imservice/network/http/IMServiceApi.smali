.class public interface abstract Lcom/ifengyu/im/imservice/network/http/IMServiceApi;
.super Ljava/lang/Object;
.source "IMServiceApi.java"


# virtual methods
.method public abstract getMsgServerAddrs()Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k",
            "<",
            "Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "access_server/login/"
    .end annotation
.end method
