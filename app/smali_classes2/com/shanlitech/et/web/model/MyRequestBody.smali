.class public Lcom/shanlitech/et/web/model/MyRequestBody;
.super Ljava/lang/Object;
.source "MyRequestBody.java"


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
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

.method public static setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shanlitech/et/web/model/MyRequestBody;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/shanlitech/et/web/model/MyRequestBody;

    invoke-direct {p1}, Lcom/shanlitech/et/web/model/MyRequestBody;-><init>()V

    .line 5
    invoke-virtual {p1, p0}, Lcom/shanlitech/et/web/model/MyRequestBody;->setCode(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/shanlitech/et/web/model/MyRequestBody;->setData(Ljava/util/HashMap;)V

    return-object p1
.end method

.method public static setBody(Ljava/lang/String;Ljava/util/HashMap;)Lcom/shanlitech/et/web/model/MyRequestBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shanlitech/et/web/model/MyRequestBody;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/shanlitech/et/web/model/MyRequestBody;

    invoke-direct {v0}, Lcom/shanlitech/et/web/model/MyRequestBody;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Lcom/shanlitech/et/web/model/MyRequestBody;->setCode(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/shanlitech/et/web/model/MyRequestBody;->setData(Ljava/util/HashMap;)V

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/MyRequestBody;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/MyRequestBody;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/MyRequestBody;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/MyRequestBody;->data:Ljava/util/HashMap;

    return-void
.end method

.method public toRequestBody()Lokhttp3/RequestBody;
    .locals 2

    const-string v0, "application/json; charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {p0}, Lcom/blankj/utilcode/util/h;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyRequestBody{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/model/MyRequestBody;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/model/MyRequestBody;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
