.class public Lcom/huawei/hms/framework/network/grs/c/j;
.super Lcom/huawei/hms/framework/network/grs/c/b;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/framework/network/grs/c/b;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hms/framework/network/grs/c/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "j"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/c/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/a/c;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/huawei/hms/framework/network/grs/c/b;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/c/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/a/c;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/huawei/hms/framework/network/grs/c/f;
    .locals 19

    move-object/from16 v1, p0

    sget-object v0, Lcom/huawei/hms/framework/network/grs/c/j;->i:Ljava/lang/String;

    const-string v2, "Post call execute"

    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/c/b;->b()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/c/b;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hms/framework/network/grs/d/a/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const-string v6, "create HttpsURLConnection instance by url return null."

    :try_start_2
    invoke-static {v0, v6}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v7

    :cond_0
    const-string v0, "Content-Type"

    const-string v8, "application/json; charset=UTF-8"

    :try_start_3
    invoke-virtual {v6, v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "POST"

    :try_start_4
    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/c/b;->f()Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v9, "services"

    const-string v10, ""

    :try_start_5
    invoke-virtual {v8, v9, v10}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v9, "UTF-8"

    :try_start_6
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v0, 0xc8

    if-ne v10, v0, :cond_1

    :try_start_7
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hms/framework/common/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v7}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    move-object v7, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    if-nez v7, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v12, v0

    goto :goto_1

    :cond_2
    move-object v12, v7

    :goto_1
    new-instance v0, Lcom/huawei/hms/framework/network/grs/c/f;

    sub-long v13, v8, v4

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/huawei/hms/framework/network/grs/c/f;-><init>(ILjava/util/Map;[BJ)V

    iput-object v0, v1, Lcom/huawei/hms/framework/network/grs/c/b;->a:Lcom/huawei/hms/framework/network/grs/c/f;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-wide/from16 v17, v2

    move-wide v2, v4

    move-wide/from16 v4, v17

    goto :goto_2

    :catch_1
    move-exception v0

    move-wide v4, v2

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sget-object v8, Lcom/huawei/hms/framework/network/grs/c/j;->i:Ljava/lang/String;

    const-string v9, "RequestCallableV2 run task catch IOException"

    invoke-static {v8, v9, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v8, Lcom/huawei/hms/framework/network/grs/c/f;

    sub-long/2addr v6, v2

    invoke-direct {v8, v0, v6, v7}, Lcom/huawei/hms/framework/network/grs/c/f;-><init>(Ljava/lang/Exception;J)V

    iput-object v8, v1, Lcom/huawei/hms/framework/network/grs/c/b;->a:Lcom/huawei/hms/framework/network/grs/c/f;

    move-wide v2, v4

    :goto_3
    move-wide v4, v15

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/c/b;->a:Lcom/huawei/hms/framework/network/grs/c/f;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/huawei/hms/framework/network/grs/c/f;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/c/b;->a:Lcom/huawei/hms/framework/network/grs/c/f;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/c/b;->d()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huawei/hms/framework/network/grs/c/f;->a(I)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/c/b;->a:Lcom/huawei/hms/framework/network/grs/c/f;

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hms/framework/network/grs/c/f;->b(J)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/c/b;->a:Lcom/huawei/hms/framework/network/grs/c/f;

    invoke-virtual {v0, v4, v5}, Lcom/huawei/hms/framework/network/grs/c/f;->a(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/c/b;->a()Lcom/huawei/hms/framework/network/grs/c/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/c/b;->a()Lcom/huawei/hms/framework/network/grs/c/a;

    move-result-object v0

    iget-object v2, v1, Lcom/huawei/hms/framework/network/grs/c/b;->a:Lcom/huawei/hms/framework/network/grs/c/f;

    invoke-interface {v0, v2}, Lcom/huawei/hms/framework/network/grs/c/a;->a(Lcom/huawei/hms/framework/network/grs/c/f;)V

    :cond_3
    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/c/b;->a:Lcom/huawei/hms/framework/network/grs/c/f;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/c/j;->call()Lcom/huawei/hms/framework/network/grs/c/f;

    move-result-object v0

    return-object v0
.end method
