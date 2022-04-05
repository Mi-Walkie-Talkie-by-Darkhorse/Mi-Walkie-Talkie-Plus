.class public Lcom/ifengyu/intercom/g/e/a;
.super Lokhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/g/e/a$b;,
        Lcom/ifengyu/intercom/g/e/a$a;
    }
.end annotation


# instance fields
.field protected a:Lokhttp3/RequestBody;

.field protected b:Lcom/ifengyu/intercom/g/e/a$b;

.field protected c:Lcom/ifengyu/intercom/g/e/a$a;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/ifengyu/intercom/g/e/a$b;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/a;->a:Lokhttp3/RequestBody;

    iput-object p2, p0, Lcom/ifengyu/intercom/g/e/a;->b:Lcom/ifengyu/intercom/g/e/a$b;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/g/e/a$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/g/e/a$a;-><init>(Lcom/ifengyu/intercom/g/e/a;Lokio/Sink;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/g/e/a;->c:Lcom/ifengyu/intercom/g/e/a$a;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
