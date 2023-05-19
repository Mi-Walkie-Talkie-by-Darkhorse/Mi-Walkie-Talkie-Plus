.class Lcom/shanlitech/et/web/b/c/a$a;
.super Ljava/lang/Object;
.source "AccountToBMethod.java"

# interfaces
.implements Lcom/shanlitech/et/web/tob/api/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/b/c/a;->sendMessageNotice(Ljava/util/List;)V
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
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V
    .locals 0
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

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
