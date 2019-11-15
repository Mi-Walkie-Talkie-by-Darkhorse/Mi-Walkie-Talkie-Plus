.class public final Lcom/amap/api/col/sl/dq;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljavax/net/ssl/SSLContext;

.field private e:Ljava/net/Proxy;

.field private volatile f:Z

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lcom/amap/api/col/sl/dn$a;

.field private k:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method constructor <init>(IILjava/net/Proxy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/col/sl/dq;-><init>(IILjava/net/Proxy;Z)V

    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/dq;-><init>(IILjava/net/Proxy;ZB)V

    return-void
.end method

.method private constructor <init>(IILjava/net/Proxy;ZB)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/dq;->f:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/col/sl/dq;->g:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/sl/dq;->h:J

    new-instance v0, Lcom/amap/api/col/sl/dq$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/dq$1;-><init>(Lcom/amap/api/col/sl/dq;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/dq;->k:Ljavax/net/ssl/HostnameVerifier;

    iput p1, p0, Lcom/amap/api/col/sl/dq;->a:I

    iput p2, p0, Lcom/amap/api/col/sl/dq;->b:I

    iput-object p3, p0, Lcom/amap/api/col/sl/dq;->e:Ljava/net/Proxy;

    iput-boolean p4, p0, Lcom/amap/api/col/sl/dq;->c:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/dq;->j:Lcom/amap/api/col/sl/dn$a;

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/dq;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p4, :cond_0

    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/dq;->d:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ht"

    const-string v2, "ic"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ht"

    const-string v2, "ne"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/amap/api/col/sl/du;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, ""

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-eqz v6, :cond_b

    const-string v0, "gsid"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/16 v1, 0xc8

    if-eq v3, v1, :cond_4

    :try_start_1
    new-instance v1, Lcom/amap/api/col/sl/bo;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/sl/dq;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/amap/api/col/sl/bo;->a(I)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_1
    :try_start_2
    new-instance v5, Lcom/amap/api/col/sl/bo;

    const-string v6, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v5, v6, v0}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    :goto_2
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_3
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_6
    throw v0

    :cond_4
    :try_start_7
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v3

    :try_start_9
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v5, 0x2

    invoke-direct {v1, v3, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v5, 0x2

    :try_start_a
    new-array v5, v5, [B

    invoke-virtual {v1, v5}, Ljava/io/PushbackInputStream;->read([B)I

    invoke-virtual {v1, v5}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v7, 0x0

    aget-byte v7, v5, v7

    const/16 v8, 0x1f

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    aget-byte v5, v5, v7

    const/16 v7, -0x75

    if-ne v5, v7, :cond_5

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v2, v5

    :goto_7
    const/16 v5, 0x400

    :try_start_b
    new-array v5, v5, [B

    :goto_8
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    :catch_1
    move-exception v5

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_7

    :cond_6
    invoke-static {}, Lcom/amap/api/col/sl/cm;->c()V

    new-instance v5, Lcom/amap/api/col/sl/du;

    invoke-direct {v5}, Lcom/amap/api/col/sl/du;-><init>()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v5, Lcom/amap/api/col/sl/du;->a:[B

    iput-object v6, v5, Lcom/amap/api/col/sl/du;->b:Ljava/util/Map;

    iget-object v6, p0, Lcom/amap/api/col/sl/dq;->i:Ljava/lang/String;

    iput-object v6, v5, Lcom/amap/api/col/sl/du;->c:Ljava/lang/String;

    iput-object v0, v5, Lcom/amap/api/col/sl/du;->d:Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_7

    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    :cond_7
    :goto_9
    if-eqz v3, :cond_8

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    :cond_8
    :goto_a
    if-eqz v1, :cond_9

    :try_start_e
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    :cond_9
    :goto_b
    if-eqz v2, :cond_a

    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :cond_a
    :goto_c
    return-object v5

    :catch_2
    move-exception v4

    const-string v5, "ht"

    const-string v6, "par"

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_3
    move-exception v3

    const-string v4, "ht"

    const-string v5, "par"

    invoke-static {v3, v4, v5}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_4
    move-exception v2

    const-string v3, "ht"

    const-string v4, "par"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_5
    move-exception v1

    const-string v2, "ht"

    const-string v3, "par"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_6
    move-exception v0

    const-string v4, "ht"

    const-string v6, "par"

    invoke-static {v0, v4, v6}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_7
    move-exception v0

    const-string v3, "ht"

    const-string v4, "par"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_8
    move-exception v0

    const-string v1, "ht"

    const-string v3, "par"

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_9
    move-exception v0

    const-string v1, "ht"

    const-string v2, "par"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto/16 :goto_2

    :catch_a
    move-exception v0

    move-object v0, v1

    move-object v3, v2

    move-object v4, v2

    move-object v1, v2

    goto/16 :goto_1

    :catch_b
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_1

    :catch_c
    move-exception v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-static {}, Lcom/amap/api/col/sl/bu;->b()V

    const/4 v0, 0x0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/dq;->j:Lcom/amap/api/col/sl/dn$a;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/dq;->j:Lcom/amap/api/col/sl/dn$a;

    iget-object v2, p0, Lcom/amap/api/col/sl/dq;->e:Ljava/net/Proxy;

    invoke-interface {v0}, Lcom/amap/api/col/sl/dn$a;->a()Ljava/net/URLConnection;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/dq;->e:Ljava/net/Proxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/dq;->e:Ljava/net/Proxy;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/sl/dq;->c:Z

    if-eqz v1, :cond_4

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/amap/api/col/sl/dq;->d:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/amap/api/col/sl/dq;->k:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :goto_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_2

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/amap/api/col/sl/dq;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    if-eqz p3, :cond_5

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :goto_2
    return-object v0

    :cond_3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    :cond_4
    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_5
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_2
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "csid"

    iget-object v1, p0, Lcom/amap/api/col/sl/dq;->i:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/amap/api/col/sl/dq;->a:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/amap/api/col/sl/dq;->b:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ht"

    const-string v2, "adh"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/col/sl/du;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/col/sl/du;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/amap/api/col/sl/dq;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/amap/api/col/sl/dq;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/dq;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/col/sl/du;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/amap/api/col/sl/bo; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ht"

    const-string v3, "mgr"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v1, Lcom/amap/api/col/sl/bo;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a

    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    :try_start_5
    new-instance v1, Lcom/amap/api/col/sl/bo;

    const-string v2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v1, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v1

    new-instance v1, Lcom/amap/api/col/sl/bo;

    const-string v2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v1, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v1

    new-instance v1, Lcom/amap/api/col/sl/bo;

    const-string v2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v1, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v1

    new-instance v1, Lcom/amap/api/col/sl/bo;

    const-string v2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v1, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_6
    move-exception v1

    new-instance v1, Lcom/amap/api/col/sl/bo;

    const-string v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v1, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7
    move-exception v1

    new-instance v1, Lcom/amap/api/col/sl/bo;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v1, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_8
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_a
    move-exception v1

    const-string v2, "ht"

    const-string v3, "mgr"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_c
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3
.end method

.method final a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/col/sl/du;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/amap/api/col/sl/du;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/col/sl/dq;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    invoke-direct {p0, v1}, Lcom/amap/api/col/sl/dq;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/col/sl/du;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ht"

    const-string v3, "mPt"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a

    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    const-string v2, "ht"

    const-string v3, "mPt"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_9
    move-exception v0

    const-string v2, "ht"

    const-string v3, "mPt"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_a
    move-exception v1

    const-string v2, "ht"

    const-string v3, "mPt"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/sl/dq;->h:J

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/col/sl/dp$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amap/api/col/sl/dp$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v8, 0x400

    const/4 v3, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/amap/api/col/sl/dq;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {p0, v1, p2, v4}, Lcom/amap/api/col/sl/dq;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/amap/api/col/sl/dq;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RANGE"

    invoke-virtual {v1, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v4, 0xc8

    if-eq v5, v4, :cond_6

    move v4, v2

    :goto_1
    const/16 v6, 0xce

    if-eq v5, v6, :cond_7

    :goto_2
    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    new-instance v2, Lcom/amap/api/col/sl/bo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/amap/api/col/sl/dp$a;->d()V

    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    :goto_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/amap/api/col/sl/dq;->f:Z

    if-nez v3, :cond_b

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_b

    iget-wide v4, p0, Lcom/amap/api/col/sl/dq;->g:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/amap/api/col/sl/dq;->h:J

    iget-wide v6, p0, Lcom/amap/api/col/sl/dq;->g:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    :cond_4
    if-ne v3, v8, :cond_8

    iget-wide v4, p0, Lcom/amap/api/col/sl/dq;->h:J

    invoke-interface {p4, v2, v4, v5}, Lcom/amap/api/col/sl/dp$a;->a([BJ)V

    :goto_4
    iget-wide v4, p0, Lcom/amap/api/col/sl/dq;->h:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/col/sl/dq;->h:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_5
    :try_start_3
    invoke-interface {p4}, Lcom/amap/api/col/sl/dp$a;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    :cond_5
    :goto_6
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ht"

    const-string v2, "mdr"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v4, v3

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto/16 :goto_2

    :cond_8
    :try_start_6
    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v6, p0, Lcom/amap/api/col/sl/dq;->h:J

    invoke-interface {p4, v4, v6, v7}, Lcom/amap/api/col/sl/dp$a;->a([BJ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    :goto_7
    if-eqz v2, :cond_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    :cond_9
    :goto_8
    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    :cond_a
    :goto_9
    throw v0

    :cond_b
    :try_start_9
    iget-boolean v2, p0, Lcom/amap/api/col/sl/dq;->f:Z

    if-eqz v2, :cond_d

    invoke-interface {p4}, Lcom/amap/api/col/sl/dp$a;->c()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_a
    if-eqz v0, :cond_c

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_c
    :goto_b
    if-eqz v1, :cond_0

    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "ht"

    const-string v2, "mdr"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :try_start_c
    invoke-interface {p4}, Lcom/amap/api/col/sl/dp$a;->b()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    :catch_3
    move-exception v0

    const-string v2, "ht"

    const-string v3, "mdr"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_4
    move-exception v0

    const-string v2, "ht"

    const-string v3, "mdr"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_5
    move-exception v1

    const-string v2, "ht"

    const-string v3, "mdr"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_6
    move-exception v1

    const-string v2, "ht"

    const-string v3, "mdr"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_7
    move-exception v2

    const-string v3, "ht"

    const-string v4, "mdr"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_8
    move-exception v2

    const-string v3, "ht"

    const-string v4, "mdr"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_9
    move-exception v1

    const-string v2, "ht"

    const-string v3, "mdr"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_7

    :catch_a
    move-exception v1

    move-object v1, v0

    goto/16 :goto_5

    :catch_b
    move-exception v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_5
.end method

.method final b()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/col/sl/dq;->g:J

    return-void
.end method
