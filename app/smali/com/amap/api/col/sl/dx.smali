.class public final Lcom/amap/api/col/sl/dx;
.super Ljava/lang/Object;
.source "LogEngine.java"


# direct methods
.method public static a(Lcom/amap/api/col/sl/dw;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/dw;->f:Lcom/amap/api/col/sl/ep;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ep;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/dw;->f:Lcom/amap/api/col/sl/ep;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ep;->a(Z)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/sl/dw;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/amap/api/col/sl/dw;->b:J

    invoke-static {v0, v4, v5}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;J)Lcom/amap/api/col/sl/di;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/dx;->a(Lcom/amap/api/col/sl/di;Lcom/amap/api/col/sl/ek;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/col/sl/di;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_3
    new-instance v3, Lcom/amap/api/col/sl/cl;

    iget-object v4, p0, Lcom/amap/api/col/sl/dw;->c:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/amap/api/col/sl/cl;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/sl/dn;->a()Lcom/amap/api/col/sl/dn;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/col/sl/dn;->b(Lcom/amap/api/col/sl/ds;)[B

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-ne v0, v6, :cond_5

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Lcom/amap/api/col/sl/di;->d()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Lcom/amap/api/col/sl/di;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v3, "ofm"

    const-string v4, "dlo"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_3
    :try_start_7
    const-string v2, "leg"

    const-string v3, "uts"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Lcom/amap/api/col/sl/di;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Lcom/amap/api/col/sl/di;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :cond_4
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;[BLcom/amap/api/col/sl/dw;)V
    .locals 4
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

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p2, Lcom/amap/api/col/sl/dw;->a:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/amap/api/col/sl/dx;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/amap/api/col/sl/di;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v2, p2, Lcom/amap/api/col/sl/dw;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    iget-wide v2, p2, Lcom/amap/api/col/sl/dw;->b:J

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;J)Lcom/amap/api/col/sl/di;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :try_start_4
    iget v0, p2, Lcom/amap/api/col/sl/dw;->d:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/di;->a(I)V

    iget-object v0, p2, Lcom/amap/api/col/sl/dw;->e:Lcom/amap/api/col/sl/cd;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/cd;->b([B)[B

    move-result-object v0

    invoke-virtual {v2, p0}, Lcom/amap/api/col/sl/di;->b(Ljava/lang/String;)Lcom/amap/api/col/sl/di$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/col/sl/di$a;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Lcom/amap/api/col/sl/di$a;->b()V

    invoke-virtual {v2}, Lcom/amap/api/col/sl/di;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_2
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lcom/amap/api/col/sl/di;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Lcom/amap/api/col/sl/di;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_6
    throw v0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "leg"

    const-string v2, "fet"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/col/sl/di;Lcom/amap/api/col/sl/ek;)[B
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/sl/di;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const-string v5, ".0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {p0, v4}, Lcom/amap/api/col/sl/ed;->a(Lcom/amap/api/col/sl/di;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amap/api/col/sl/ek;->b([B)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/col/sl/ek;->a()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "leg"

    const-string v3, "gCo"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-array v0, v1, [B

    goto :goto_1
.end method
