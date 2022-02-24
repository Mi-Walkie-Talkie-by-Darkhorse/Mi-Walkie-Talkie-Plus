.class public Lcom/ifengyu/intercom/lite/http/entity/HttpResultFunction;
.super Ljava/lang/Object;
.source "HttpResultFunction.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/ifengyu/intercom/lite/http/entity/HttpResult<",
        "TT;>;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/ifengyu/intercom/lite/http/entity/HttpResult;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/lite/http/entity/HttpResult<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget v0, p1, Lcom/ifengyu/intercom/lite/http/entity/HttpResult;->errno:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/ifengyu/intercom/lite/http/entity/HttpResult;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 4
    iput-object v0, p1, Lcom/ifengyu/intercom/lite/http/entity/HttpResult;->data:Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/ifengyu/intercom/lite/http/entity/HttpResult;->data:Ljava/lang/Object;

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/lite/http/exception/ApiException;

    iget-object v1, p1, Lcom/ifengyu/intercom/lite/http/entity/HttpResult;->msg:Ljava/lang/String;

    iget p1, p1, Lcom/ifengyu/intercom/lite/http/entity/HttpResult;->errno:I

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/lite/http/exception/ApiException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/lite/http/entity/HttpResult;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/http/entity/HttpResultFunction;->apply(Lcom/ifengyu/intercom/lite/http/entity/HttpResult;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
