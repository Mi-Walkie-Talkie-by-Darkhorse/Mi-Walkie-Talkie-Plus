.class public Lcom/shanlitech/et/c/m;
.super Ljava/lang/Object;
.source "SDKHandler.java"


# static fields
.field private static final e:Lcom/shanlitech/et/c/m;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/c/m;

    invoke-direct {v0}, Lcom/shanlitech/et/c/m;-><init>()V

    sput-object v0, Lcom/shanlitech/et/c/m;->e:Lcom/shanlitech/et/c/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shanlitech/et/c/m;->a:Landroid/os/Handler;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shanlitech/et/c/m;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shanlitech/et/c/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shanlitech/et/c/m;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/c/m;->b()Lcom/shanlitech/et/c/m;

    move-result-object v0

    iget-object v0, v0, Lcom/shanlitech/et/c/m;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static b()Lcom/shanlitech/et/c/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/c/m;->e:Lcom/shanlitech/et/c/m;

    return-object v0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/c/m;->b()Lcom/shanlitech/et/c/m;

    move-result-object v0

    iget-object v0, v0, Lcom/shanlitech/et/c/m;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/c/m;->b()Lcom/shanlitech/et/c/m;

    move-result-object v0

    iget-object v0, v0, Lcom/shanlitech/et/c/m;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/c/m;->b()Lcom/shanlitech/et/c/m;

    move-result-object v0

    iget-object v0, v0, Lcom/shanlitech/et/c/m;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
