.class Lcom/shanlitech/et/core/c/e$a;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lcom/shanlitech/et/web/tob/api/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/core/c/e;->X(Lcom/shanlitech/et/model/User;)V
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
.field final synthetic a:Lcom/shanlitech/et/core/c/e;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/core/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/core/c/e$a;->a:Lcom/shanlitech/et/core/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V
    .locals 3
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
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse() called with: httpCode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], httpMsg = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], body = ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shanlitech/et/core/c/e$a;->a:Lcom/shanlitech/et/core/c/e;

    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shanlitech/et/web/tob/api/model/AccountInfo;

    invoke-static {p1, p2}, Lcom/shanlitech/et/core/c/e;->b(Lcom/shanlitech/et/core/c/e;Lcom/shanlitech/et/web/tob/api/model/AccountInfo;)Lcom/shanlitech/et/web/tob/api/model/AccountInfo;

    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OkGo"

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
