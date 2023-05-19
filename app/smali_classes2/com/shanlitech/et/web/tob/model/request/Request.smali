.class public Lcom/shanlitech/et/web/tob/model/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shanlitech/et/web/tob/model/request/RequestBodyBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lcom/shanlitech/et/web/tob/model/request/RequestBodyBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/model/request/Request;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/model/request/Request;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/shanlitech/et/web/tob/model/request/RequestBodyBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/model/request/Request;->data:Lcom/shanlitech/et/web/tob/model/request/RequestBodyBase;

    return-object v0
.end method

.method public setData(Lcom/shanlitech/et/web/tob/model/request/RequestBodyBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/model/request/Request;->data:Lcom/shanlitech/et/web/tob/model/request/RequestBodyBase;

    .line 2
    invoke-interface {p1}, Lcom/shanlitech/et/web/tob/model/request/RequestBodyBase;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/web/tob/model/request/Request;->setCode(Ljava/lang/String;)V

    return-void
.end method
