.class public final Lcom/tencent/bugly/mimsg/proguard/y;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/mimsg/proguard/y$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:I

.field private static d:Ljava/lang/StringBuilder;

.field private static e:Ljava/lang/StringBuilder;

.field private static f:Z

.field private static g:Lcom/tencent/bugly/mimsg/proguard/y$a;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Landroid/content/Context;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:I

.field private static final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->b:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/mimsg/proguard/y;->a:Z

    const/16 v0, 0x1400

    sput v0, Lcom/tencent/bugly/mimsg/proguard/y;->c:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->n:Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->b:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/proguard/y$a;)Lcom/tencent/bugly/mimsg/proguard/y$a;
    .locals 0

    sput-object p0, Lcom/tencent/bugly/mimsg/proguard/y;->g:Lcom/tencent/bugly/mimsg/proguard/y$a;

    return-object p0
.end method

.method public static a(I)V
    .locals 2

    const/16 v0, 0x2800

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/y;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/tencent/bugly/mimsg/proguard/y;->c:I

    if-gez p0, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/mimsg/proguard/y;->c:I

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    if-le p0, v0, :cond_0

    const/16 v0, 0x2800

    sput v0, Lcom/tencent/bugly/mimsg/proguard/y;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/tencent/bugly/mimsg/proguard/y;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/mimsg/proguard/y;->l:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/tencent/bugly/mimsg/proguard/y;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->e:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->d:Ljava/lang/StringBuilder;

    sput-object p0, Lcom/tencent/bugly/mimsg/proguard/y;->j:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    sput-object v2, Lcom/tencent/bugly/mimsg/proguard/y;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "mimsg"

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/bugly/mimsg/proguard/y;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/buglylog_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/mimsg/proguard/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/mimsg/proguard/y;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->k:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/tencent/bugly/mimsg/proguard/y;->m:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/tencent/bugly/mimsg/proguard/y;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/tencent/bugly/mimsg/proguard/y;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/mimsg/proguard/y;->l:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/bugly/mimsg/proguard/y;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/mimsg/proguard/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x7800

    if-le v0, v4, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, -0x7800

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v4, Lcom/tencent/bugly/mimsg/proguard/y;->b:Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/tencent/bugly/mimsg/proguard/y;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v4, Lcom/tencent/bugly/mimsg/proguard/y;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/tencent/bugly/mimsg/proguard/y;->m:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0001\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/mimsg/proguard/y;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v3, Lcom/tencent/bugly/mimsg/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/bugly/mimsg/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sget v4, Lcom/tencent/bugly/mimsg/proguard/y;->c:I

    if-gt v3, v4, :cond_4

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    goto :goto_1

    :cond_4
    :try_start_5
    sget-boolean v3, Lcom/tencent/bugly/mimsg/proguard/y;->f:Z

    if-eqz v3, :cond_5

    monitor-exit v2

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/bugly/mimsg/proguard/y;->f:Z

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v3

    new-instance v4, Lcom/tencent/bugly/mimsg/proguard/y$1;

    invoke-direct {v4, v0}, Lcom/tencent/bugly/mimsg/proguard/y$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/mimsg/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/mimsg/proguard/y;->f:Z

    return v0
.end method

.method public static a()[B
    .locals 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/tencent/bugly/mimsg/proguard/y;->a:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/tencent/bugly/mimsg/proguard/y;->n:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/y;->g:Lcom/tencent/bugly/mimsg/proguard/y$a;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/y;->g:Lcom/tencent/bugly/mimsg/proguard/y$a;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/y$a;->d(Lcom/tencent/bugly/mimsg/proguard/y$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/y;->g:Lcom/tencent/bugly/mimsg/proguard/y$a;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/y$a;->a(Lcom/tencent/bugly/mimsg/proguard/y$a;)Ljava/io/File;

    move-result-object v1

    :goto_1
    sget-object v3, Lcom/tencent/bugly/mimsg/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object v3, Lcom/tencent/bugly/mimsg/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BuglyLog.txt"

    invoke-static {v1, v3, v4}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    monitor-exit v2

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->n:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->D:Lcom/tencent/bugly/mimsg/crashreport/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->D:Lcom/tencent/bugly/mimsg/crashreport/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/bugly/mimsg/crashreport/a;->appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Lcom/tencent/bugly/mimsg/proguard/y$a;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->g:Lcom/tencent/bugly/mimsg/proguard/y$a;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/StringBuilder;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/y;->e:Ljava/lang/StringBuilder;

    return-object v0
.end method
