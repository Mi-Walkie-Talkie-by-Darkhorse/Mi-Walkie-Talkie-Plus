.class Lcom/shanlitech/et/web/b/c/a$h;
.super Ljava/lang/Object;
.source "AccountToBMethod.java"

# interfaces
.implements Lcom/shanlitech/et/web/tob/api/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/b/c/a;->getCompanyName(Lcom/shanlitech/et/web/tob/api/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shanlitech/et/web/tob/api/g<",
        "Lcom/shanlitech/et/web/tob/api/model/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/shanlitech/et/web/tob/api/g;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/web/b/c/a;Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shanlitech/et/web/b/c/a$h;->a:Lcom/shanlitech/et/web/tob/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V
    .locals 2
    .param p3    # Lcom/shanlitech/et/web/tob/api/RespWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Lcom/shanlitech/et/web/tob/api/model/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shanlitech/et/web/tob/api/model/AccountInfo;

    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/model/AccountInfo;->getCompanyName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shanlitech/et/web/b/c/a$h;->a:Lcom/shanlitech/et/web/tob/api/g;

    new-instance v1, Lcom/shanlitech/et/web/tob/api/RespWrapper;

    invoke-direct {v1, p1, p2, p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/shanlitech/et/web/tob/api/g;->a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/b/c/a$h;->a:Lcom/shanlitech/et/web/tob/api/g;

    invoke-interface {v0, p1}, Lcom/shanlitech/et/web/tob/api/g;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method
