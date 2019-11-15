.class public final Lcom/tencent/open/utils/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/a$1;,
        Lcom/tencent/open/utils/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/tencent/open/utils/j;

.field private static final b:Lcom/tencent/open/utils/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/open/utils/j;

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v2, v3}, Lcom/tencent/open/utils/j;-><init>(J)V

    sput-object v0, Lcom/tencent/open/utils/a;->a:Lcom/tencent/open/utils/j;

    new-instance v0, Lcom/tencent/open/utils/k;

    const v1, 0x96fb

    invoke-direct {v0, v1}, Lcom/tencent/open/utils/k;-><init>(I)V

    sput-object v0, Lcom/tencent/open/utils/a;->b:Lcom/tencent/open/utils/k;

    return-void
.end method

.method static synthetic a()Lcom/tencent/open/utils/k;
    .locals 1

    sget-object v0, Lcom/tencent/open/utils/a;->b:Lcom/tencent/open/utils/k;

    return-object v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "channelNo"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/tencent/open/utils/a;->a(Ljava/io/RandomAccessFile;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/tencent/open/utils/a$a;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/tencent/open/utils/a$a;-><init>(Lcom/tencent/open/utils/a$1;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/utils/a$a;->a([B)V

    iget-object v0, v0, Lcom/tencent/open/utils/a$a;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/io/RandomAccessFile;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    sub-long v4, v2, v4

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v2, Lcom/tencent/open/utils/a;->a:Lcom/tencent/open/utils/j;

    invoke-virtual {v2}, Lcom/tencent/open/utils/j;->a()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    aget-byte v6, v3, v1

    if-ne v2, v6, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    aget-byte v6, v3, v0

    if-ne v2, v6, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    aget-byte v6, v3, v8

    if-ne v2, v6, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    const/4 v6, 0x3

    aget-byte v6, v3, v6

    if-ne v2, v6, :cond_0

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive is not a ZIP archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x10

    add-long/2addr v0, v4

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v8, [B

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v1, Lcom/tencent/open/utils/k;

    invoke-direct {v1, v0}, Lcom/tencent/open/utils/k;-><init>([B)V

    invoke-virtual {v1}, Lcom/tencent/open/utils/k;->b()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
