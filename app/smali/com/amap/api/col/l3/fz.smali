.class public final Lcom/amap/api/col/l3/fz;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/fz$a;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 5
    invoke-static {}, Lcom/amap/api/col/l3/fw;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "0"

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "CI"

    const-string v3, "TS"

    .line 8
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 9
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/fz$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/fz$a;-><init>(B)V

    .line 10
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/amap/api/col/l3/fz$a;->d:Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 13
    iput-object p0, v0, Lcom/amap/api/col/l3/fz$a;->i:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lcom/amap/api/col/l3/fz;->a(Lcom/amap/api/col/l3/fz$a;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/gc;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "CI"

    const-string v1, "IX"

    .line 15
    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/ge;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "CI"

    const-string p2, "Sco"

    .line 3
    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    .line 56
    :goto_0
    invoke-static {p1}, Lcom/amap/api/col/l3/gi;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    return-void

    :cond_1
    const/4 p1, 0x0

    new-array v0, p1, [B

    .line 57
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)[B
    .locals 1

    .line 16
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/fz;->b(Landroid/content/Context;Z)Lcom/amap/api/col/l3/fz$a;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/fz;->a(Lcom/amap/api/col/l3/fz$a;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "CI"

    const-string v0, "gz"

    .line 17
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/amap/api/col/l3/fz$a;)[B
    .locals 7

    const/4 v0, 0x0

    .line 18
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/amap/api/col/l3/fz$a;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/amap/api/col/l3/fz$a;->y:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/amap/api/col/l3/fz;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/gi;->b([B)[B

    move-result-object p0

    invoke-static {}, Lcom/amap/api/col/l3/gi;->d()Ljava/security/PublicKey;

    move-result-object v2

    array-length v3, p0

    const/16 v4, 0x75

    if-le v3, v4, :cond_0

    new-array v3, v4, [B

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v2}, Lcom/amap/api/col/l3/gc;->a([BLjava/security/Key;)[B

    move-result-object v2

    array-length v3, p0

    const/16 v6, 0x80

    add-int/2addr v3, v6

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    sub-int/2addr v2, v4

    invoke-static {p0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lcom/amap/api/col/l3/gc;->a([BLjava/security/Key;)[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v3

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    const-string v2, "CI"

    const-string v3, "gzx"

    .line 47
    invoke-static {p0, v2, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v1, :cond_1

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_2

    .line 50
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :cond_2
    :goto_4
    throw p0
.end method

.method private static b(Landroid/content/Context;Z)Lcom/amap/api/col/l3/fz$a;
    .locals 5

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/fz$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/fz$a;-><init>(B)V

    .line 4
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->a:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->b:Ljava/lang/String;

    .line 7
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    .line 8
    :cond_0
    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->c:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->d:Ljava/lang/String;

    .line 10
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->e:Ljava/lang/String;

    .line 11
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->f:Ljava/lang/String;

    .line 12
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->g:Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->h:Ljava/lang/String;

    .line 14
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->i:Ljava/lang/String;

    .line 15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->j:Ljava/lang/String;

    .line 16
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->k:Ljava/lang/String;

    .line 17
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->l:Ljava/lang/String;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->r(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->m:Ljava/lang/String;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->q(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->n:Ljava/lang/String;

    .line 20
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->o:Ljava/lang/String;

    .line 21
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->p:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 22
    iput-object v3, v0, Lcom/amap/api/col/l3/fz$a;->q:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->q:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_2

    .line 24
    iput-object v3, v0, Lcom/amap/api/col/l3/fz$a;->r:Ljava/lang/String;

    goto :goto_1

    .line 25
    :cond_2
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fz$a;->r:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_3

    .line 26
    iput-object v3, v0, Lcom/amap/api/col/l3/fz$a;->s:Ljava/lang/String;

    .line 27
    iput-object v3, v0, Lcom/amap/api/col/l3/fz$a;->t:Ljava/lang/String;

    goto :goto_2

    .line 28
    :cond_3
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->n(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 29
    aget-object v1, p1, v1

    iput-object v1, v0, Lcom/amap/api/col/l3/fz$a;->s:Ljava/lang/String;

    const/4 v1, 0x1

    .line 30
    aget-object p1, p1, v1

    iput-object p1, v0, Lcom/amap/api/col/l3/fz$a;->t:Ljava/lang/String;

    .line 31
    :goto_2
    invoke-static {}, Lcom/amap/api/col/l3/gb;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/col/l3/fz$a;->w:Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 34
    iput-object p1, v0, Lcom/amap/api/col/l3/fz$a;->x:Ljava/lang/String;

    goto :goto_3

    .line 35
    :cond_4
    iput-object v3, v0, Lcom/amap/api/col/l3/fz$a;->x:Ljava/lang/String;

    .line 36
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "aid="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|serial="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|storage="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Lcom/amap/api/col/l3/gb;->c()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|ram="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->z(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|arch="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Lcom/amap/api/col/l3/gb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/col/l3/fz$a;->y:Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/amap/api/col/l3/fz$a;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|adiuExtras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/col/l3/fz$a;->y:Ljava/lang/String;

    :cond_5
    const-string p1, ","

    .line 45
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/gb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/amap/api/col/l3/fz$a;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|multiImeis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/col/l3/fz$a;->y:Ljava/lang/String;

    .line 48
    :cond_6
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/amap/api/col/l3/fz$a;->y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|meid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/col/l3/fz$a;->y:Ljava/lang/String;

    :cond_7
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3/fz;->b(Landroid/content/Context;Z)Lcom/amap/api/col/l3/fz$a;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/fz;->a(Lcom/amap/api/col/l3/fz$a;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/gc;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "CI"

    const-string v1, "gCX"

    .line 2
    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
