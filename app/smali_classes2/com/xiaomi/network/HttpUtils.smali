.class public abstract Lcom/xiaomi/network/HttpUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/network/HttpUtils$DefaultHttpGetProcessor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(II)I
    .locals 1

    add-int/lit16 v0, p1, 0xf3

    div-int/lit16 v0, v0, 0x5a8

    mul-int/lit16 v0, v0, 0x84

    add-int/lit16 v0, v0, 0x438

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static a(III)I
    .locals 1

    add-int/lit16 v0, p1, 0xc8

    div-int/lit16 v0, v0, 0x5a8

    mul-int/lit16 v0, v0, 0x84

    add-int/lit16 v0, v0, 0x3f3

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    add-int/2addr v0, p2

    return v0
.end method

.method private static a(Lcom/xiaomi/network/HttpProcessor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/network/HttpProcessor;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/c;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/network/HttpProcessor;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3}, Lcom/xiaomi/network/HttpUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/network/HttpUtils;->a(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/network/HttpProcessor;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lcom/xiaomi/network/HttpUtils;->a(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p3}, Lcom/xiaomi/network/HttpUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/network/HttpUtils;->a(III)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/c;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/network/c;

    invoke-interface {v0}, Lcom/xiaomi/channel/commonutils/network/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/channel/commonutils/network/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    invoke-interface {v0}, Lcom/xiaomi/channel/commonutils/network/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/xiaomi/channel/commonutils/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v1, 0x2

    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/network/HttpUtils$DefaultHttpGetProcessor;

    invoke-direct {v0}, Lcom/xiaomi/network/HttpUtils$DefaultHttpGetProcessor;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/network/HttpUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/xiaomi/network/HttpProcessor;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/xiaomi/network/HttpProcessor;Z)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/c;",
            ">;",
            "Lcom/xiaomi/network/HttpProcessor;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/network/HostManager;->getFallbacksByURL(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v10

    :try_start_1
    invoke-virtual {p3, p0, v1, v8}, Lcom/xiaomi/network/HttpProcessor;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    :goto_2
    return-object v7

    :cond_3
    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p0, v1, v8}, Lcom/xiaomi/network/HttpProcessor;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {p3, v1, v8, v7}, Lcom/xiaomi/network/HttpUtils;->a(Lcom/xiaomi/network/HttpProcessor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v6

    if-eqz v0, :cond_5

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {p3, v1, v8, v7}, Lcom/xiaomi/network/HttpUtils;->a(Lcom/xiaomi/network/HttpProcessor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_5
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v7

    :goto_3
    move-object v7, v1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {p3, v1, v8, v7}, Lcom/xiaomi/network/HttpUtils;->a(Lcom/xiaomi/network/HttpProcessor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;JJLjava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object v1, v7

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_8
    const/4 v7, 0x0

    goto :goto_2
.end method
