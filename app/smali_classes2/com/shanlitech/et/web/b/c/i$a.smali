.class Lcom/shanlitech/et/web/b/c/i$a;
.super Ljava/lang/Object;
.source "UserTobMethod.java"

# interfaces
.implements Lcom/shanlitech/et/web/tob/api/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/b/c/i;->queryAccountInfo()Z
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


# direct methods
.method constructor <init>(Lcom/shanlitech/et/web/b/c/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "Lcom/shanlitech/et/web/tob/api/model/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 1
    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/shanlitech/et/web/tob/api/RespWrapper;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/tob/api/model/AccountInfo;

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onFailure: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "OkGo"

    .line 1
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
