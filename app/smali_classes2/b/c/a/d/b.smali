.class public Lb/c/a/d/b;
.super Ljava/lang/Object;
.source "FileConvert.java"

# interfaces
.implements Lb/c/a/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/c/a/d/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lb/c/a/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/b<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/c/a/d/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/d/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb/c/a/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lb/c/a/d/b;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/a/d/b;->k(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method static synthetic i(Lb/c/a/d/b;)Lb/c/a/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/c/a/d/b;->c:Lb/c/a/c/b;

    return-object p0
.end method

.method private k(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 1
    new-instance v0, Lb/c/a/d/b$b;

    invoke-direct {v0, p0, p1}, Lb/c/a/d/b$b;-><init>(Lb/c/a/d/b;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lb/c/a/g/b;->h(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/d/b;->j(Lokhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public j(Lokhttp3/Response;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/c/a/d/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lb/c/a/d/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/c/a/d/b;->a:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v1, p0, Lb/c/a/d/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lb/c/a/g/b;->f(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/c/a/d/b;->b:Ljava/lang/String;

    .line 4
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lb/c/a/d/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Lb/c/a/g/c;->b(Ljava/io/File;)Z

    .line 6
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lb/c/a/d/b;->b:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-static {v2}, Lb/c/a/g/c;->c(Ljava/io/File;)Z

    const/16 v1, 0x2000

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_2

    .line 9
    invoke-static {v3}, Lb/c/a/g/c;->a(Ljava/io/Closeable;)V

    .line 10
    invoke-static {v3}, Lb/c/a/g/c;->a(Ljava/io/Closeable;)V

    return-object v3

    .line 11
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12
    :try_start_2
    new-instance v5, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v5}, Lcom/lzy/okgo/model/Progress;-><init>()V

    .line 13
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/lzy/okgo/model/Progress;->g:J

    .line 14
    iget-object p1, p0, Lb/c/a/d/b;->b:Ljava/lang/String;

    iput-object p1, v5, Lcom/lzy/okgo/model/Progress;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/lzy/okgo/model/Progress;->d:Ljava/lang/String;

    const/4 p1, 0x2

    .line 16
    iput p1, v5, Lcom/lzy/okgo/model/Progress;->j:I

    .line 17
    iput-object v0, v5, Lcom/lzy/okgo/model/Progress;->b:Ljava/lang/String;

    .line 18
    iput-object v0, v5, Lcom/lzy/okgo/model/Progress;->a:Ljava/lang/String;

    .line 19
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :goto_0
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 22
    iget-object v3, p0, Lb/c/a/d/b;->c:Lb/c/a/c/b;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    int-to-long v6, v0

    .line 23
    new-instance v0, Lb/c/a/d/b$a;

    invoke-direct {v0, p0}, Lb/c/a/d/b$a;-><init>(Lb/c/a/d/b;)V

    invoke-static {v5, v6, v7, v0}, Lcom/lzy/okgo/model/Progress;->c(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    invoke-static {v4}, Lb/c/a/g/c;->a(Ljava/io/Closeable;)V

    .line 26
    invoke-static {p1}, Lb/c/a/g/c;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v3

    :goto_1
    move-object v3, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 27
    :goto_2
    invoke-static {v3}, Lb/c/a/g/c;->a(Ljava/io/Closeable;)V

    .line 28
    invoke-static {p1}, Lb/c/a/g/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public l(Lb/c/a/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/b<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/c/a/d/b;->c:Lb/c/a/c/b;

    return-void
.end method
