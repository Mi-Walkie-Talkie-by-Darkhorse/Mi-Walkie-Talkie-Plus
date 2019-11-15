.class Lcom/shenma/speechrecognition/p;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private volatile b:Z

.field private final c:Lcom/shenma/speechrecognition/ae;

.field private final d:Ljava/util/UUID;

.field private final e:Lcom/shenma/speechrecognition/l;

.field private final f:Lcom/shenma/speechrecognition/v;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Ljava/util/concurrent/BlockingQueue;Lcom/shenma/speechrecognition/ae;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/p;->b:Z

    iput-object p4, p0, Lcom/shenma/speechrecognition/p;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p5, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iput-object p1, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    iput-object p2, p0, Lcom/shenma/speechrecognition/p;->e:Lcom/shenma/speechrecognition/l;

    iput-object p3, p0, Lcom/shenma/speechrecognition/p;->f:Lcom/shenma/speechrecognition/v;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "nbest"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "results_recognition"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_2

    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v2, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    invoke-virtual {v0, v2, v1}, Lcom/shenma/speechrecognition/ae;->b(Ljava/util/UUID;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v3, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    invoke-virtual {v2, v3, v1}, Lcom/shenma/speechrecognition/ae;->c(Ljava/util/UUID;Landroid/os/Bundle;)V

    const-string v1, "sig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sig"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "server return sig[%d]"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/ae;->c(Ljava/util/UUID;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v2, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    invoke-virtual {v0, v2, v1}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    const-string v0, "server return code[%d]"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(ILjava/net/HttpURLConnection;Ljava/io/DataOutputStream;[B)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p4, :cond_0

    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    array-length v3, p4

    invoke-direct {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/4 v3, 0x0

    array-length v4, p4

    invoke-virtual {v2, p4, v3, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->write([B)V

    const-string v2, "The %d-th packet was written for %dms."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/DataOutputStream;->close()V

    const-string v0, "Ready to send %d-th packet data."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "Response %d-th packets request %dms. %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc8

    if-eq v2, v0, :cond_1

    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    goto :goto_0

    :cond_1
    const-string v0, "Content-Encoding"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    const-string v1, "gzip found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_4

    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->e:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v1}, Lcom/shenma/speechrecognition/l;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/shenma/speechrecognition/p;->a(ILjava/lang/String;)V

    :cond_5
    const-string v1, "The %d-th partial response result: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/shenma/speechrecognition/p;->b:Z

    invoke-virtual {p0}, Lcom/shenma/speechrecognition/p;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 13

    const-string v0, "start uploader."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->e:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/l;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->f:Lcom/shenma/speechrecognition/v;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/v;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/shenma/speechrecognition/p;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/speechrecognition/f;

    const-string v1, "The %d-th packet length[%d] take %dms."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v8

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->d()Ljava/net/HttpURLConnection;

    move-result-object v2

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reqid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&appid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&sequence="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&property="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "ISO-8859-1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->b()[B

    move-result-object v1

    const-string v10, "ISO-8859-1"

    invoke-direct {v9, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v8, "IOException in upload data"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v8, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_3
    const-string v1, "The %d-th packet uploaded %dms."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v0

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Fail to encode params for reqid:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void

    :catch_2
    move-exception v0

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/p;->b:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->e:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v1}, Lcom/shenma/speechrecognition/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/speechrecognition/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "Signature is %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&sign="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\u0001\u0002"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "The %d-th request length is %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v1, v9}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ISO-8859-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v1, v2, v8, v9}, Lcom/shenma/speechrecognition/p;->a(ILjava/net/HttpURLConnection;Ljava/io/DataOutputStream;[B)V

    invoke-static {}, Lcom/shenma/speechrecognition/af;->a()Lcom/shenma/speechrecognition/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/speechrecognition/af;->c()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Set-Cookie"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/shenma/speechrecognition/af;->a()Lcom/shenma/speechrecognition/af;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/shenma/speechrecognition/af;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v8, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v9}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catch_3
    move-exception v1

    :try_start_6
    const-string v8, "JSONException in upload data"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/shenma/speechrecognition/p;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v8, p0, Lcom/shenma/speechrecognition/p;->d:Ljava/util/UUID;

    const/4 v9, 0x5

    invoke-virtual {v1, v8, v9}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3
.end method
