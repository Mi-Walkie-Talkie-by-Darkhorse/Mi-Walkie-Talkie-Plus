.class public final Lcom/amap/api/col/sl/di;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/di$c;,
        Lcom/amap/api/col/sl/di$a;,
        Lcom/amap/api/col/sl/di$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final q:Ljava/util/concurrent/ThreadFactory;

.field private static final s:Ljava/io/OutputStream;


# instance fields
.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private l:I

.field private final m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/col/sl/di$c;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Lcom/amap/api/col/sl/dj;

.field private p:J

.field private final r:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/sl/di;->a:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/amap/api/col/sl/di$1;

    invoke-direct {v0}, Lcom/amap/api/col/sl/di$1;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/di;->q:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/amap/api/col/sl/di;->q:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/amap/api/col/sl/di;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/amap/api/col/sl/di$3;

    invoke-direct {v0}, Lcom/amap/api/col/sl/di$3;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/di;->s:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/amap/api/col/sl/di;->j:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/col/sl/di;->l:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/amap/api/col/sl/di;->p:J

    new-instance v0, Lcom/amap/api/col/sl/di$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/di$2;-><init>(Lcom/amap/api/col/sl/di;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/di;->r:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/amap/api/col/sl/di;->c:Ljava/io/File;

    iput v3, p0, Lcom/amap/api/col/sl/di;->g:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/di;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/di;->e:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/di;->f:Ljava/io/File;

    iput v3, p0, Lcom/amap/api/col/sl/di;->i:I

    iput-wide p2, p0, Lcom/amap/api/col/sl/di;->h:J

    return-void
.end method

.method public static a(Ljava/io/File;J)Lcom/amap/api/col/sl/di;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    new-instance v0, Lcom/amap/api/col/sl/di;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/col/sl/di;-><init>(Ljava/io/File;J)V

    iget-object v1, v0, Lcom/amap/api/col/sl/di;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-direct {v0}, Lcom/amap/api/col/sl/di;->g()V

    invoke-direct {v0}, Lcom/amap/api/col/sl/di;->h()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/amap/api/col/sl/di;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/amap/api/col/sl/dl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amap/api/col/sl/di;->d()V

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/amap/api/col/sl/di;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/col/sl/di;-><init>(Ljava/io/File;J)V

    invoke-direct {v0}, Lcom/amap/api/col/sl/di;->i()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/col/sl/di;)Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/di;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/di;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/di;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/amap/api/col/sl/di$a;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/sl/di$a;->a(Lcom/amap/api/col/sl/di$a;)Lcom/amap/api/col/sl/di$c;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->b(Lcom/amap/api/col/sl/di$c;)Lcom/amap/api/col/sl/di$a;

    move-result-object v1

    if-eq v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->e(Lcom/amap/api/col/sl/di$c;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/amap/api/col/sl/di;->i:I

    if-ge v1, v3, :cond_4

    invoke-static {p1}, Lcom/amap/api/col/sl/di$a;->b(Lcom/amap/api/col/sl/di$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/col/sl/di$a;->c()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/amap/api/col/sl/di$c;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/col/sl/di$a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/amap/api/col/sl/di;->i:I

    if-ge v0, v1, :cond_7

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/di$c;->b(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/di$c;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->c(Lcom/amap/api/col/sl/di$c;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->c(Lcom/amap/api/col/sl/di$c;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lcom/amap/api/col/sl/di;->j:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/col/sl/di;->j:J

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;)V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/amap/api/col/sl/di;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/sl/di;->n:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;Lcom/amap/api/col/sl/di$a;)Lcom/amap/api/col/sl/di$a;

    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->e(Lcom/amap/api/col/sl/di$c;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;)Z

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->d(Lcom/amap/api/col/sl/di$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/amap/api/col/sl/di$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    iget-wide v0, p0, Lcom/amap/api/col/sl/di;->p:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/amap/api/col/sl/di;->p:J

    invoke-static {v2, v0, v1}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;J)J

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-wide v0, p0, Lcom/amap/api/col/sl/di;->j:J

    iget-wide v2, p0, Lcom/amap/api/col/sl/di;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    invoke-static {}, Lcom/amap/api/col/sl/di;->f()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->r:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->d(Lcom/amap/api/col/sl/di$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amap/api/col/sl/di$c;->d(Lcom/amap/api/col/sl/di$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/amap/api/col/sl/di;Lcom/amap/api/col/sl/di$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/sl/di;->a(Lcom/amap/api/col/sl/di$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/sl/di;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->l()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/col/sl/di;)Z
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->j()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)Lcom/amap/api/col/sl/di$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->k()V

    invoke-static {p1}, Lcom/amap/api/col/sl/di;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/di$c;

    cmp-long v2, v4, v4

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->f(Lcom/amap/api/col/sl/di$c;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/di$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amap/api/col/sl/di$c;-><init>(Lcom/amap/api/col/sl/di;Ljava/lang/String;B)V

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    new-instance v0, Lcom/amap/api/col/sl/di$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/amap/api/col/sl/di$a;-><init>(Lcom/amap/api/col/sl/di;Lcom/amap/api/col/sl/di$c;B)V

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;Lcom/amap/api/col/sl/di$a;)Lcom/amap/api/col/sl/di$a;

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->b(Lcom/amap/api/col/sl/di$c;)Lcom/amap/api/col/sl/di$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/amap/api/col/sl/di;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->i()V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/sl/di;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/sl/di;->n:I

    return v0
.end method

.method static synthetic e()Ljava/io/OutputStream;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/di;->s:Ljava/io/OutputStream;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/amap/api/col/sl/di;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/amap/api/col/sl/di;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/di;->i:I

    return v0
.end method

.method private static f()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/di;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/di;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x100

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v8, Lcom/amap/api/col/sl/di;->q:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/amap/api/col/sl/di;->b:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/col/sl/di;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/amap/api/col/sl/di;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->c:Ljava/io/File;

    return-object v0
.end method

.method private g()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x5

    const/4 v0, 0x0

    const/4 v8, -0x1

    new-instance v3, Lcom/amap/api/col/sl/dk;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/amap/api/col/sl/di;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/amap/api/col/sl/dl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v2}, Lcom/amap/api/col/sl/dk;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/amap/api/col/sl/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/amap/api/col/sl/dk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/amap/api/col/sl/dk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amap/api/col/sl/dk;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amap/api/col/sl/dk;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/amap/api/col/sl/di;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/amap/api/col/sl/di;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/amap/api/col/sl/dl;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    move v1, v0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/amap/api/col/sl/dk;->a()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/amap/api/col/sl/di;->n:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/amap/api/col/sl/dl;->a(Ljava/io/Closeable;)V

    return-void

    :cond_2
    add-int/lit8 v0, v5, 0x1

    const/16 v2, 0x20

    :try_start_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    if-ne v5, v2, :cond_9

    const-string v2, "REMOVE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/di$c;

    if-nez v0, :cond_5

    new-instance v0, Lcom/amap/api/col/sl/di$c;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v2, v7}, Lcom/amap/api/col/sl/di$c;-><init>(Lcom/amap/api/col/sl/di;Ljava/lang/String;B)V

    iget-object v7, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq v6, v8, :cond_6

    if-ne v5, v9, :cond_6

    const-string v2, "CLEAN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;)Z

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;Lcom/amap/api/col/sl/di$a;)Lcom/amap/api/col/sl/di$a;

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;[Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-ne v6, v8, :cond_7

    if-ne v5, v9, :cond_7

    const-string v2, "DIRTY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/amap/api/col/sl/di$a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/amap/api/col/sl/di$a;-><init>(Lcom/amap/api/col/sl/di;Lcom/amap/api/col/sl/di$c;B)V

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;Lcom/amap/api/col/sl/di$a;)Lcom/amap/api/col/sl/di$a;

    goto :goto_1

    :cond_7
    if-ne v6, v8, :cond_8

    const/4 v0, 0x4

    if-ne v5, v0, :cond_8

    const-string v0, "READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    move-object v2, v0

    goto :goto_2
.end method

.method private h()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/di$c;

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->b(Lcom/amap/api/col/sl/di$c;)Lcom/amap/api/col/sl/di$a;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/amap/api/col/sl/di;->i:I

    if-ge v1, v4, :cond_0

    iget-wide v4, p0, Lcom/amap/api/col/sl/di;->j:J

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->c(Lcom/amap/api/col/sl/di$c;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/col/sl/di;->j:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/di$c;->a(Lcom/amap/api/col/sl/di$c;Lcom/amap/api/col/sl/di$a;)Lcom/amap/api/col/sl/di$a;

    move v1, v2

    :goto_2
    iget v4, p0, Lcom/amap/api/col/sl/di;->i:I

    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/di$c;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/di$c;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private declared-synchronized i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amap/api/col/sl/di;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/amap/api/col/sl/dl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/col/sl/di;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/col/sl/di;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/di$c;

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->b(Lcom/amap/api/col/sl/di$c;)Lcom/amap/api/col/sl/di$a;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->d(Lcom/amap/api/col/sl/di$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->d(Lcom/amap/api/col/sl/di$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/col/sl/di$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/di;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/di;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amap/api/col/sl/di;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/amap/api/col/sl/dl;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void
.end method

.method private j()Z
    .locals 2

    iget v0, p0, Lcom/amap/api/col/sl/di;->n:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/col/sl/di;->n:I

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/amap/api/col/sl/di;->j:J

    iget-wide v2, p0, Lcom/amap/api/col/sl/di;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/sl/di;->l:I

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/di;->c(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->o:Lcom/amap/api/col/sl/dj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->o:Lcom/amap/api/col/sl/dj;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/col/sl/di$b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->k()V

    invoke-static {p1}, Lcom/amap/api/col/sl/di;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/di$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->e(Lcom/amap/api/col/sl/di$c;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/amap/api/col/sl/di;->i:I

    new-array v6, v3, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    :goto_1
    :try_start_2
    iget v4, p0, Lcom/amap/api/col/sl/di;->i:I

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/amap/api/col/sl/di$c;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    :try_start_3
    iget v2, p0, Lcom/amap/api/col/sl/di;->i:I

    if-ge v0, v2, :cond_0

    aget-object v2, v6, v0

    if-eqz v2, :cond_0

    aget-object v2, v6, v0

    invoke-static {v2}, Lcom/amap/api/col/sl/dl;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/amap/api/col/sl/di;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/col/sl/di;->n:I

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/amap/api/col/sl/di;->f()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/di;->r:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance v1, Lcom/amap/api/col/sl/di$b;

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->f(Lcom/amap/api/col/sl/di$c;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->c(Lcom/amap/api/col/sl/di$c;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/amap/api/col/sl/di$b;-><init>(Lcom/amap/api/col/sl/di;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 2

    const/16 v1, 0x2710

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/amap/api/col/sl/di;->l:I

    return-void

    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/amap/api/col/sl/di$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/di;->d(Ljava/lang/String;)Lcom/amap/api/col/sl/di$a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->c:Ljava/io/File;

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->k()V

    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->l()V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->k()V

    invoke-static {p1}, Lcom/amap/api/col/sl/di;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/di$c;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->b(Lcom/amap/api/col/sl/di$c;)Lcom/amap/api/col/sl/di$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/amap/api/col/sl/di;->j:J

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->c(Lcom/amap/api/col/sl/di$c;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/col/sl/di;->j:J

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->c(Lcom/amap/api/col/sl/di$c;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/amap/api/col/sl/di;->i:I

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/di$c;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/amap/api/col/sl/di;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/sl/di;->n:I

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amap/api/col/sl/di;->f()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->r:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/col/sl/di;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/di$c;

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->b(Lcom/amap/api/col/sl/di$c;)Lcom/amap/api/col/sl/di$a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/amap/api/col/sl/di$c;->b(Lcom/amap/api/col/sl/di$c;)Lcom/amap/api/col/sl/di$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/di$a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/col/sl/di;->l()V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/di;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/col/sl/di;->close()V

    iget-object v0, p0, Lcom/amap/api/col/sl/di;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/col/sl/dl;->a(Ljava/io/File;)V

    return-void
.end method
