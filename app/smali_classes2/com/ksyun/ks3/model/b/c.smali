.class public Lcom/ksyun/ks3/model/b/c;
.super Ljava/io/InputStream;
.source "RepeatableFileInputStream.java"


# instance fields
.field private final a:Ljava/io/File;

.field private b:Ljava/io/FileInputStream;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    iput-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    iput-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->d:J

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/ksyun/ks3/model/b/c;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "RepeatableFileInputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RepeatableFileInputStream finalize:"

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

.method public mark(I)V
    .locals 4

    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/c;->d:J

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ksyun/ks3/model/b/c;->d:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    return v0
.end method

.method public reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/ksyun/ks3/model/b/c;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/c;->d:J

    :goto_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iput-wide v4, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/ks3/model/b/c;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ksyun/ks3/model/b/c;->c:J

    return-wide v0
.end method
