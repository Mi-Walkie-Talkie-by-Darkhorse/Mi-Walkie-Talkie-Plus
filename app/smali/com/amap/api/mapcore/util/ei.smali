.class public abstract Lcom/amap/api/mapcore/util/ei;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ei$c;,
        Lcom/amap/api/mapcore/util/ei$b;,
        Lcom/amap/api/mapcore/util/ei$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/ef;

.field private b:Lcom/amap/api/mapcore/util/ef$a;

.field protected c:Z

.field protected d:Landroid/content/res/Resources;

.field private e:Z

.field private final f:Ljava/lang/Object;

.field private g:Lcom/amap/api/mapcore/util/ei$c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ei;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ei;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ei;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ei;->g:Lcom/amap/api/mapcore/util/ei$c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ei;->d:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ei;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Lcom/amap/api/mapcore/util/cv$a;)V
    .locals 2

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ei;->c(Lcom/amap/api/mapcore/util/cv$a;)Lcom/amap/api/mapcore/util/ei$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ei$a;->a(Z)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/ei;)Lcom/amap/api/mapcore/util/ef;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/cv$a;)Lcom/amap/api/mapcore/util/ei$a;
    .locals 1

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ei;->c(Lcom/amap/api/mapcore/util/cv$a;)Lcom/amap/api/mapcore/util/ei$a;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/amap/api/mapcore/util/cv$a;)Lcom/amap/api/mapcore/util/ei$a;
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv$a;->j:Lcom/amap/api/mapcore/util/ei$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/ei;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ei;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/ei;)Lcom/amap/api/mapcore/util/ei$c;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->g:Lcom/amap/api/mapcore/util/ei$c;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method protected a()Lcom/amap/api/mapcore/util/ef;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore/util/ef$a;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ei;->b:Lcom/amap/api/mapcore/util/ef$a;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->b:Lcom/amap/api/mapcore/util/ef$a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ef;->a(Lcom/amap/api/mapcore/util/ef$a;)Lcom/amap/api/mapcore/util/ef;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    new-instance v0, Lcom/amap/api/mapcore/util/ei$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ei$b;-><init>(Lcom/amap/api/mapcore/util/ei;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ei$b;->c([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dj;

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/ei$c;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ei;->g:Lcom/amap/api/mapcore/util/ei$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->b:Lcom/amap/api/mapcore/util/ef$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ef$a;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/mapcore/util/ei$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ei$b;-><init>(Lcom/amap/api/mapcore/util/ei;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ei$b;->c([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dj;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ei;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ei;->c:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ei;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(ZLcom/amap/api/mapcore/util/cv$a;)V
    .locals 5

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/amap/api/mapcore/util/cv$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/amap/api/mapcore/util/cv$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/amap/api/mapcore/util/cv$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ef;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore/util/cv$a;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/ei$a;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore/util/ei$a;-><init>(Lcom/amap/api/mapcore/util/ei;Lcom/amap/api/mapcore/util/cv$a;)V

    iput-object v0, p2, Lcom/amap/api/mapcore/util/cv$a;->j:Lcom/amap/api/mapcore/util/ei$a;

    sget-object v1, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/ei$a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dj;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ef;->a()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ef;->b()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ef;->c()V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ef;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ef;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ef;->a()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/amap/api/mapcore/util/ei$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ei$b;-><init>(Lcom/amap/api/mapcore/util/ei;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ei$b;->c([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dj;

    return-void
.end method

.method public h()V
    .locals 4

    new-instance v0, Lcom/amap/api/mapcore/util/ei$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ei$b;-><init>(Lcom/amap/api/mapcore/util/ei;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ei$b;->c([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dj;

    return-void
.end method
