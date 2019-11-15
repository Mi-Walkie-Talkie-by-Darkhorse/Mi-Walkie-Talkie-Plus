.class public abstract Lcom/ifengyu/intercom/a/b/d;
.super Lcom/ifengyu/intercom/a/b/b;
.source "FileCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/a/b/b",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/b;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/a/b/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ifengyu/intercom/a/b/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/a/b/d;->d(Lokhttp3/Response;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/a/b/d;->a(Lokhttp3/Response;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public d(Lokhttp3/Response;I)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v0, 0x800

    new-array v9, v0, [B

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/ifengyu/intercom/a/b/d;->b:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v10, Ljava/io/File;

    iget-object v6, p0, Lcom/ifengyu/intercom/a/b/d;->c:Ljava/lang/String;

    invoke-direct {v10, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    int-to-long v12, v0

    add-long/2addr v2, v12

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->a()Lcom/ifengyu/intercom/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v11

    new-instance v0, Lcom/ifengyu/intercom/a/b/d$1;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/a/b/d$1;-><init>(Lcom/ifengyu/intercom/a/b/d;JJI)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    throw v0

    :cond_3
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    :goto_5
    return-object v10

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v8

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_4
.end method
