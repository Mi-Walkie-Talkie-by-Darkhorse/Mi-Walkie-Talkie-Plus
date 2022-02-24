.class public Lcom/ifengyu/intercom/network/d/b;
.super Ljava/lang/Object;
.source "HttpDownloadFile.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/network/d/b;->b:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/network/d/b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/network/d/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/network/d/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v0, 0x8

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/ifengyu/intercom/network/d/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0x1388

    .line 5
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    iput v2, p0, Lcom/ifengyu/intercom/network/d/b;->b:I

    .line 9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 13
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 16
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 17
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 18
    :goto_0
    iget-boolean v2, p0, Lcom/ifengyu/intercom/network/d/b;->d:Z

    if-nez v2, :cond_3

    .line 19
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 20
    iget v3, p0, Lcom/ifengyu/intercom/network/d/b;->a:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/ifengyu/intercom/network/d/b;->a:I

    const/4 v3, 0x6

    .line 21
    invoke-virtual {p3, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    const/4 p2, 0x7

    .line 22
    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 24
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/ifengyu/intercom/network/d/b;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/network/d/b$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ifengyu/intercom/network/d/b$a;-><init>(Lcom/ifengyu/intercom/network/d/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/ifengyu/intercom/network/d/b;->a:I

    return v0
.end method
