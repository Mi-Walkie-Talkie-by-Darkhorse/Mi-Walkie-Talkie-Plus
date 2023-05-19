.class Lcom/shanlitech/et/web/b/c/a$c;
.super Ljava/lang/Object;
.source "AccountToBMethod.java"

# interfaces
.implements Lcom/shanlitech/et/web/tob/api/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/b/c/a;->passwordReset(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shanlitech/et/web/tob/api/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/shanlitech/et/web/b/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V
    .locals 1
    .param p3    # Lcom/shanlitech/et/web/tob/api/RespWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/notice/event/ResultEvent;

    sget-object v0, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->PWD:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p2, v0, p3}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
