.class public final Lcom/tencent/bugly/mimsg/crashreport/crash/c;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field public static b:Z

.field public static c:I

.field public static d:Z

.field public static e:I

.field public static f:I

.field public static g:J

.field public static h:Ljava/lang/String;

.field public static i:Z

.field public static j:Ljava/lang/String;

.field public static k:I

.field public static l:Z

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field private static q:Lcom/tencent/bugly/mimsg/crashreport/crash/c;


# instance fields
.field public final o:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

.field private final p:Landroid/content/Context;

.field private final r:Lcom/tencent/bugly/mimsg/crashreport/crash/e;

.field private final s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

.field private t:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

.field private u:Lcom/tencent/bugly/mimsg/proguard/w;

.field private final v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

.field private w:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v1, 0x4e20

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput v3, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a:I

    sput-boolean v3, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->b:Z

    const/4 v0, 0x2

    sput v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->c:I

    sput-boolean v4, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->d:Z

    sput v1, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->e:I

    sput v1, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->f:I

    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->g:J

    sput-object v2, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->h:Ljava/lang/String;

    sput-boolean v3, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->i:Z

    sput-object v2, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->j:Ljava/lang/String;

    const/16 v0, 0x1388

    sput v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->k:I

    sput-boolean v4, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->l:Z

    sput-object v2, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->m:Ljava/lang/String;

    sput-object v2, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->n:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/mimsg/proguard/w;ZLcom/tencent/bugly/mimsg/BuglyStrategy$a;Lcom/tencent/bugly/mimsg/proguard/o;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput p1, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a:I

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->p:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->t:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    iput-object p3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->u:Lcom/tencent/bugly/mimsg/proguard/w;

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/u;->a()Lcom/tencent/bugly/mimsg/proguard/u;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v4

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    iget-object v5, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->t:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    move v1, p1

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/mimsg/proguard/u;Lcom/tencent/bugly/mimsg/proguard/p;Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;Lcom/tencent/bugly/mimsg/BuglyStrategy$a;Lcom/tencent/bugly/mimsg/proguard/o;)V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->o:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-static {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v3

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/crash/e;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->o:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    iget-object v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->t:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;-><init>(Landroid/content/Context;Lcom/tencent/bugly/mimsg/crashreport/crash/b;Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;Lcom/tencent/bugly/mimsg/crashreport/common/info/a;)V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->r:Lcom/tencent/bugly/mimsg/crashreport/crash/e;

    iget-object v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->o:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    iget-object v5, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->t:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/mimsg/crashreport/common/info/a;Lcom/tencent/bugly/mimsg/crashreport/crash/b;Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;Lcom/tencent/bugly/mimsg/proguard/w;ZLjava/lang/String;)Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->D:Lcom/tencent/bugly/mimsg/crashreport/a;

    new-instance v4, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

    iget-object v6, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->t:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    iget-object v9, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->o:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    move-object v5, v2

    move-object v7, v3

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;-><init>(Landroid/content/Context;Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;Lcom/tencent/bugly/mimsg/crashreport/common/info/a;Lcom/tencent/bugly/mimsg/proguard/w;Lcom/tencent/bugly/mimsg/crashreport/crash/b;)V

    iput-object v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;
    .locals 2

    const-class v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->q:Lcom/tencent/bugly/mimsg/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/crashreport/crash/c;)Lcom/tencent/bugly/mimsg/crashreport/crash/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->r:Lcom/tencent/bugly/mimsg/crashreport/crash/e;

    return-object v0
.end method

.method public static declared-synchronized a(ILandroid/content/Context;ZLcom/tencent/bugly/mimsg/BuglyStrategy$a;Lcom/tencent/bugly/mimsg/proguard/o;Ljava/lang/String;)V
    .locals 9

    const-class v8, Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->q:Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    const/16 v1, 0x3ec

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/mimsg/proguard/w;ZLcom/tencent/bugly/mimsg/BuglyStrategy$a;Lcom/tencent/bugly/mimsg/proguard/o;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->q:Lcom/tencent/bugly/mimsg/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/mimsg/crashreport/crash/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->p:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/crash/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/mimsg/crashreport/crash/c;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->r:Lcom/tencent/bugly/mimsg/crashreport/crash/e;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/crash/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/mimsg/crashreport/crash/c;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->o:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->d(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
    .locals 9

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->u:Lcom/tencent/bugly/mimsg/proguard/w;

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;-><init>(Lcom/tencent/bugly/mimsg/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V

    invoke-virtual {v8, v0}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->w:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/bugly/mimsg/proguard/p;->a(I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/proguard/r;

    iget-object v5, v0, Lcom/tencent/bugly/mimsg/proguard/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->w:Ljava/lang/Boolean;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Ljava/util/List;)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->w:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->r:Lcom/tencent/bugly/mimsg/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a()V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->r:Lcom/tencent/bugly/mimsg/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->b()V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->r:Lcom/tencent/bugly/mimsg/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a(Z)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a(Z)V

    return-void
.end method

.method public final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->s:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()V
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    :try_start_1
    const-string v0, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/z;->b(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->v:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/b;->a()Z

    move-result v0

    return v0
.end method
