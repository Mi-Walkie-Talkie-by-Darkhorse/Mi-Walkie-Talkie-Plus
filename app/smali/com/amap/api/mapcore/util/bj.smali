.class public Lcom/amap/api/mapcore/util/bj;
.super Ljava/lang/Object;
.source "UnZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/bj$a;,
        Lcom/amap/api/mapcore/util/bj$c;,
        Lcom/amap/api/mapcore/util/bj$b;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/bj$b;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/bg;Lcom/amap/api/mapcore/util/bf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/mapcore/util/bj$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/mapcore/util/bj$b;-><init>(Lcom/amap/api/mapcore/util/bj;Lcom/amap/api/mapcore/util/bg;Lcom/amap/api/mapcore/util/bf;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bj;->a:Lcom/amap/api/mapcore/util/bj$b;

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JJLcom/amap/api/mapcore/util/bj$c;Lcom/amap/api/mapcore/util/bj$a;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-eqz p7, :cond_1

    iget-boolean v4, p7, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :goto_1
    return v0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v0, v3

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_0

    if-eqz p6, :cond_0

    int-to-long v4, v0

    add-long/2addr v4, p2

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long/2addr v4, p4

    if-eqz p7, :cond_2

    iget-boolean v3, p7, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-nez v3, :cond_0

    :cond_2
    invoke-interface {p6, v4, v5}, Lcom/amap/api/mapcore/util/bj$c;->a(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1
.end method

.method private static a(Lcom/amap/api/mapcore/util/bj$b;)V
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->d()Lcom/amap/api/mapcore/util/bf;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->q()V

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->e()Lcom/amap/api/mapcore/util/bj$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->s()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->r()V

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->e()Lcom/amap/api/mapcore/util/bj$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->s()V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->r()V

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_8
    new-instance v2, Lcom/amap/api/mapcore/util/bj$1;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore/util/bj$1;-><init>(Lcom/amap/api/mapcore/util/bf;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->e()Lcom/amap/api/mapcore/util/bj$a;

    move-result-object v4

    iget-boolean v4, v4, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->s()V

    :cond_9
    invoke-static {v3, v1, v2, p0}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/io/File;Ljava/io/File;Lcom/amap/api/mapcore/util/bj$c;Lcom/amap/api/mapcore/util/bj$b;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->e()Lcom/amap/api/mapcore/util/bj$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->s()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->e()Lcom/amap/api/mapcore/util/bj$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-eqz v1, :cond_b

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->s()V

    goto/16 :goto_0

    :cond_a
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bj$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bf;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bf;->r()V

    goto/16 :goto_0
.end method

.method private static a(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/amap/api/mapcore/util/bj$c;Lcom/amap/api/mapcore/util/bj$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3}, Lcom/amap/api/mapcore/util/bj$b;->e()Lcom/amap/api/mapcore/util/bj$a;

    move-result-object v5

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v1, v6}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v5, :cond_2

    iget-boolean v8, v5, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amap/api/mapcore/util/bj$b;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v7, v6, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JLcom/amap/api/mapcore/util/bj$c;Lcom/amap/api/mapcore/util/bj$a;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v7}, Ljava/util/zip/CheckedInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/bj$c;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v2, v8

    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JLcom/amap/api/mapcore/util/bj$c;Lcom/amap/api/mapcore/util/bj$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p5, :cond_1

    iget-boolean v0, p5, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/amap/api/mapcore/util/bj$c;->a()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v8

    :goto_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    move v8, v0

    goto :goto_0

    :cond_3
    int-to-long v2, v8

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JJLcom/amap/api/mapcore/util/bj$c;Lcom/amap/api/mapcore/util/bj$a;)I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_2

    :cond_4
    move v0, v8

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj;->a:Lcom/amap/api/mapcore/util/bj$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj;->a:Lcom/amap/api/mapcore/util/bj$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bj$b;->f()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj;->a:Lcom/amap/api/mapcore/util/bj$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj;->a:Lcom/amap/api/mapcore/util/bj$b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bj;->a(Lcom/amap/api/mapcore/util/bj$b;)V

    :cond_0
    return-void
.end method
