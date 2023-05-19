.class public abstract Lcom/lzy/okgo/request/base/BodyRequest;
.super Lcom/lzy/okgo/request/base/Request;
.source "BodyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/BodyRequest;",
        ">",
        "Lcom/lzy/okgo/request/base/Request<",
        "TT;TR;>;",
        "Ljava/lang/Object<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x59a399aa9376760dL


# instance fields
.field protected transient q:Lokhttp3/MediaType;

.field protected r:Ljava/lang/String;

.field protected s:[B

.field protected transient t:Ljava/io/File;

.field protected u:Z

.field protected v:Z

.field protected w:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/Request;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->u:Z

    .line 3
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->v:Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->q:Lokhttp3/MediaType;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->q:Lokhttp3/MediaType;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f()Lokhttp3/RequestBody;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/Request;->i:Lcom/lzy/okgo/model/HttpParams;

    iget-object v1, v1, Lcom/lzy/okgo/model/HttpParams;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lb/c/a/g/b;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->a:Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->w:Lokhttp3/RequestBody;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->q:Lokhttp3/MediaType;

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->s:[B

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->q:Lokhttp3/MediaType;

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->t:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->q:Lokhttp3/MediaType;

    if-eqz v1, :cond_4

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->i:Lcom/lzy/okgo/model/HttpParams;

    iget-boolean v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->u:Z

    invoke-static {v0, v1}, Lb/c/a/g/b;->d(Lcom/lzy/okgo/model/HttpParams;Z)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected s(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 3

    :try_start_0
    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/lzy/okgo/request/base/Request;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lb/c/a/g/d;->a(Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->j:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-static {p1, v0}, Lb/c/a/g/b;->a(Lokhttp3/Request$Builder;Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    return-object p1
.end method

.method public t(Lokhttp3/RequestBody;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")TR;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->w:Lokhttp3/RequestBody;

    return-object p0
.end method
