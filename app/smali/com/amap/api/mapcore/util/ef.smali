.class public Lcom/amap/api/mapcore/util/ef;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ef$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private b:Lcom/amap/api/mapcore/util/hk;

.field private c:Lcom/amap/api/mapcore/util/dt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore/util/dt",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore/util/ef$a;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/amap/api/mapcore/util/ef;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/mapcore/util/ef$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ef;->f:Z

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ef;->b(Lcom/amap/api/mapcore/util/ef$a;)V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)J
    .locals 4

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/mapcore/util/ef$a;)Lcom/amap/api/mapcore/util/ef;
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/ef;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ef;-><init>(Lcom/amap/api/mapcore/util/ef$a;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ef;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/ef;->d()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ef;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Lcom/amap/api/mapcore/util/ef$a;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/ef$a;->f:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore/util/ej;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/ef$1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget v1, v1, Lcom/amap/api/mapcore/util/ef$a;->a:I

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/ef$1;-><init>(Lcom/amap/api/mapcore/util/ef;I)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    :cond_1
    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/ef$a;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ef;->a()V

    :cond_2
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a readable directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/ef;->b(Ljava/io/File;)V

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ef;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore/util/ef;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/dt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ef$a;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-boolean v2, v2, Lcom/amap/api/mapcore/util/ef$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-boolean v2, v2, Lcom/amap/api/mapcore/util/ef$a;->i:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ef;->b(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/ef;->a(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-wide v4, v4, Lcom/amap/api/mapcore/util/ef$a;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_3
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-wide v4, v4, Lcom/amap/api/mapcore/util/ef$a;->b:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/hk;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ef;->f:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/amap/api/mapcore/util/ef$a;->c:Ljava/io/File;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/dt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ef;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/hk;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hk$b;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/hk;->b(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hk$a;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/hk$a;->a(I)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/ef$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget v4, v4, Lcom/amap/api/mapcore/util/ef$a;->e:I

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hk$a;->a()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/hk$b;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3
.end method

.method public a(Z)V
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dt;->a()V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hk;->f()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ef;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    monitor-enter v4

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/ef;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/hk;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hk$b;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/hk$b;->a(I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_4
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    invoke-static {v1, v5, v6, p0}, Lcom/amap/api/mapcore/util/eh;->a(Ljava/io/FileDescriptor;IILcom/amap/api/mapcore/util/ef;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_2
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v3

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_3
    :goto_5
    :try_start_9
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->c:Lcom/amap/api/mapcore/util/dt;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dt;->a()V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ef;->f:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hk;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hk;->close()V

    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef;->d:Lcom/amap/api/mapcore/util/ef$a;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/ef$a;->j:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ef;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ef;->b(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ef;->a()V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ef;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef;->b:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hk;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
