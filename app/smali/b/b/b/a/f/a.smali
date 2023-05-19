.class public final Lb/b/b/a/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/b/a/f/a$a;
    }
.end annotation


# static fields
.field private static final b:Lb/b/b/a/f/a;

.field private static final c:I

.field static final d:I

.field static final e:I


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/b/b/a/f/a;

    invoke-direct {v0}, Lb/b/b/a/f/a;-><init>()V

    sput-object v0, Lb/b/b/a/f/a;->b:Lb/b/b/a/f/a;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lb/b/b/a/f/a;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lb/b/b/a/f/a;->d:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lb/b/b/a/f/a;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/b/a/f/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/b/a/f/a$a;-><init>(B)V

    iput-object v0, p0, Lb/b/b/a/f/a;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lb/b/b/a/f/a;->d:I

    sget v2, Lb/b/b/a/f/a;->e:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v7
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lb/b/b/a/f/a;->b:Lb/b/b/a/f/a;

    iget-object v0, v0, Lb/b/b/a/f/a;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
