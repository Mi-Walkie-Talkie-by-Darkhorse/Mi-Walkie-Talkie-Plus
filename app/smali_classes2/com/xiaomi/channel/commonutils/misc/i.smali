.class public Lcom/xiaomi/channel/commonutils/misc/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/misc/i$a;,
        Lcom/xiaomi/channel/commonutils/misc/i$b;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/channel/commonutils/misc/i$a;

.field private b:Landroid/os/Handler;

.field private volatile c:Z

.field private final d:Z

.field private e:I

.field private volatile f:Lcom/xiaomi/channel/commonutils/misc/i$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/channel/commonutils/misc/i;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/channel/commonutils/misc/i;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->b:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/xiaomi/channel/commonutils/misc/i;->c:Z

    iput v1, p0, Lcom/xiaomi/channel/commonutils/misc/i;->e:I

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/channel/commonutils/misc/j;-><init>(Lcom/xiaomi/channel/commonutils/misc/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->b:Landroid/os/Handler;

    iput-boolean p1, p0, Lcom/xiaomi/channel/commonutils/misc/i;->d:Z

    iput p2, p0, Lcom/xiaomi/channel/commonutils/misc/i;->e:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/misc/i;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->e:I

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/misc/i;Lcom/xiaomi/channel/commonutils/misc/i$b;)Lcom/xiaomi/channel/commonutils/misc/i$b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/i;->f:Lcom/xiaomi/channel/commonutils/misc/i$b;

    return-object p1
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->a:Lcom/xiaomi/channel/commonutils/misc/i$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/xiaomi/channel/commonutils/misc/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/xiaomi/channel/commonutils/misc/i;)Lcom/xiaomi/channel/commonutils/misc/i$b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->f:Lcom/xiaomi/channel/commonutils/misc/i$b;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/channel/commonutils/misc/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/channel/commonutils/misc/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/i;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaomi/channel/commonutils/misc/i$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->a:Lcom/xiaomi/channel/commonutils/misc/i$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/i$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/misc/i$a;-><init>(Lcom/xiaomi/channel/commonutils/misc/i;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->a:Lcom/xiaomi/channel/commonutils/misc/i$a;

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->a:Lcom/xiaomi/channel/commonutils/misc/i$a;

    iget-boolean v1, p0, Lcom/xiaomi/channel/commonutils/misc/i;->d:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/i$a;->setDaemon(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->c:Z

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->a:Lcom/xiaomi/channel/commonutils/misc/i$a;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/misc/i$a;->start()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->a:Lcom/xiaomi/channel/commonutils/misc/i$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/commonutils/misc/i$a;->a(Lcom/xiaomi/channel/commonutils/misc/i$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/channel/commonutils/misc/i$b;J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/i;->b:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/channel/commonutils/misc/k;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/channel/commonutils/misc/k;-><init>(Lcom/xiaomi/channel/commonutils/misc/i;Lcom/xiaomi/channel/commonutils/misc/i$b;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
