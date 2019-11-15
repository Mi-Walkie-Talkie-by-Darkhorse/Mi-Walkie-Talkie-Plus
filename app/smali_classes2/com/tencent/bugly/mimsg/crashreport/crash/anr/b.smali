.class public final Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:J

.field private final c:Landroid/content/Context;

.field private final d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

.field private final e:Lcom/tencent/bugly/mimsg/proguard/w;

.field private final f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

.field private i:Landroid/os/FileObserver;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;Lcom/tencent/bugly/mimsg/crashreport/common/info/a;Lcom/tencent/bugly/mimsg/proguard/w;Lcom/tencent/bugly/mimsg/crashreport/crash/b;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->j:Z

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->c:Landroid/content/Context;

    const-string v0, "bugly"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iput-object p4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->e:Lcom/tencent/bugly/mimsg/proguard/w;

    iput-object p2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    iput-object p5, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    return-void
.end method

.method private a(Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;)Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;
    .locals 4

    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;

    invoke-direct {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->g()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->e()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->i()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->D:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->p()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->E:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->o()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->F:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->q()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->G:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->c:Landroid/content/Context;

    sget v2, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->e:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->b:I

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    const-string v0, "ANR_EXCEPTION"

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    iget-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v2, "BUGLY_CR_01"

    iget-object v3, p1, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    iget-object v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-lez v0, :cond_3

    iget-object v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iget-wide v2, p1, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->c:J

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    iget-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/z;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->b:Ljava/util/Map;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    const-string v0, "main(1)"

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->v()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-wide v2, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a:J

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->L:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->M:Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F()I

    move-result v0

    iput v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->O:I

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G()I

    move-result v0

    iput v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->P:I

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->c(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/y;->a()[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    const-string v0, "GET_FAIL"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p2, p0, v3}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper;->readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, v6, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, v6, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v1, "not found trace dump for %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v1, v4

    :goto_0
    return v1

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    const-string v1, "backup file create fail %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_5
    const-string v2, "backup file create error! %s  %s"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    aput-object p1, v5, v3

    invoke-static {v2, v5}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :try_start_1
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, v6, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    const-string v2, "main"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_7

    array-length v2, v1

    if-lt v2, v11, :cond_7

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v7, 0x1

    aget-object v7, v1, v7

    const/4 v8, 0x2

    aget-object v1, v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\"main\" tid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " :\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    :cond_7
    iget-object v1, v6, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "main"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v11, :cond_8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v9, v1, v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v2, v5

    :goto_2
    :try_start_3
    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_9
    const-string v3, "dump trace fail %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_a

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    :goto_3
    move v1, v4

    goto/16 :goto_0

    :cond_b
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_c
    :goto_4
    move v1, v3

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v5, v2

    :goto_5
    if-eqz v5, :cond_d

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_d
    :goto_6
    throw v1

    :catch_4
    move-exception v2

    invoke-static {v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v5, v2

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "start when started!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b$1;

    const-string v1, "/data/anr/"

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b$1;-><init>(Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    const-string v0, "start anr monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->e:Lcom/tencent/bugly/mimsg/proguard/w;

    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b$2;-><init>(Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    const-string v1, "start anr monitor failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->j:Z

    if-eq v0, p1, :cond_0

    const-string v0, "user change anr %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean p1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "close when closed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    const-string v0, "close anr monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "stop anr monitor failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-boolean v2, p1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->e()Z

    move-result v3

    if-eq v2, v3, :cond_2

    const-string v2, "server anr changed to %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v2, p1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->e()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v1, "anr changed to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "trace started return "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "read trace first dump for create time!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->c:J

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_17

    const-string v0, "trace dump fail could not get time!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v4, v0

    :goto_1
    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->b:J

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const-string v0, "should not process ANR too Fre in %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->b:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->f:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(IZ)Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_4
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    const-string v0, "can\'t get all thread skip this anr"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    const-string v0, "get all thread stack fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    :cond_4
    :try_start_6
    iget-object v7, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->c:Landroid/content/Context;

    const-wide/16 v0, 0x2710

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_2
    const-string v0, "to find!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "activity"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-wide/16 v8, 0x1f4

    div-long v8, v2, v8

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const-string v1, "waiting!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v7, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_5

    const-string v0, "found!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    if-nez v1, :cond_8

    const-string v0, "proc state is unvisiable!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    :cond_6
    const-wide/16 v0, 0x2710

    move-wide v2, v0

    goto :goto_2

    :cond_7
    const-wide/16 v10, 0x1f4

    :try_start_7
    invoke-static {v10, v11}, Lcom/tencent/bugly/mimsg/proguard/z;->b(J)V

    add-int/lit8 v1, v2, 0x1

    int-to-long v2, v2

    cmp-long v2, v2, v8

    if-ltz v2, :cond_16

    const-string v0, "end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    iget v0, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v0, v2, :cond_9

    const-string v0, "not mind proc!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v1, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    :cond_9
    :try_start_8
    const-string v0, "found visiable anr , start to process!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "waiting for remote sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_a
    iget-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v3

    if-nez v3, :cond_b

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Lcom/tencent/bugly/mimsg/proguard/z;->b(J)V

    add-int/lit16 v0, v0, 0x1f4

    const/16 v3, 0xbb8

    if-lt v0, v3, :cond_a

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "bugly/bugly_trace_"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ".txt"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;

    invoke-direct {v7}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;-><init>()V

    iput-wide v4, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->c:J

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iget-object v0, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iget-object v0, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->f:Ljava/lang/String;

    iget-object v0, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->e:Ljava/lang/String;

    iput-object v6, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->b:Ljava/util/Map;

    if-eqz v6, :cond_e

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "main("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->g:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_d
    const-string v1, "handle anr error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    :cond_e
    :try_start_a
    const-string v1, "anr tm:%d\ntr:%s\nproc:%s\nsMsg:%s\n lMsg:%s\n threads:%d"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v4, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->f:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->e:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x5

    iget-object v0, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->b:Ljava/util/Map;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "crash report sync remote fail, will not upload to Bugly , print local for helpful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "ANR"

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->e:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_7
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    :cond_f
    :try_start_b
    iget-object v0, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    if-nez v0, :cond_11

    const-string v0, "ANR Report is closed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw v0

    :cond_11
    :try_start_c
    const-string v0, "found visiable anr , start to upload!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v7}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;)Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;

    move-result-object v5

    if-nez v5, :cond_12

    const-string v0, "pack anr fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    iget-wide v0, v5, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_15

    const-string v0, "backup anr record success!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_8
    if-eqz p1, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iget-object v1, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "backup trace success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_13
    const-string v0, "ANR"

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/a;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v2, v3, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;JZ)V

    :cond_14
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    goto/16 :goto_7

    :cond_15
    const-string v0, "backup anr record fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_8

    :cond_16
    move v2, v1

    goto/16 :goto_3

    :cond_17
    move-wide v4, v0

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->c(Z)V

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->f()Z

    move-result v0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v0, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->e()Z

    move-result v3

    if-eq v0, v3, :cond_1

    const-string v3, "anr changed to %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->b(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 15

    const/4 v14, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->b()J

    move-result-wide v0

    sget-wide v4, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->g:J

    sub-long v4, v0, v4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "bugly_trace_"

    const-string v7, ".txt"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    array-length v9, v3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v9, :cond_4

    aget-object v10, v3, v1

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    :try_start_0
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_3

    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    cmp-long v11, v12, v4

    if-ltz v11, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v12

    const-string v12, "tomb format error delete %s"

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v11, v13, v2

    invoke-static {v12, v13}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "clean tombs %d"

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
