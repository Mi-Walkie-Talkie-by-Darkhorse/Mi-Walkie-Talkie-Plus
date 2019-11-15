.class public Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
.super Ljava/lang/Object;
.source "DownloadLaunchRunnable.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/download/g;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$a;,
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;,
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;
    }
.end annotation


# static fields
.field private static final p:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private A:J

.field private B:J

.field a:I

.field private final b:Lcom/liulishuo/filedownloader/download/e;

.field private final c:I

.field private final d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field private final e:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private final f:Z

.field private final g:Z

.field private final h:Lcom/liulishuo/filedownloader/b/a;

.field private final i:Lcom/liulishuo/filedownloader/y;

.field private j:Z

.field private k:Z

.field private final l:Z

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liulishuo/filedownloader/download/d;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/liulishuo/filedownloader/download/d;

.field private o:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile u:Z

.field private volatile v:Z

.field private volatile w:Ljava/lang/Exception;

.field private x:Ljava/lang/String;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConnectionBlock"

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/b;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/y;IIZZI)V
    .locals 5

    const/4 v1, 0x5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->c:I

    iput-boolean v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:J

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->z:J

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->A:J

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->B:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    iput-boolean v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j:Z

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->f:Z

    iput-boolean p7, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Z

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/c;->c()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/c;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->l:Z

    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->i:Lcom/liulishuo/filedownloader/y;

    iput p8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a:I

    new-instance v0, Lcom/liulishuo/filedownloader/download/e;

    invoke-direct {v0, p1, p8, p4, p5}, Lcom/liulishuo/filedownloader/download/e;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/y;IIZZILcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/y;IIZZI)V

    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;J)V

    return-void
.end method

.method private a(JI)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    move/from16 v0, p3

    int-to-long v2, v0

    div-long v8, p1, v2

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-wide v6, v4

    move v4, v2

    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    add-int/lit8 v2, p3, -0x1

    if-ne v4, v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_1
    new-instance v5, Lcom/liulishuo/filedownloader/model/a;

    invoke-direct {v5}, Lcom/liulishuo/filedownloader/model/a;-><init>()V

    invoke-virtual {v5, v10}, Lcom/liulishuo/filedownloader/model/a;->a(I)V

    invoke-virtual {v5, v4}, Lcom/liulishuo/filedownloader/model/a;->b(I)V

    invoke-virtual {v5, v6, v7}, Lcom/liulishuo/filedownloader/model/a;->a(J)V

    invoke-virtual {v5, v6, v7}, Lcom/liulishuo/filedownloader/model/a;->b(J)V

    invoke-virtual {v5, v2, v3}, Lcom/liulishuo/filedownloader/model/a;->c(J)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v2, v5}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/model/a;)V

    add-long/2addr v6, v8

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    add-long v2, v6, v8

    const-wide/16 v12, 0x1

    sub-long/2addr v2, v12

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(I)V

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    move/from16 v0, p3

    invoke-interface {v2, v10, v0}, Lcom/liulishuo/filedownloader/b/a;->a(II)V

    move-wide/from16 v0, p1

    invoke-direct {p0, v11, v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;J)V

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/g;->n(Ljava/lang/String;)Lcom/liulishuo/filedownloader/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long v4, p1, v6

    invoke-static {p3}, Lcom/liulishuo/filedownloader/e/g;->f(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    invoke-direct/range {v1 .. v7}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V

    :cond_0
    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/e/e;->f:Z

    if-nez v0, :cond_2

    invoke-interface {v8, p1, p2}, Lcom/liulishuo/filedownloader/d/a;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/liulishuo/filedownloader/d/a;->b()V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_4
    move-object v8, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;J)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Ljava/lang/String;

    move-object v11, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v16

    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    move/from16 v17, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-wide v4, v2

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->e()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->d()J

    move-result-wide v2

    sub-long v8, p2, v2

    :goto_2
    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->d()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->c()J

    move-result-wide v6

    sub-long/2addr v2, v6

    add-long v12, v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_d

    const-string v2, "pass connection[%d-%d], because it has been completed"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v4, v12

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->e()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->d()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x1

    add-long v8, v2, v6

    goto :goto_2

    :cond_3
    new-instance v19, Lcom/liulishuo/filedownloader/download/d$a;

    invoke-direct/range {v19 .. v19}, Lcom/liulishuo/filedownloader/download/d$a;-><init>()V

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->c()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->d()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->e()J

    move-result-wide v6

    invoke-static/range {v2 .. v9}, Lcom/liulishuo/filedownloader/download/b$a;->a(JJJJ)Lcom/liulishuo/filedownloader/download/b;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/liulishuo/filedownloader/download/d$a;->a(I)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v2

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/a;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/d$a;->a(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/download/d$a;->a(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/liulishuo/filedownloader/download/d$a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v4

    if-eqz v17, :cond_5

    move-object v2, v14

    :goto_3
    invoke-virtual {v4, v2}, Lcom/liulishuo/filedownloader/download/d$a;->b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/d$a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Z

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/d$a;->a(Z)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/d$a;->a(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/download/d$a;->c(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/d$a;->a()Lcom/liulishuo/filedownloader/download/d;

    move-result-object v2

    sget-boolean v3, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "enable multiple connection: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the download runnable must not be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v4, v12

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    const-string v2, "correct the sofar[%d] from connection table[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/download/d;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/d;->a()V

    goto :goto_4

    :cond_9
    invoke-static {v2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    :cond_b
    return-void

    :cond_c
    sget-object v2, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    sget-boolean v3, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const-string v4, "finish sub-task for [%d] %B %B"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    move-wide v4, v12

    goto/16 :goto_1
.end method

.method private a(Ljava/util/Map;Lcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/a/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/liulishuo/filedownloader/download/a;",
            "Lcom/liulishuo/filedownloader/a/b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    invoke-interface {p3}, Lcom/liulishuo/filedownloader/a/b;->e()I

    move-result v3

    invoke-static {v3, p3}, Lcom/liulishuo/filedownloader/e/g;->b(ILcom/liulishuo/filedownloader/a/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Z

    const/16 v0, 0xc8

    if-eq v3, v0, :cond_0

    const/16 v0, 0xc9

    if-eq v3, v0, :cond_0

    if-nez v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p3}, Lcom/liulishuo/filedownloader/e/g;->a(ILcom/liulishuo/filedownloader/a/b;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v6, 0x19c

    if-ne v3, v6, :cond_5

    const/4 v1, 0x1

    :cond_1
    :goto_1
    if-eqz v1, :cond_a

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v0, :cond_2

    const-string v0, "there is precondition failed on this request[%d] with old etag[%s]\u3001new etag[%s]\u3001response code is %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "the old etag[%s] is the same to the new etag[%s], but the response status code is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    :cond_3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->o()V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->n()I

    move-result v8

    invoke-interface/range {v1 .. v8}, Lcom/liulishuo/filedownloader/b/a;->a(ILjava/lang/String;JJI)V

    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v0, :cond_6

    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v6, :cond_7

    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0xc9

    if-ne v3, v6, :cond_8

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/a;->b()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_8
    const/16 v6, 0x1a0

    if-ne v3, v6, :cond_1

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_9
    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Z

    if-nez v6, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Z

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-nez v1, :cond_b

    if-eqz v0, :cond_f

    :cond_b
    invoke-static {p3}, Lcom/liulishuo/filedownloader/e/g;->a(Lcom/liulishuo/filedownloader/a/b;)J

    move-result-wide v2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/liulishuo/filedownloader/e/g;->a(Lcom/liulishuo/filedownloader/a/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_c
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->s:Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/download/e;->a(ZJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    :cond_e
    const/4 v1, 0x0

    goto :goto_3

    :cond_f
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    invoke-interface {p3}, Lcom/liulishuo/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v3, p1, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    throw v0
.end method

.method private b(J)I
    .locals 7

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->n()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/download/c;->a(ILjava/lang/String;Ljava/lang/String;J)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/download/b$a;->a(J)Lcom/liulishuo/filedownloader/download/b;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/liulishuo/filedownloader/download/d$a;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/download/d$a;-><init>()V

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/d$a;->a(I)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/d$a;->a(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/liulishuo/filedownloader/download/d$a;->a(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/d$a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/d$a;->b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/d$a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Z

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/d$a;->a(Z)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/d$a;->a(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/d$a;->c(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/d$a;->a()Lcom/liulishuo/filedownloader/download/d;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:Lcom/liulishuo/filedownloader/download/d;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-interface {v0, v1, v6}, Lcom/liulishuo/filedownloader/b/a;->a(II)V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:Lcom/liulishuo/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/d;->a()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static/range {v0 .. v5}, Lcom/liulishuo/filedownloader/download/b$a;->a(JJJ)Lcom/liulishuo/filedownloader/download/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:Lcom/liulishuo/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/d;->run()V

    goto :goto_1
.end method

.method private g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/liulishuo/filedownloader/download/b$a;->b()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/liulishuo/filedownloader/download/a$a;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/download/a$a;-><init>()V

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/a$a;->a(I)Lcom/liulishuo/filedownloader/download/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/a$a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/a$a;->b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/a$a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/a$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/download/a$a;->a(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/a$a;->a()Lcom/liulishuo/filedownloader/download/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/a;->a()Lcom/liulishuo/filedownloader/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/a;->d()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/Map;Lcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/liulishuo/filedownloader/download/b$a;->a()Lcom/liulishuo/filedownloader/download/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    :cond_2
    throw v0
.end method

.method private h()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->n()I

    move-result v2

    if-gt v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->l:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/g;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v1, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/liulishuo/filedownloader/e/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;,
            Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/liulishuo/filedownloader/e/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->f:Z

    invoke-static {v1, v5, v2, v4}, Lcom/liulishuo/filedownloader/e/c;->a(ILjava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v2, v0}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->i:Lcom/liulishuo/filedownloader/y;

    invoke-static {v1, v2, v3, v4}, Lcom/liulishuo/filedownloader/e/c;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/y;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v3, v0}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v4, v0}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v4, v0}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liulishuo/filedownloader/e/g;->p(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/e/g;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/a;->a(I)V

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v3, v0}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->i:Lcom/liulishuo/filedownloader/y;

    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/e/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/y;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:Lcom/liulishuo/filedownloader/download/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:Lcom/liulishuo/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/d;->a()V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/d;->a()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/download/e;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/liulishuo/filedownloader/download/d;JJ)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "the task[%d] has already been paused, so pass the completed callback"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/liulishuo/filedownloader/download/d;->a:I

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "the connection has been completed(%d): [%d, %d)  %d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    const-string v0, "the single task not completed corrected(%d, %d != %d) for task(%d)"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->n()I

    move-result v3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v9

    if-le v3, v1, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Z

    if-eqz v4, :cond_2

    move-wide v4, v6

    :goto_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    :goto_2
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    invoke-static {v9, v8}, Lcom/liulishuo/filedownloader/e/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->l:Z

    if-nez v4, :cond_3

    move-wide v4, v6

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v4

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {v4, v5}, Lcom/liulishuo/filedownloader/e/g;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->l:Z

    if-nez v4, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v3, v0, :cond_5

    move-wide v4, v6

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/liulishuo/filedownloader/model/a;->a(Ljava/util/List;)J

    move-result-wide v4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v4

    goto :goto_1

    :cond_7
    move-wide v4, v6

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 3

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;->a()I

    move-result v0

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/e/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j:Z

    :goto_0
    return v1

    :cond_0
    iget v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a:I

    if-lez v0, :cond_1

    instance-of v0, p1, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->c()V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "the task[%d] has already been paused, so pass the error callback"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/d;->b()V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/b/a;->a(IJ)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "the task[%d] has already been paused, so pass the retry callback"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a:I

    if-gez v0, :cond_2

    const-string v0, "valid retry times is less than 0(%d) for download task(%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 10

    const/4 v3, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v0

    if-ne v0, v3, :cond_1

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "High concurrent cause, start runnable but already paused %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->f()V

    :goto_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/e;->b()V

    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/e;->f()V

    :goto_3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    :try_start_3
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->d()V

    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "High concurrent cause, start runnable but already paused %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->f()V

    :goto_5
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :cond_9
    :try_start_5
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->i()V

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g()V

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/b/a;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->f()V

    :goto_6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_b
    :try_start_6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(JLjava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b(J)I

    move-result v6

    if-gtz v6, :cond_d

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v3, "invalid connection count %d, the connection count must be larger than 0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_3
    move-exception v0

    :goto_7
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->c(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    :cond_d
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->f()V

    :goto_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_8

    :cond_f
    :try_start_9
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_8

    :cond_10
    :try_start_a
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_d
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_a .. :try_end_a} :catch_e
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_a .. :try_end_a} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->f()V

    :goto_9
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2

    :cond_11
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_9

    :cond_12
    :try_start_b
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_9

    :cond_13
    if-ne v6, v1, :cond_14

    move v0, v1

    :goto_a
    :try_start_c
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-eqz v0, :cond_15

    invoke-direct {p0, v4, v5}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->c(J)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_d
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_c .. :try_end_c} :catch_e
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_c .. :try_end_c} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_b
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->f()V

    :goto_c
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2

    :cond_14
    move v0, v2

    goto :goto_a

    :cond_15
    :try_start_d
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->e()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v0, :cond_16

    invoke-direct {p0, v6, v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(ILjava/util/List;)V

    goto :goto_b

    :catch_6
    move-exception v0

    goto/16 :goto_7

    :cond_16
    invoke-direct {p0, v4, v5, v6}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a(JI)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_d .. :try_end_d} :catch_e
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_d .. :try_end_d} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_7

    :cond_17
    :try_start_e
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_b

    :catch_8
    move-exception v0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->f()V

    :goto_d
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2

    :cond_18
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_19
    :try_start_f
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_d

    :catch_a
    move-exception v0

    :try_start_10
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_4

    :cond_1a
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_c

    :cond_1b
    :try_start_11
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_c

    :cond_1c
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/Exception;

    invoke-virtual {v1, v3}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_1d
    :try_start_12
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_3

    :catch_c
    move-exception v1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v3, v1}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_7

    :catch_e
    move-exception v0

    goto/16 :goto_7
.end method
