.class public final Lcom/amap/api/col/l3/en;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/en$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private b:Lcom/amap/api/col/l3/hs;

.field private c:Lcom/amap/api/col/l3/eb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/col/l3/eb<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/col/l3/en$a;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/amap/api/col/l3/en;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/col/l3/en$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/en;->f:Z

    .line 4
    iput-object p1, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget-boolean v1, p1, Lcom/amap/api/col/l3/en$a;->f:Z

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/en;->g:Ljava/util/HashMap;

    :cond_1
    new-instance v0, Lcom/amap/api/col/l3/en$1;

    iget-object v1, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget v1, v1, Lcom/amap/api/col/l3/en$a;->a:I

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/en$1;-><init>(Lcom/amap/api/col/l3/en;I)V

    iput-object v0, p0, Lcom/amap/api/col/l3/en;->c:Lcom/amap/api/col/l3/eb;

    :cond_2
    iget-boolean p1, p1, Lcom/amap/api/col/l3/en$a;->h:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/col/l3/en;->a()V

    :cond_3
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 70
    invoke-static {}, Lcom/amap/api/col/l3/em;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method public static a(Lcom/amap/api/col/l3/en$a;)Lcom/amap/api/col/l3/en;
    .locals 1

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/en;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/en;-><init>(Lcom/amap/api/col/l3/en$a;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 73
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/em;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 59
    invoke-static {p0}, Lcom/amap/api/col/l3/en;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    invoke-static {}, Lcom/amap/api/col/l3/em;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 65
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 68
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_3
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/en;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/en;->g:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v0, v1

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/en;->a(Ljava/io/File;)V

    .line 22
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 24
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a readable directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "MD5"

    .line 5
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "utf-8"

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 8
    :catchall_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static synthetic d()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/col/l3/en;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 41
    invoke-static {}, Lcom/amap/api/col/l3/em;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/en;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 46
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->c:Lcom/amap/api/col/l3/eb;

    if-eqz v2, :cond_3

    .line 47
    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3/eb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_3
    if-eqz v0, :cond_5

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final a()V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget-object v1, v1, Lcom/amap/api/col/l3/en$a;->c:Ljava/io/File;

    .line 6
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget-boolean v2, v2, Lcom/amap/api/col/l3/en$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget-boolean v2, v2, Lcom/amap/api/col/l3/en$a;->i:Z

    if-eqz v2, :cond_2

    .line 9
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/en;->a(Ljava/io/File;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :catchall_0
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amap/api/col/l3/em;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v5, v2

    mul-long v2, v3, v5

    :goto_1
    iget-object v4, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget-wide v4, v4, Lcom/amap/api/col/l3/en$a;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    .line 13
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget-wide v2, v2, Lcom/amap/api/col/l3/en$a;->b:J

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/hs;->a(Ljava/io/File;J)Lcom/amap/api/col/l3/hs;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 14
    :catchall_1
    :try_start_4
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/col/l3/en$a;->c:Ljava/io/File;

    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/amap/api/col/l3/en;->f:Z

    .line 16
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 17
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->c:Lcom/amap/api/col/l3/eb;

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3/eb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    if-eqz v1, :cond_4

    .line 30
    invoke-static {p1}, Lcom/amap/api/col/l3/en;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 31
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3/hs;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/hs$b;

    move-result-object v2

    if-nez v2, :cond_2

    .line 32
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    .line 33
    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3/hs;->b(Ljava/lang/String;)Lcom/amap/api/col/l3/hs$a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/amap/api/col/l3/hs$a;->a()Ljava/io/OutputStream;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget-object v2, v2, Lcom/amap/api/col/l3/en$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget v3, v3, Lcom/amap/api/col/l3/en$a;->e:I

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {p1}, Lcom/amap/api/col/l3/hs$a;->b()V

    .line 37
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v2}, Lcom/amap/api/col/l3/hs$b;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 39
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    if-eqz v1, :cond_4

    goto :goto_1

    .line 40
    :catchall_1
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/amap/api/col/l3/em;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/en;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->c:Lcom/amap/api/col/l3/eb;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/amap/api/col/l3/eb;->a()V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->c()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/hs;->e()V

    :cond_2
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :catchall_0
    :cond_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/amap/api/col/l3/en;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :catchall_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/en;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 6
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    .line 7
    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/hs;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/hs$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/col/l3/hs$b;->a()Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_1

    .line 9
    :try_start_4
    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/amap/api/col/l3/ep;->a(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v2, :cond_3

    .line 12
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :cond_3
    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-object p1, v2

    :catchall_3
    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 13
    :catchall_4
    :cond_4
    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return-object v2

    :catchall_5
    move-exception p1

    .line 14
    monitor-exit v0

    throw p1
.end method

.method public final b()V
    .locals 4

    .line 15
    invoke-static {}, Lcom/amap/api/col/l3/em;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/en;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->c:Lcom/amap/api/col/l3/eb;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/amap/api/col/l3/eb;->a()V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 20
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/en;->f:Z

    .line 21
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->c()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 22
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/hs;->close()V

    .line 23
    sget-object v2, Lcom/amap/api/col/l3/y;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/en;->d:Lcom/amap/api/col/l3/en$a;

    iget-object v3, v3, Lcom/amap/api/col/l3/en$a;->j:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/amap/api/col/l3/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/en;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :catchall_0
    :try_start_2
    iput-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    .line 25
    invoke-virtual {p0}, Lcom/amap/api/col/l3/en;->a()V

    .line 26
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/en;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/en;->b:Lcom/amap/api/col/l3/hs;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hs;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catchall_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
