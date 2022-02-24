.class public final Lcom/amap/api/col/l3/ih;
.super Ljava/lang/Object;
.source "LogEngine.java"


# direct methods
.method private static a(Lcom/amap/api/col/l3/hs;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/hs;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 61
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/hs;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/hs;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ofm"

    const-string v0, "dlo"

    .line 64
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/amap/api/col/l3/ig;)V
    .locals 9

    const-string v0, "code"

    const/4 v1, 0x0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/ja;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    iget-object v2, p0, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3/ja;->a(Z)V

    .line 24
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/amap/api/col/l3/ig;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/amap/api/col/l3/ig;->b:J

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/l3/hs;->a(Ljava/io/File;J)Lcom/amap/api/col/l3/hs;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 25
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v2, p0, v4}, Lcom/amap/api/col/l3/ih;->a(Lcom/amap/api/col/l3/hs;Lcom/amap/api/col/l3/ig;Ljava/util/List;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    .line 27
    array-length v6, v5

    if-nez v6, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v6, Lcom/amap/api/col/l3/gu;

    iget-object v7, p0, Lcom/amap/api/col/l3/ig;->c:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Lcom/amap/api/col/l3/gu;-><init>([BLjava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/amap/api/col/l3/hx;->a()Lcom/amap/api/col/l3/hx;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/amap/api/col/l3/hx;->b(Lcom/amap/api/col/l3/ic;)[B

    move-result-object v6

    .line 30
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 32
    iget-object v0, p0, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 33
    iget-object v0, p0, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    array-length v3, v5

    invoke-virtual {v0, v3}, Lcom/amap/api/col/l3/ja;->a(I)V

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ja;->b()I

    move-result p0

    const v0, 0x7fffffff

    if-ge p0, v0, :cond_2

    .line 35
    invoke-static {v2, v4}, Lcom/amap/api/col/l3/ih;->a(Lcom/amap/api/col/l3/hs;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_6

    .line 36
    :try_start_2
    invoke-virtual {v2}, Lcom/amap/api/col/l3/hs;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    const-string v0, "ofm"

    const-string v3, "dlo"

    invoke-static {p0, v0, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 37
    :try_start_4
    invoke-virtual {v2}, Lcom/amap/api/col/l3/hs;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 39
    :try_start_5
    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    return-void

    :catchall_4
    move-exception p0

    :goto_4
    :try_start_6
    const-string v0, "leg"

    const-string v2, "uts"

    .line 41
    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v1, :cond_8

    .line 42
    :try_start_7
    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_5
    return-void

    :catchall_6
    move-exception p0

    if-eqz v1, :cond_9

    .line 44
    :try_start_8
    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    :cond_9
    :goto_6
    throw p0
.end method

.method public static a(Ljava/lang/String;[BLcom/amap/api/col/l3/ig;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p2, Lcom/amap/api/col/l3/ig;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/amap/api/col/l3/ih;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lcom/amap/api/col/l3/ig;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_1
    iget-wide v2, p2, Lcom/amap/api/col/l3/ig;->b:J

    iget v4, p2, Lcom/amap/api/col/l3/ig;->d:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/hs;->a(Ljava/io/File;J)Lcom/amap/api/col/l3/hs;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :try_start_1
    iget v2, p2, Lcom/amap/api/col/l3/ig;->d:I

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/hs;->a(I)V

    .line 7
    iget-object p2, p2, Lcom/amap/api/col/l3/ig;->e:Lcom/amap/api/col/l3/gm;

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3/gm;->b([B)[B

    move-result-object p1

    .line 8
    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3/hs;->b(Ljava/lang/String;)Lcom/amap/api/col/l3/hs$a;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/amap/api/col/l3/hs$a;->a()Ljava/io/OutputStream;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {p0}, Lcom/amap/api/col/l3/hs$a;->b()V

    .line 12
    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 15
    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object v1, v0

    :goto_2
    if-eqz v0, :cond_4

    .line 17
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 19
    :try_start_5
    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :cond_5
    :goto_4
    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 65
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "leg"

    const-string v0, "fet"

    .line 67
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/amap/api/col/l3/hs;Lcom/amap/api/col/l3/ig;Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/hs;",
            "Lcom/amap/api/col/l3/ig;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/hs;->b()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 50
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    const-string v6, ".0"

    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\\."

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 53
    aget-object v5, v5, v0

    .line 54
    invoke-static {p0, v5}, Lcom/amap/api/col/l3/in;->a(Lcom/amap/api/col/l3/hs;Ljava/lang/String;)[B

    move-result-object v6

    .line 55
    array-length v7, v6

    add-int/2addr v4, v7

    .line 56
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v5, p1, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    invoke-virtual {v5}, Lcom/amap/api/col/l3/ja;->b()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 58
    iget-object v5, p1, Lcom/amap/api/col/l3/ig;->g:Lcom/amap/api/col/l3/iu;

    invoke-virtual {v5, v6}, Lcom/amap/api/col/l3/iu;->b([B)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p0, p1, Lcom/amap/api/col/l3/ig;->g:Lcom/amap/api/col/l3/iu;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/iu;->a()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "leg"

    const-string p2, "gCo"

    .line 60
    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-array p0, v0, [B

    return-object p0
.end method
