.class public Lcom/ifengyu/library/http/exception/NewApiException;
.super Ljava/lang/RuntimeException;
.source "NewApiException.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/library/http/exception/NewApiException;->a:I

    .line 3
    iput v0, p0, Lcom/ifengyu/library/http/exception/NewApiException;->b:I

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)Lcom/ifengyu/library/http/exception/NewApiException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/ifengyu/library/http/exception/NewApiException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/ifengyu/library/http/exception/NewApiException;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/library/http/exception/NewApiException;

    invoke-direct {v0}, Lcom/ifengyu/library/http/exception/NewApiException;-><init>()V

    .line 4
    instance-of v1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/HttpException;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, p0

    check-cast v1, Lcom/jakewharton/retrofit2/adapter/rxjava2/HttpException;

    .line 6
    invoke-virtual {v1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/HttpException;->code()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/http/exception/NewApiException;->e(I)V

    .line 7
    invoke-virtual {v1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "json"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-virtual {p0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/library/http/entity/NewHttpResult;

    .line 15
    invoke-virtual {p0}, Lcom/ifengyu/library/http/entity/NewHttpResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/http/exception/NewApiException;->c(I)V

    .line 16
    invoke-virtual {p0}, Lcom/ifengyu/library/http/entity/NewHttpResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/library/http/exception/NewApiException;->d(Ljava/lang/String;)V

    return-object v0

    .line 17
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/library/http/exception/NewApiException;->d(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/http/exception/NewApiException;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/http/exception/NewApiException;->b:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/http/exception/NewApiException;->c:Ljava/lang/String;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/http/exception/NewApiException;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewApiException{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/library/http/exception/NewApiException;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/library/http/exception/NewApiException;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/library/http/exception/NewApiException;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
