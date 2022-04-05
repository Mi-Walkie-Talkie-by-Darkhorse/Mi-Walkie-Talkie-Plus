.class public abstract Lcom/efs/sdk/base/http/AbsHttpListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/efs/sdk/base/a/h/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/efs/sdk/base/a/h/a/b<",
        "Lcom/efs/sdk/base/http/HttpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Lcom/efs/sdk/base/http/HttpResponse;)V
    .param p1    # Lcom/efs/sdk/base/http/HttpResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lcom/efs/sdk/base/http/HttpResponse;)V
    .param p1    # Lcom/efs/sdk/base/http/HttpResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public result(Lcom/efs/sdk/base/http/HttpResponse;)V
    .locals 1
    .param p1    # Lcom/efs/sdk/base/http/HttpResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/efs/sdk/base/a/f/d;->succ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/http/AbsHttpListener;->onSuccess(Lcom/efs/sdk/base/http/HttpResponse;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/http/AbsHttpListener;->onError(Lcom/efs/sdk/base/http/HttpResponse;)V

    return-void
.end method

.method public bridge synthetic result(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/http/AbsHttpListener;->result(Lcom/efs/sdk/base/http/HttpResponse;)V

    return-void
.end method
