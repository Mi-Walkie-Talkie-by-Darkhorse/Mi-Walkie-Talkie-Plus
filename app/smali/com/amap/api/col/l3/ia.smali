.class public final Lcom/amap/api/col/l3/ia;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/ia$a;,
        Lcom/amap/api/col/l3/ia$b;
    }
.end annotation


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

.field private j:Lcom/amap/api/col/l3/ia$a;

.field private k:Lcom/amap/api/col/l3/hx$a;


# direct methods
.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/ia;-><init>(IILjava/net/Proxy;ZB)V

    return-void
.end method

.method private constructor <init>(IILjava/net/Proxy;ZB)V
    .locals 3

    const-string p5, "ht"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/ia;->f:Z

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lcom/amap/api/col/l3/ia;->g:J

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/amap/api/col/l3/ia;->h:J

    .line 6
    iput p1, p0, Lcom/amap/api/col/l3/ia;->a:I

    .line 7
    iput p2, p0, Lcom/amap/api/col/l3/ia;->b:I

    .line 8
    iput-object p3, p0, Lcom/amap/api/col/l3/ia;->e:Ljava/net/Proxy;

    .line 9
    invoke-static {}, Lcom/amap/api/col/l3/gd;->a()Lcom/amap/api/col/l3/gd;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/amap/api/col/l3/gd;->b(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/ia;->c:Z

    .line 10
    invoke-static {}, Lcom/amap/api/col/l3/gd;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/col/l3/ia;->c:Z

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/amap/api/col/l3/ia;->k:Lcom/amap/api/col/l3/hx$a;

    .line 13
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "-"

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/ia;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string p3, "ic"

    invoke-static {p2, p5, p3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_0
    iget-boolean p2, p0, Lcom/amap/api/col/l3/ia;->c:Z

    if-eqz p2, :cond_1

    :try_start_1
    const-string p2, "TLS"

    .line 15
    invoke-static {p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1, p1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 17
    iput-object p2, p0, Lcom/amap/api/col/l3/ia;->d:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string p2, "ne"

    .line 18
    invoke-static {p1, p5, p2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    :goto_1
    new-instance p1, Lcom/amap/api/col/l3/ia$a;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/ia$a;-><init>(B)V

    iput-object p1, p0, Lcom/amap/api/col/l3/ia;->j:Lcom/amap/api/col/l3/ia$a;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/amap/api/col/l3/ie;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "par"

    const-string v1, "ht"

    const-string v2, ""

    const/4 v3, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 127
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 128
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const-string v7, "gsid"

    .line 129
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_0

    .line 130
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 131
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    :cond_0
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_4

    .line 132
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 133
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 134
    :try_start_2
    new-instance v7, Ljava/io/PushbackInputStream;

    const/4 v8, 0x2

    invoke-direct {v7, p1, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    new-array v8, v8, [B

    .line 135
    invoke-virtual {v7, v8}, Ljava/io/PushbackInputStream;->read([B)I

    .line 136
    invoke-virtual {v7, v8}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 137
    aget-byte v9, v8, v6

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    const/16 v9, -0x75

    if-ne v8, v9, :cond_1

    .line 138
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v8

    goto :goto_0

    :cond_1
    move-object v3, v7

    :goto_0
    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 139
    :goto_1
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 140
    invoke-virtual {v5, v8, v6, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 141
    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3/gv;->c()V

    .line 142
    new-instance v6, Lcom/amap/api/col/l3/ie;

    invoke-direct {v6}, Lcom/amap/api/col/l3/ie;-><init>()V

    .line 143
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v6, Lcom/amap/api/col/l3/ie;->a:[B

    .line 144
    iput-object v4, v6, Lcom/amap/api/col/l3/ie;->b:Ljava/util/Map;

    .line 145
    iget-object v4, p0, Lcom/amap/api/col/l3/ia;->i:Ljava/lang/String;

    iput-object v4, v6, Lcom/amap/api/col/l3/ie;->c:Ljava/lang/String;

    .line 146
    iput-object v2, v6, Lcom/amap/api/col/l3/ie;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 147
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 148
    invoke-static {v2, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_3

    .line 149
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 150
    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/PushbackInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 152
    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    .line 154
    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-object v6

    :catchall_4
    move-exception v2

    move-object v4, v3

    goto :goto_6

    :catch_0
    move-object v4, v3

    goto :goto_8

    :catchall_5
    move-exception v2

    move-object v4, v3

    move-object v7, v4

    :goto_6
    move-object v3, v5

    goto :goto_a

    :catch_1
    move-object v4, v3

    goto :goto_7

    :catchall_6
    move-exception p1

    move-object v2, v3

    move-object v4, v2

    move-object v7, v4

    move-object v3, v5

    goto :goto_b

    :catch_2
    move-object p1, v3

    move-object v4, p1

    :goto_7
    move-object v7, v4

    :goto_8
    move-object v3, v5

    goto :goto_9

    .line 155
    :cond_4
    :try_start_8
    new-instance v4, Lcom/amap/api/col/l3/fv;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/col/l3/ia;->i:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v4, v5}, Lcom/amap/api/col/l3/fv;->a(I)V

    .line 158
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception p1

    move-object v2, v3

    move-object v4, v2

    move-object v7, v4

    goto :goto_b

    :catch_3
    move-object p1, v3

    move-object v4, p1

    move-object v7, v4

    .line 159
    :goto_9
    :try_start_9
    new-instance v5, Lcom/amap/api/col/l3/fv;

    const-string v6, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v5, v6, v2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :catchall_8
    move-exception v2

    :goto_a
    move-object v11, v2

    move-object v2, p1

    move-object p1, v11

    :goto_b
    if-eqz v3, :cond_5

    .line 160
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception v3

    .line 161
    invoke-static {v3, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_c
    if-eqz v2, :cond_6

    .line 162
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_d

    :catchall_a
    move-exception v2

    .line 163
    invoke-static {v2, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_d
    if-eqz v7, :cond_7

    .line 164
    :try_start_c
    invoke-virtual {v7}, Ljava/io/PushbackInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception v2

    .line 165
    invoke-static {v2, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_e
    if-eqz v4, :cond_8

    .line 166
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto :goto_f

    :catchall_c
    move-exception v2

    .line 167
    invoke-static {v2, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_8
    :goto_f
    throw p1
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "&"

    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
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

    .line 97
    invoke-static {}, Lcom/amap/api/col/l3/gb;->b()V

    if-nez p4, :cond_0

    .line 98
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ia;->j:Lcom/amap/api/col/l3/ia$a;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ia$a;->a()Lcom/amap/api/col/l3/ia$b;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 100
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 101
    iget-object p2, p0, Lcom/amap/api/col/l3/ia;->j:Lcom/amap/api/col/l3/ia$a;

    invoke-virtual {p2, p3}, Lcom/amap/api/col/l3/ia$a;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/ia$b;

    move-result-object v0

    .line 102
    :cond_1
    sget p2, Lcom/amap/api/col/l3/hx;->a:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const-string p2, ""

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/amap/api/col/l3/hx;->b:Ljava/lang/String;

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_3

    const-string v2, "targetHost"

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v1, p0, Lcom/amap/api/col/l3/ia;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3/ia;->j:Lcom/amap/api/col/l3/ia$a;

    invoke-virtual {v1, p2}, Lcom/amap/api/col/l3/ia$a;->b(Ljava/lang/String;)V

    .line 103
    :cond_4
    iget-boolean p2, p0, Lcom/amap/api/col/l3/ia;->c:Z

    if-eqz p2, :cond_5

    .line 104
    invoke-static {p1}, Lcom/amap/api/col/l3/gd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_5
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/amap/api/col/l3/ia;->k:Lcom/amap/api/col/l3/hx$a;

    if-eqz p1, :cond_6

    .line 107
    invoke-interface {p1}, Lcom/amap/api/col/l3/hx$a;->a()Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_8

    .line 108
    iget-object p1, p0, Lcom/amap/api/col/l3/ia;->e:Ljava/net/Proxy;

    if-eqz p1, :cond_7

    .line 109
    invoke-virtual {p2, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_2

    .line 110
    :cond_7
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 111
    :cond_8
    :goto_2
    iget-boolean p2, p0, Lcom/amap/api/col/l3/ia;->c:Z

    if-eqz p2, :cond_9

    .line 112
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 113
    iget-object p2, p0, Lcom/amap/api/col/l3/ia;->d:Ljavax/net/ssl/SSLContext;

    .line 114
    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 115
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_3

    .line 116
    :cond_9
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 117
    :goto_3
    sget-object p2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz p2, :cond_a

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xd

    if-le p2, v0, :cond_a

    const-string p2, "Connection"

    const-string v0, "close"

    .line 118
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_a
    invoke-direct {p0, p4, p1}, Lcom/amap/api/col/l3/ia;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    if-eqz p5, :cond_b

    const-string p2, "POST"

    .line 120
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 121
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 122
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 123
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_4

    :cond_b
    const-string p2, "GET"

    .line 124
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    :goto_4
    return-object p1
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 169
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "csid"

    .line 172
    iget-object v0, p0, Lcom/amap/api/col/l3/ia;->i:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "ht"

    const-string v1, "adh"

    .line 173
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_1
    iget p1, p0, Lcom/amap/api/col/l3/ia;->a:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 175
    iget p1, p0, Lcom/amap/api/col/l3/ia;->b:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/col/l3/ie;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/col/l3/ie;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    const-string v0, "mgr"

    const-string v1, "ht"

    const-string v2, "\u672a\u77e5\u7684\u9519\u8bef"

    const/4 v3, 0x0

    .line 47
    :try_start_0
    invoke-static {p5}, Lcom/amap/api/col/l3/ia;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p5

    .line 48
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_0

    const-string p1, "?"

    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/col/l3/ia;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 52
    invoke-direct {p0, v3}, Lcom/amap/api/col/l3/ia;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/col/l3/ie;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 53
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 54
    invoke-static {p2, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1

    :catchall_1
    move-exception p1

    .line 55
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    new-instance p1, Lcom/amap/api/col/l3/fv;

    invoke-direct {p1, v2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 57
    throw p1

    .line 58
    :catch_1
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :catch_2
    new-instance p1, Lcom/amap/api/col/l3/fv;

    invoke-direct {p1, v2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :catch_3
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :catch_4
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :catch_5
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :catch_6
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :catch_7
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v3, :cond_2

    .line 65
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    .line 66
    invoke-static {p2, v1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    :goto_1
    throw p1
.end method

.method final a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/col/l3/ie;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/amap/api/col/l3/ie;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    const-string v1, "mPt"

    const-string v2, "ht"

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 68
    :try_start_0
    invoke-direct/range {v3 .. v8}, Lcom/amap/api/col/l3/ia;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v9

    if-eqz p5, :cond_0

    .line 69
    array-length p1, p5

    if-lez p1, :cond_0

    .line 70
    new-instance p1, Ljava/io/DataOutputStream;

    .line 71
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    invoke-virtual {p1, p5}, Ljava/io/DataOutputStream;->write([B)V

    .line 73
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 74
    :cond_0
    invoke-direct {p0, v9}, Lcom/amap/api/col/l3/ia;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/col/l3/ie;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_1

    .line 75
    :try_start_1
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 76
    invoke-static {p2, v2, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1

    :catchall_1
    move-exception p1

    .line 77
    :try_start_2
    invoke-static {p1, v2, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance p1, Lcom/amap/api/col/l3/fv;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1, v2, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    throw p1

    :catch_1
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :catch_2
    new-instance p1, Lcom/amap/api/col/l3/fv;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 85
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/net/SocketException;->printStackTrace()V

    .line 87
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_5
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 89
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_6
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 91
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_7
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/net/ConnectException;->printStackTrace()V

    .line 93
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v9, :cond_2

    .line 94
    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    .line 95
    invoke-static {p2, v2, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    :goto_1
    throw p1
.end method

.method final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/ia;->f:Z

    return-void
.end method

.method final a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/amap/api/col/l3/ia;->h:J

    return-void
.end method

.method final a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[BLcom/amap/api/col/l3/hz$a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/amap/api/col/l3/hz$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p6

    move-object/from16 v8, p7

    const-string v9, "mdr"

    const-string v10, "ht"

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x0

    .line 3
    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/amap/api/col/l3/ia;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v3, p1

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    const-string v3, "?"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_2

    .line 7
    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    .line 8
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/l3/ia;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v7, Lcom/amap/api/col/l3/ia;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RANGE"

    .line 10
    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_3

    .line 11
    new-instance v2, Ljava/io/DataOutputStream;

    .line 12
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 14
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 15
    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 16
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0xce

    if-eq v0, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_2
    and-int/2addr v2, v12

    if-eqz v2, :cond_6

    .line 17
    new-instance v2, Lcom/amap/api/col/l3/fv;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-interface {v8, v2}, Lcom/amap/api/col/l3/hz$a;->a(Ljava/lang/Throwable;)V

    .line 20
    :cond_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 21
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_9

    iget-boolean v3, v7, Lcom/amap/api/col/l3/ia;->f:Z

    if-nez v3, :cond_9

    invoke-virtual {v11, v2, v13, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_9

    iget-wide v4, v7, Lcom/amap/api/col/l3/ia;->g:J

    const-wide/16 v14, -0x1

    cmp-long v6, v4, v14

    if-eqz v6, :cond_7

    iget-wide v4, v7, Lcom/amap/api/col/l3/ia;->h:J

    iget-wide v14, v7, Lcom/amap/api/col/l3/ia;->g:J

    cmp-long v6, v4, v14

    if-gez v6, :cond_9

    :cond_7
    if-ne v3, v0, :cond_8

    .line 22
    iget-wide v4, v7, Lcom/amap/api/col/l3/ia;->h:J

    invoke-interface {v8, v2, v4, v5}, Lcom/amap/api/col/l3/hz$a;->a([BJ)V

    goto :goto_4

    .line 23
    :cond_8
    new-array v4, v3, [B

    .line 24
    invoke-static {v2, v13, v4, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget-wide v5, v7, Lcom/amap/api/col/l3/ia;->h:J

    invoke-interface {v8, v4, v5, v6}, Lcom/amap/api/col/l3/hz$a;->a([BJ)V

    .line 26
    :goto_4
    iget-wide v4, v7, Lcom/amap/api/col/l3/ia;->h:J

    int-to-long v14, v3

    add-long/2addr v4, v14

    iput-wide v4, v7, Lcom/amap/api/col/l3/ia;->h:J

    goto :goto_3

    .line 27
    :cond_9
    iget-boolean v0, v7, Lcom/amap/api/col/l3/ia;->f:Z

    if-eqz v0, :cond_a

    .line 28
    invoke-interface/range {p7 .. p7}, Lcom/amap/api/col/l3/hz$a;->c()V

    goto :goto_5

    .line 29
    :cond_a
    invoke-interface/range {p7 .. p7}, Lcom/amap/api/col/l3/hz$a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_5
    if-eqz v11, :cond_b

    .line 30
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 31
    invoke-static {v2, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 32
    invoke-static {v2, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_6
    if-eqz v1, :cond_d

    .line 33
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 34
    invoke-static {v1, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v11

    .line 35
    :goto_7
    :try_start_4
    invoke-interface {v8, v0}, Lcom/amap/api/col/l3/hz$a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v11, :cond_c

    .line 36
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 37
    invoke-static {v2, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 38
    invoke-static {v2, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    .line 39
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    return-void

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 40
    invoke-static {v1, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void

    :catchall_6
    move-exception v0

    move-object v2, v0

    if-eqz v11, :cond_e

    .line 41
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v3, v0

    .line 42
    invoke-static {v3, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 43
    invoke-static {v3, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_9
    if-eqz v1, :cond_f

    .line 44
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 45
    invoke-static {v1, v10, v9}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_f
    :goto_a
    throw v2
.end method

.method final b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/col/l3/ia;->g:J

    return-void
.end method
