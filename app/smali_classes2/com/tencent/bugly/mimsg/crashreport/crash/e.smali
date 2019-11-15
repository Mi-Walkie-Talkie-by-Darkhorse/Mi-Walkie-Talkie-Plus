.class public final Lcom/tencent/bugly/mimsg/crashreport/crash/e;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static h:Ljava/lang/String;

.field private static final i:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

.field private c:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

.field private d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private g:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/mimsg/crashreport/crash/b;Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;Lcom/tencent/bugly/mimsg/crashreport/common/info/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->g:Z

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    iput-object p3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->c:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    iput-object p4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    return-void
.end method

.method private static a(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    if-lez p1, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\n[Stack over limit size :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , has been cutted !]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "gen stack error %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uncaughtException"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/Thread;)Z
    .locals 3

    sget-object v1, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->h:Ljava/lang/String;

    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;
    .locals 8

    if-nez p2, :cond_0

    const-string v0, "We can do nothing with a null throwable."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    const-string v0, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    move-object v4, v0

    :goto_1
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    const-string v0, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;

    invoke-direct {v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->g()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->e()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->i()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->D:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->p()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->E:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->o()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->F:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->q()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->G:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a:Landroid/content/Context;

    sget v1, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->e:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/y;->a()[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    const-string v1, "user log size:%d"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->b:I

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x3e8

    invoke-static {p2, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    const-string v3, "stack frame :%d, has cause %b"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v3, v6}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v3, p2

    :goto_5
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_5

    :cond_4
    const-string v0, ""

    move-object v4, v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    array-length v0, v0

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x2

    goto/16 :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_c

    if-eq v3, p2, :cond_c

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v4, :cond_9

    const-string v4, ""

    iput-object v4, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_a

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n......"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCaused by:\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->f:I

    invoke-static {v3, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    iget-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/z;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    :try_start_0
    sget v1, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->f:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/tencent/bugly/mimsg/proguard/z;->a(IZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iget-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v3, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->v()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-wide v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a:J

    iput-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->L:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a()Z

    move-result v0

    iput-boolean v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->M:Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F()I

    move-result v0

    iput v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->O:I

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G()I

    move-result v0

    iput v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->P:I

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    if-eqz p3, :cond_e

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->c(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    :cond_b
    :goto_8
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    iput-object v5, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    :cond_d
    iput-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    sget v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->f:I

    invoke-static {p2, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    goto/16 :goto_6

    :catch_0
    move-exception v0

    const-string v1, "handle crash error %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    move v1, v0

    :goto_9
    if-eqz p5, :cond_11

    array-length v0, p5

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    if-eqz v1, :cond_f

    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    iget-object v1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v3, "UserData"

    invoke-interface {v1, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v0, :cond_b

    iput-object p5, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->S:[B

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    move v1, v0

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3e8

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n[Message over limit size:1000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", has been cutted!]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    const/16 v1, 0xa

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->j:I

    if-lt v0, v1, :cond_1

    const-string v0, "java crash handler over %d, no need set."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->g:Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.internal.os.RuntimeInit$UncaughtHandler"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "backup system java handler: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->j:I

    const-string v0, "registered java monitor: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string v1, "backup java handler: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    iget-boolean v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->g:Z

    if-eq v0, v1, :cond_0

    const-string v0, "java changed to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_3

    const-string v0, "Java Crash Happen cause by %s(%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "this class has handled this exception"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    const-string v0, "call system handler"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->g:Z

    if-nez v0, :cond_6

    const-string v0, "Java crash handler is disable. Just return."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_3
    const-string v0, "Java Catch Happen"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5

    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->c:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "waiting for remote sync"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    :cond_7
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->c:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_8

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/z;->b(J)V

    add-int/lit16 v0, v0, 0x1f4

    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_7

    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->c:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "no remote but still store!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->c:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->c:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_a

    const-string v0, "JAVA_CRASH"

    :goto_2
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    :try_start_2
    const-string v0, "JAVA_CATCH"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_c

    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;

    move-result-object v5

    if-nez v5, :cond_10

    const-string v0, "pkg crash datas fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_f

    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_f
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    if-eqz p3, :cond_12

    :try_start_4
    const-string v0, "JAVA_CRASH"

    :goto_3
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->d:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v5, v2, v3, p3}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;JZ)V

    :cond_11
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    :try_start_5
    const-string v0, "JAVA_CATCH"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_13
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_14

    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_15
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_17

    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz p3, :cond_18

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "sys default last handle start!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v1, "sys default last handle end!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_18
    :goto_4
    throw v0

    :cond_19
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1a

    const-string v1, "system handle start!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v1, "system handle end!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1a
    const-string v1, "crashreport last handle start!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "current process die"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    const-string v1, "crashreport last handle end!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->g:Z

    const-string v0, "close java monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bugly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Java monitor to unregister: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->j:I
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

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    sget-object v6, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->i:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
