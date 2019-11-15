.class public Lcom/xiaomi/channel/commonutils/android/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/a;->b(Ljava/io/InputStream;)[B

    move-result-object v1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->b(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/string/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/d;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/OutputStream;)V

    :goto_0
    return v0

    :cond_0
    move-object v4, v3

    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    :goto_3
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v5, v4

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v2

    move-object v4, v5

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v4, v5

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :cond_1
    move-object v4, v2

    goto :goto_1
.end method
