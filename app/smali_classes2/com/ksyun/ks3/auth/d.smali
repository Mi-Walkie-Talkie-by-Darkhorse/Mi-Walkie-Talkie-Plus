.class public Lcom/ksyun/ks3/auth/d;
.super Lorg/apache/http/entity/BasicHttpEntity;
.source "RepeatableInputStreamRequestEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/ks3/auth/d$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lorg/apache/http/entity/InputStreamEntity;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/io/IOException;

.field private e:Lcom/ksyun/ks3/model/b/d;

.field private f:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksyun/ks3/auth/d;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/auth/d;->setChunked(Z)V

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v2, p1, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v2, p0, Lcom/ksyun/ks3/auth/d;->b:Lorg/apache/http/entity/InputStreamEntity;

    iget-object v2, p0, Lcom/ksyun/ks3/auth/d;->b:Lorg/apache/http/entity/InputStreamEntity;

    iget-object v3, p0, Lcom/ksyun/ks3/auth/d;->contentType:Lorg/apache/http/Header;

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Lorg/apache/http/Header;)V

    iput-object p1, p0, Lcom/ksyun/ks3/auth/d;->c:Ljava/io/InputStream;

    iput-wide v0, p0, Lcom/ksyun/ks3/auth/d;->f:J

    invoke-virtual {p0, p1}, Lcom/ksyun/ks3/auth/d;->setContent(Ljava/io/InputStream;)V

    iget-object v2, p0, Lcom/ksyun/ks3/auth/d;->contentType:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lcom/ksyun/ks3/auth/d;->setContentType(Lorg/apache/http/Header;)V

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/auth/d;->setContentLength(J)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/ksyun/ks3/model/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/auth/d;->e:Lcom/ksyun/ks3/model/b/d;

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "RepeatableInputStreamRequestEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RepeatableInputStreamRequestEntity finalize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/auth/d;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/ks3/auth/d;->b:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v0}, Lorg/apache/http/entity/InputStreamEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/ksyun/ks3/auth/d;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ksyun/ks3/auth/d;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/ks3/auth/d;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksyun/ks3/auth/d;->a:Z

    iget-object v0, p0, Lcom/ksyun/ks3/auth/d;->e:Lcom/ksyun/ks3/model/b/d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ksyun/ks3/auth/d;->b:Lorg/apache/http/entity/InputStreamEntity;

    instance-of v0, p1, Lcom/ksyun/ks3/auth/d$a;

    if-eqz v0, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-object v5, p0, Lcom/ksyun/ks3/auth/d;->e:Lcom/ksyun/ks3/model/b/d;

    iget-object v0, p0, Lcom/ksyun/ks3/auth/d;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/ksyun/ks3/auth/d$a;

    iget-wide v2, p0, Lcom/ksyun/ks3/auth/d;->f:J

    iget-object v4, p0, Lcom/ksyun/ks3/auth/d;->e:Lcom/ksyun/ks3/model/b/d;

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/ksyun/ks3/auth/d$a;-><init>(Ljava/io/OutputStream;JLcom/ksyun/ks3/model/b/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/ksyun/ks3/auth/d;->d:Ljava/io/IOException;

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/ksyun/ks3/auth/d;->d:Ljava/io/IOException;

    :cond_2
    iget-object v0, p0, Lcom/ksyun/ks3/auth/d;->d:Ljava/io/IOException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/ksyun/ks3/auth/d;->e:Lcom/ksyun/ks3/model/b/d;

    iget-object v1, p0, Lcom/ksyun/ks3/auth/d;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ksyun/ks3/auth/d;->b:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
