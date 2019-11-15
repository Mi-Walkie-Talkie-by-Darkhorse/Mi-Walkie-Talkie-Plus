.class Lcom/loopj/android/http/b$a;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/io/InputStream;

.field b:Ljava/io/PushbackInputStream;

.field c:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/loopj/android/http/b$a;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/loopj/android/http/b$a;->b:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/loopj/android/http/b$a;->c:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/loopj/android/http/b$a;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/b$a;->a:Ljava/io/InputStream;

    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lcom/loopj/android/http/b$a;->a:Ljava/io/InputStream;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/loopj/android/http/b$a;->b:Ljava/io/PushbackInputStream;

    iget-object v0, p0, Lcom/loopj/android/http/b$a;->b:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/PushbackInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/loopj/android/http/b$a;->b:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/loopj/android/http/b$a;->c:Ljava/util/zip/GZIPInputStream;

    iget-object v0, p0, Lcom/loopj/android/http/b$a;->c:Ljava/util/zip/GZIPInputStream;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/b$a;->b:Ljava/io/PushbackInputStream;

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/b$a;->wrappedEntity:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/b$a;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_0
.end method
