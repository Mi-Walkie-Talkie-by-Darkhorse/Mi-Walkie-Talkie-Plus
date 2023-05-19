.class public Lcom/lzy/okgo/request/base/a;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/request/base/a$c;,
        Lcom/lzy/okgo/request/base/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lokhttp3/RequestBody;"
    }
.end annotation


# instance fields
.field private a:Lokhttp3/RequestBody;

.field private b:Lb/c/a/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/lzy/okgo/request/base/a$c;


# direct methods
.method constructor <init>(Lokhttp3/RequestBody;Lb/c/a/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lb/c/a/c/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/lzy/okgo/request/base/a;->a:Lokhttp3/RequestBody;

    .line 3
    iput-object p2, p0, Lcom/lzy/okgo/request/base/a;->b:Lb/c/a/c/b;

    return-void
.end method

.method static synthetic a(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/request/base/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lzy/okgo/request/base/a;->c:Lcom/lzy/okgo/request/base/a$c;

    return-object p0
.end method

.method static synthetic b(Lcom/lzy/okgo/request/base/a;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/a;->d(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method static synthetic c(Lcom/lzy/okgo/request/base/a;)Lb/c/a/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lzy/okgo/request/base/a;->b:Lb/c/a/c/b;

    return-object p0
.end method

.method private d(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/base/a$a;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/request/base/a$a;-><init>(Lcom/lzy/okgo/request/base/a;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lb/c/a/g/b;->h(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lb/c/a/g/d;->a(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/lzy/okgo/request/base/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/a;->c:Lcom/lzy/okgo/request/base/a$c;

    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/base/a$b;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/request/base/a$b;-><init>(Lcom/lzy/okgo/request/base/a;Lokio/Sink;)V

    .line 2
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 4
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
