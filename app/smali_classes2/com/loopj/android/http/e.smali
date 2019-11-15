.class public abstract Lcom/loopj/android/http/e;
.super Lcom/loopj/android/http/d;
.source "FileAsyncHttpResponseHandler.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field protected final a:Ljava/io/File;

.field protected final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/loopj/android/http/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/loopj/android/http/e;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 1

    sget-boolean v0, Lcom/loopj/android/http/e;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/e;->a:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/e;->a:Ljava/io/File;

    return-object v0
.end method

.method public abstract a(I[Lorg/apache/http/Header;Ljava/io/File;)V
.end method

.method public abstract a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
.end method

.method protected getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->a()Ljava/io/File;

    move-result-object v5

    iget-boolean v6, p0, Lcom/loopj/android/http/e;->b:Z

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    if-eqz v1, :cond_1

    const/16 v5, 0x1000

    :try_start_0
    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v0, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    long-to-int v6, v2

    invoke-virtual {p0, v0, v6}, Lcom/loopj/android/http/e;->sendProgressMessage(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v4}, Lcom/loopj/android/http/b;->a(Ljava/io/OutputStream;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v4}, Lcom/loopj/android/http/b;->a(Ljava/io/OutputStream;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/loopj/android/http/e;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/e;->a(I[Lorg/apache/http/Header;Ljava/io/File;)V

    return-void
.end method
