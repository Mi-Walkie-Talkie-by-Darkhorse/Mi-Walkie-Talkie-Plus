.class public Lcom/amap/api/mapcore/util/ic;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# static fields
.field public static a:I

.field public static b:I

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/ic;->c:Z

    const/16 v0, 0xd

    sput v0, Lcom/amap/api/mapcore/util/ic;->a:I

    const/4 v0, 0x6

    sput v0, Lcom/amap/api/mapcore/util/ic;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/ic;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ic;->b(Landroid/content/Context;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/amap/api/mapcore/util/fy;->c([B)[B

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/ge;

    const-string v2, "2"

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore/util/ge;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/amap/api/mapcore/util/hp;->a()Lcom/amap/api/mapcore/util/hp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/hp;->b(Lcom/amap/api/mapcore/util/hv;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "sm"

    const-string v2, "usd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/amap/api/mapcore/util/ib;Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/amap/api/mapcore/util/ic;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/gf;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore/util/ic$1;

    invoke-direct {v2, p1, p0}, Lcom/amap/api/mapcore/util/ic$1;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/ib;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;[B)[B
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ic;->c(Landroid/content/Context;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ic;->d(Landroid/content/Context;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/ic;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)[B
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, v0, [B

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.2.."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/amap/api/mapcore/util/ic;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/amap/api/mapcore/util/ic;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string v1, "Android"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v1, v3

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "sm"

    const-string v4, "gh"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)[B
    .locals 2

    sget-object v0, Lcom/amap/api/mapcore/util/gd;->g:Ljava/lang/String;

    const v1, 0x4b000

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore/util/id;->a(Landroid/content/Context;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->p(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_0

    sget-boolean v2, Lcom/amap/api/mapcore/util/ic;->c:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amap/api/mapcore/util/gd;->g:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/id;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "c.log"

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/id;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x36ee80

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    const-string v2, "c.log"

    invoke-static {p0, v4, v5, v2}, Lcom/amap/api/mapcore/util/id;->a(Landroid/content/Context;JLjava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/amap/api/mapcore/util/ic;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "sm"

    const-string v3, "iud"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
