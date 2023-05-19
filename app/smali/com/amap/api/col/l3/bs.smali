.class public final Lcom/amap/api/col/l3/bs;
.super Ljava/lang/Object;
.source "UnZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/bs$a;,
        Lcom/amap/api/col/l3/bs$c;,
        Lcom/amap/api/col/l3/bs$b;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3/bs$b;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/bp;Lcom/amap/api/col/l3/bo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/bs$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/col/l3/bs$b;-><init>(Lcom/amap/api/col/l3/bs;Lcom/amap/api/col/l3/bp;Lcom/amap/api/col/l3/bo;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/bs;->a:Lcom/amap/api/col/l3/bs$b;

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JJLcom/amap/api/col/l3/bs$c;Lcom/amap/api/col/l3/bs$a;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p0, 0x400

    new-array v1, p0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p1, v1, v2, p0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    if-eqz p7, :cond_1

    .line 48
    iget-boolean v5, p7, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-eqz v5, :cond_1

    .line 49
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return v3

    .line 50
    :cond_1
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v3, v4

    const-wide/16 v4, 0x0

    cmp-long v6, p4, v4

    if-lez v6, :cond_0

    if-eqz p6, :cond_0

    int-to-long v4, v3

    add-long/2addr v4, p2

    const-wide/16 v6, 0x64

    mul-long v4, v4, v6

    .line 51
    div-long/2addr v4, p4

    if-eqz p7, :cond_2

    .line 52
    iget-boolean v6, p7, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-nez v6, :cond_0

    .line 53
    :cond_2
    invoke-interface {p6, v4, v5}, Lcom/amap/api/col/l3/bs$c;->a(J)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return v3
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/amap/api/col/l3/bs;->a(Ljava/io/File;)V

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/amap/api/col/l3/bs$c;Lcom/amap/api/col/l3/bs$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    invoke-virtual {p3}, Lcom/amap/api/col/l3/bs$b;->e()Lcom/amap/api/col/l3/bs$a;

    move-result-object v6

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_4

    .line 5
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v3, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 7
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_0

    .line 9
    iget-boolean v8, v6, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-eqz v8, :cond_0

    .line 10
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 11
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 12
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    .line 15
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-static {v8}, Lcom/amap/api/col/l3/bs;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 17
    invoke-interface {p2}, Lcom/amap/api/col/l3/bs$c;->a()V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    :cond_2
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    add-long/2addr v1, v7

    .line 20
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amap/api/col/l3/bs$b;->a(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 23
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 24
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 25
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    move-wide v3, v1

    .line 26
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 27
    new-instance p0, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {p0, p3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 28
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, p1

    move-object v2, v0

    move-object v5, p2

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/amap/api/col/l3/bs;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JLcom/amap/api/col/l3/bs$c;Lcom/amap/api/col/l3/bs$a;)V

    .line 30
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 31
    invoke-virtual {p0}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 32
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JLcom/amap/api/col/l3/bs$c;Lcom/amap/api/col/l3/bs$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 33
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p5, :cond_0

    .line 34
    iget-boolean v1, p5, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    return-void

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/amap/api/col/l3/bs;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p4, :cond_1

    .line 38
    invoke-interface {p4}, Lcom/amap/api/col/l3/bs$c;->a()V

    :cond_1
    return-void

    .line 39
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {v2}, Lcom/amap/api/col/l3/bs;->a(Ljava/io/File;)V

    .line 41
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_3
    int-to-long v3, v8

    move-object v0, v2

    move-object v1, p1

    move-wide v2, v3

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .line 43
    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3/bs;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JJLcom/amap/api/col/l3/bs$c;Lcom/amap/api/col/l3/bs$a;)I

    move-result v0

    add-int/2addr v8, v0

    .line 44
    :goto_1
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "../"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bs;->a:Lcom/amap/api/col/l3/bs$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->f()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bs;->a:Lcom/amap/api/col/l3/bs$b;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->d()Lcom/amap/api/col/l3/bo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->p()V

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->e()Lcom/amap/api/col/l3/bs$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->r()V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->q()V

    :cond_3
    return-void

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v3, Lcom/amap/api/col/l3/bs$1;

    invoke-direct {v3, v1}, Lcom/amap/api/col/l3/bs$1;-><init>(Lcom/amap/api/col/l3/bo;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->e()Lcom/amap/api/col/l3/bs$a;

    move-result-object v5

    iget-boolean v5, v5, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->r()V

    :cond_6
    invoke-static {v4, v2, v3, v0}, Lcom/amap/api/col/l3/bs;->a(Ljava/io/File;Ljava/io/File;Lcom/amap/api/col/l3/bs$c;Lcom/amap/api/col/l3/bs$b;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->e()Lcom/amap/api/col/l3/bs$a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->r()V

    return-void

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amap/api/col/l3/bo;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    return-void

    :catchall_0
    nop

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->e()Lcom/amap/api/col/l3/bs$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-eqz v0, :cond_9

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->r()V

    return-void

    :cond_9
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->q()V

    goto :goto_1

    :cond_a
    :goto_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs$b;->e()Lcom/amap/api/col/l3/bs$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/api/col/l3/bs$a;->a:Z

    if-eqz v0, :cond_b

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->r()V

    return-void

    :cond_b
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/amap/api/col/l3/bo;->q()V

    :cond_c
    :goto_1
    return-void
.end method
