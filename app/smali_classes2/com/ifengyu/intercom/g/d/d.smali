.class public abstract Lcom/ifengyu/intercom/g/d/d;
.super Lcom/ifengyu/intercom/g/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/g/d/b<",
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

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/b;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/g/d/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ifengyu/intercom/g/d/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;I)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/d;->c(Lokhttp3/Response;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/d;->a(Lokhttp3/Response;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public c(Lokhttp3/Response;I)Ljava/io/File;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    const/16 v0, 0x800

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    const-wide/16 v2, 0x0

    new-instance v4, Ljava/io/File;

    iget-object v5, v8, Lcom/ifengyu/intercom/g/d/d;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v12, Ljava/io/File;

    iget-object v5, v8, Lcom/ifengyu/intercom/g/d/d;->c:Ljava/lang/String;

    invoke-direct {v12, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    int-to-long v4, v1

    add-long v14, v2, v4

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->d()Lcom/ifengyu/intercom/g/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v5, Lcom/ifengyu/intercom/g/d/d$a;

    move-object v1, v5

    move-object/from16 v2, p0

    move-wide v3, v14

    move-object/from16 v16, v0

    move-object v0, v5

    move-wide v5, v10

    move-object v8, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/g/d/d$a;-><init>(Lcom/ifengyu/intercom/g/d/d;JJI)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object/from16 v8, p0

    move-wide v2, v14

    move-object/from16 v0, v16

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v12

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v13, v1

    :goto_1
    move-object v1, v9

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v13, v1

    :goto_2
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_4
    throw v0
.end method
