.class public Lcom/yalantis/ucrop/b/b;
.super Landroid/os/AsyncTask;
.source "BitmapLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yalantis/ucrop/b/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Landroid/net/Uri;

.field private final d:I

.field private final e:I

.field private final f:Lcom/yalantis/ucrop/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/a/b;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/b/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    iput p4, p0, Lcom/yalantis/ucrop/b/b;->d:I

    iput p5, p0, Lcom/yalantis/ucrop/b/b;->e:I

    iput-object p6, p0, Lcom/yalantis/ucrop/b/b;->f:Lcom/yalantis/ucrop/a/b;

    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapWorkerTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/yalantis/ucrop/b/b;->b(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "BitmapWorkerTask"

    const-string v2, "Downloading failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_2
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/yalantis/ucrop/c/e;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/yalantis/ucrop/b/b;->a(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const-string v1, "BitmapWorkerTask"

    const-string v2, "Copying failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_4
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BitmapWorkerTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri scheme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "BitmapWorkerTask"

    const-string v1, "copyFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Output Uri is null - cannot copy image"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v3, :cond_1

    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "InputStream for given input Uri is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_0
    invoke-static {v1}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    iput-object v1, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    throw v0

    :cond_1
    const/16 v0, 0x400

    :try_start_3
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "BitmapWorkerTask"

    const-string v1, "downloadFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Output Uri is null - cannot download image"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v4, Lokhttp3/OkHttpClient;

    invoke-direct {v4}, Lokhttp3/OkHttpClient;-><init>()V

    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    :try_start_2
    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v2

    invoke-interface {v3, v2}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    :cond_1
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v5, "OutputStream for given output Uri is null"

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v3}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    :cond_3
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->cancelAll()V

    iget-object v1, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    iput-object v1, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/yalantis/ucrop/b/b$a;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    if-nez v3, :cond_0

    new-instance v0, Lcom/yalantis/ucrop/b/b$a;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Input Uri cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/b/b$a;-><init>(Ljava/lang/Exception;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/b/b;->a()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v3, p0, Lcom/yalantis/ucrop/b/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v6, v7, :cond_1

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v6, v7, :cond_3

    :cond_1
    new-instance v0, Lcom/yalantis/ucrop/b/b$a;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bounds for bitmap could not be retrieved from the Uri: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/b/b$a;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Lcom/yalantis/ucrop/b/b$a;

    invoke-direct {v1, v0}, Lcom/yalantis/ucrop/b/b$a;-><init>(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/yalantis/ucrop/b/b$a;

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/b/b$a;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/yalantis/ucrop/b/b$a;

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParcelFileDescriptor was null for given Uri: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/b/b$a;-><init>(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_3
    iget v6, p0, Lcom/yalantis/ucrop/b/b;->d:I

    iget v7, p0, Lcom/yalantis/ucrop/b/b;->e:I

    invoke-static {v5, v6, v7}, Lcom/yalantis/ucrop/c/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :goto_2
    if-nez v0, :cond_4

    const/4 v6, 0x0

    :try_start_2
    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v6

    const-string v7, "BitmapWorkerTask"

    const-string v8, "doInBackground: BitmapFactory.decodeFileDescriptor: "

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    new-instance v0, Lcom/yalantis/ucrop/b/b$a;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bitmap could not be decoded from the Uri: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/b/b$a;-><init>(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_6

    invoke-static {v3}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    :cond_6
    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/yalantis/ucrop/c/a;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Lcom/yalantis/ucrop/c/a;->a(I)I

    move-result v3

    invoke-static {v0}, Lcom/yalantis/ucrop/c/a;->b(I)I

    move-result v4

    new-instance v5, Lcom/yalantis/ucrop/model/b;

    invoke-direct {v5, v0, v3, v4}, Lcom/yalantis/ucrop/model/b;-><init>(III)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v3, :cond_7

    int-to-float v0, v3

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_7
    if-eq v4, v1, :cond_8

    int-to-float v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_8
    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/yalantis/ucrop/b/b$a;

    invoke-static {v2, v6}, Lcom/yalantis/ucrop/c/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/yalantis/ucrop/b/b$a;-><init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/b;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/yalantis/ucrop/b/b$a;

    invoke-direct {v0, v2, v5}, Lcom/yalantis/ucrop/b/b$a;-><init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/b;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method protected a(Lcom/yalantis/ucrop/b/b$a;)V
    .locals 5
    .param p1    # Lcom/yalantis/ucrop/b/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/yalantis/ucrop/b/b$a;->c:Ljava/lang/Exception;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/yalantis/ucrop/b/b;->f:Lcom/yalantis/ucrop/a/b;

    iget-object v2, p1, Lcom/yalantis/ucrop/b/b$a;->a:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/yalantis/ucrop/b/b$a;->b:Lcom/yalantis/ucrop/model/b;

    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/yalantis/ucrop/a/b;->a(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/b;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/b/b;->f:Lcom/yalantis/ucrop/a/b;

    iget-object v1, p1, Lcom/yalantis/ucrop/b/b$a;->c:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/b/b;->a([Ljava/lang/Void;)Lcom/yalantis/ucrop/b/b$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/yalantis/ucrop/b/b$a;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/b/b;->a(Lcom/yalantis/ucrop/b/b$a;)V

    return-void
.end method
