.class Lcom/ifengyu/intercom/a/b$1;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/a/b;->a(Lcom/ifengyu/intercom/a/c/e;Lcom/ifengyu/intercom/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/a/b/b;

.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/a/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/a/b;Lcom/ifengyu/intercom/a/b/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/a/b$1;->c:Lcom/ifengyu/intercom/a/b;

    iput-object p2, p0, Lcom/ifengyu/intercom/a/b$1;->a:Lcom/ifengyu/intercom/a/b/b;

    iput p3, p0, Lcom/ifengyu/intercom/a/b$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$1;->c:Lcom/ifengyu/intercom/a/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/a/b$1;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v2, p0, Lcom/ifengyu/intercom/a/b$1;->b:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ifengyu/intercom/a/b;->a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/a/b/b;I)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$1;->c:Lcom/ifengyu/intercom/a/b;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/a/b$1;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v3, p0, Lcom/ifengyu/intercom/a/b$1;->b:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ifengyu/intercom/a/b;->a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/a/b/b;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$1;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v1, p0, Lcom/ifengyu/intercom/a/b$1;->b:I

    invoke-virtual {v0, p2, v1}, Lcom/ifengyu/intercom/a/b/b;->c(Lokhttp3/Response;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$1;->c:Lcom/ifengyu/intercom/a/b;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request failed , reponse\'s code is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/a/b$1;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v3, p0, Lcom/ifengyu/intercom/a/b$1;->b:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ifengyu/intercom/a/b;->a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/a/b/b;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$1;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v1, p0, Lcom/ifengyu/intercom/a/b$1;->b:I

    invoke-virtual {v0, p2, v1}, Lcom/ifengyu/intercom/a/b/b;->b(Lokhttp3/Response;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/a/b$1;->c:Lcom/ifengyu/intercom/a/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/a/b$1;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v3, p0, Lcom/ifengyu/intercom/a/b$1;->b:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/ifengyu/intercom/a/b;->a(Ljava/lang/Object;Lcom/ifengyu/intercom/a/b/b;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/ifengyu/intercom/a/b$1;->c:Lcom/ifengyu/intercom/a/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/a/b$1;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v3, p0, Lcom/ifengyu/intercom/a/b$1;->b:I

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/ifengyu/intercom/a/b;->a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/a/b/b;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    :cond_3
    throw v0
.end method
