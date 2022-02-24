.class public abstract Lcom/amap/api/col/l3/eq;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/eq$c;,
        Lcom/amap/api/col/l3/eq$b;,
        Lcom/amap/api/col/l3/eq$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3/en;

.field private b:Lcom/amap/api/col/l3/en$a;

.field protected c:Z

.field protected d:Landroid/content/res/Resources;

.field private e:Z

.field private final f:Ljava/lang/Object;

.field private g:Lcom/amap/api/col/l3/eq$c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/eq;->e:Z

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/eq;->c:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/eq;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/eq;->g:Lcom/amap/api/col/l3/eq$c;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/eq;->d:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/eq;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/eq;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Lcom/amap/api/col/l3/de$a;)V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/amap/api/col/l3/eq;->c(Lcom/amap/api/col/l3/de$a;)Lcom/amap/api/col/l3/eq$a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ds;->d()Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3/eq;)Lcom/amap/api/col/l3/en;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/de$a;)Lcom/amap/api/col/l3/eq$a;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/amap/api/col/l3/eq;->c(Lcom/amap/api/col/l3/de$a;)Lcom/amap/api/col/l3/eq$a;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/amap/api/col/l3/de$a;)Lcom/amap/api/col/l3/eq$a;
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/amap/api/col/l3/de$a;->j:Lcom/amap/api/col/l3/eq$a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/eq;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/eq;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/eq;)Lcom/amap/api/col/l3/eq$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/eq;->g:Lcom/amap/api/col/l3/eq$c;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method protected final a()Lcom/amap/api/col/l3/en;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    return-object v0
.end method

.method public final a(Lcom/amap/api/col/l3/en$a;)V
    .locals 3

    .line 19
    iput-object p1, p0, Lcom/amap/api/col/l3/eq;->b:Lcom/amap/api/col/l3/en$a;

    .line 20
    invoke-static {p1}, Lcom/amap/api/col/l3/en;->a(Lcom/amap/api/col/l3/en$a;)Lcom/amap/api/col/l3/en;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    .line 21
    new-instance p1, Lcom/amap/api/col/l3/eq$b;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/eq$b;-><init>(Lcom/amap/api/col/l3/eq;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/ds;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/eq$c;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amap/api/col/l3/eq;->g:Lcom/amap/api/col/l3/eq$c;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->b:Lcom/amap/api/col/l3/en$a;

    sget-object v1, Lcom/amap/api/col/l3/y;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/amap/api/col/l3/en$a;->j:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/amap/api/col/l3/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/col/l3/en$a;->c:Ljava/io/File;

    .line 32
    new-instance p1, Lcom/amap/api/col/l3/eq$b;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/eq$b;-><init>(Lcom/amap/api/col/l3/eq;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/ds;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3/eq;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    .line 27
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3/eq;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 28
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(ZLcom/amap/api/col/l3/de$a;)V
    .locals 3

    const-string v0, "-"

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    if-eqz v2, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget v2, p2, Lcom/amap/api/col/l3/de$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v2, p2, Lcom/amap/api/col/l3/de$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v0, p2, Lcom/amap/api/col/l3/de$a;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/en;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p2, v1}, Lcom/amap/api/col/l3/de$a;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 13
    :cond_2
    new-instance v0, Lcom/amap/api/col/l3/eq$a;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/col/l3/eq$a;-><init>(Lcom/amap/api/col/l3/eq;Lcom/amap/api/col/l3/de$a;)V

    .line 14
    iput-object v0, p2, Lcom/amap/api/col/l3/de$a;->j:Lcom/amap/api/col/l3/eq$a;

    .line 15
    sget-object p2, Lcom/amap/api/col/l3/ds;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    .line 17
    invoke-virtual {v0, p2, v1}, Lcom/amap/api/col/l3/ds;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/col/l3/en;->a()V

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/col/l3/en;->b()V

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/en;->c()V

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/en;->a(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/en;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/eq;->a:Lcom/amap/api/col/l3/en;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/en;->a()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/eq$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/eq$b;-><init>(Lcom/amap/api/col/l3/eq;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ds;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;

    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/eq$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/eq$b;-><init>(Lcom/amap/api/col/l3/eq;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ds;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;

    return-void
.end method
