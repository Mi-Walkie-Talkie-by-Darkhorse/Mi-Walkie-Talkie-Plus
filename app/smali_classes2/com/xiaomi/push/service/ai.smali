.class public Lcom/xiaomi/push/service/ai;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/ai$a;,
        Lcom/xiaomi/push/service/ai$b;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Ljava/io/InputStream;)I
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v3, :cond_2

    :cond_0
    const-string v1, "decode dimension failed for bitmap."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, v2, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v3, v2, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/xiaomi/push/service/ai$a;
    .locals 9

    const v2, 0x19000

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x1f40

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    if-le v3, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap size is too big, max size is 102400  contentLen size is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Http Response Code "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    :try_start_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_1
    if-lez v2, :cond_4

    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    :cond_4
    if-gtz v2, :cond_8

    const-string v2, "length 102400 exhausted."

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/push/service/ai$a;

    const/4 v4, 0x0

    const v5, 0x19000

    invoke-direct {v2, v4, v5}, Lcom/xiaomi/push/service/ai$a;-><init>([BI)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v0, v2

    goto :goto_0

    :cond_6
    sub-int/2addr v2, v6

    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_2
    :try_start_6
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v2, Lcom/xiaomi/push/service/ai$a;

    array-length v5, v4

    invoke-direct {v2, v4, v5}, Lcom/xiaomi/push/service/ai$a;-><init>([BI)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    move-object v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_3
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v0

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v3, v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/ai$b;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/push/service/ai$b;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/push/service/ai$b;-><init>(Landroid/graphics/Bitmap;J)V

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/push/service/ai;->a(Ljava/lang/String;)Lcom/xiaomi/push/service/ai$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget v2, v1, Lcom/xiaomi/push/service/ai$a;->b:I

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/xiaomi/push/service/ai$b;->b:J

    iget-object v1, v1, Lcom/xiaomi/push/service/ai$a;->a:[B

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0, v2}, Lcom/xiaomi/push/service/ai;->a(Landroid/content/Context;Ljava/io/InputStream;)I

    move-result v3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v3, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/ai$b;->a:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_3
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v2, v3

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {p0, v2}, Lcom/xiaomi/push/service/ai;->a(Landroid/content/Context;Ljava/io/InputStream;)I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    :goto_0
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_2
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method
