.class final Lcom/amap/api/col/l3/t$j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "GLThreadManager"


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/api/col/l3/t$i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3/t$j;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$j;->b:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/amap/api/col/l3/t$j;->c:I

    const/4 v1, 0x1

    if-lt v0, v0, :cond_0

    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$j;->e:Z

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$j;->b:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/amap/api/col/l3/t$i;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/l3/t$i;->a(Lcom/amap/api/col/l3/t$i;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3/t$j;->g:Lcom/amap/api/col/l3/t$i;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3/t$j;->g:Lcom/amap/api/col/l3/t$i;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$j;->d:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/l3/t$j;->c()V

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/amap/api/col/l3/t$j;->c:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3/t$j;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    iget-boolean p1, p0, Lcom/amap/api/col/l3/t$j;->e:Z

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/col/l3/t$j;->f:Z

    iput-boolean v3, p0, Lcom/amap/api/col/l3/t$j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$j;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/t$j;->c()V

    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$j;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

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

.method public final b(Lcom/amap/api/col/l3/t$i;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/t$j;->g:Lcom/amap/api/col/l3/t$i;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/t$j;->c()V

    iget-boolean p1, p0, Lcom/amap/api/col/l3/t$j;->e:Z

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/t$j;->g:Lcom/amap/api/col/l3/t$i;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/col/l3/t$i;->h()V

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/amap/api/col/l3/t$j;->g:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method

.method public final c(Lcom/amap/api/col/l3/t$i;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/t$j;->g:Lcom/amap/api/col/l3/t$i;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3/t$j;->g:Lcom/amap/api/col/l3/t$i;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
