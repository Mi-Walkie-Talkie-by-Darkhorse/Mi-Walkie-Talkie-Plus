.class public interface abstract Lcom/shanlitech/et/web/tob/api/g;
.super Ljava/lang/Object;
.source "HttpResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V
    .param p3    # Lcom/shanlitech/et/web/tob/api/RespWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method
