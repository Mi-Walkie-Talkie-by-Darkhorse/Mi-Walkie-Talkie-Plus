.class Lcom/amap/api/mapcore/util/k$j;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/api/mapcore/util/k$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/amap/api/mapcore/util/k$j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/k$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$j;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    const/high16 v2, 0x20000

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->b:Z

    if-nez v0, :cond_1

    iput v2, p0, Lcom/amap/api/mapcore/util/k$j;->c:I

    iget v0, p0, Lcom/amap/api/mapcore/util/k$j;->c:I

    if-lt v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/k$j;->b:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/mapcore/util/k$i;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/k$i;->a(Lcom/amap/api/mapcore/util/k$i;Z)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/k$j;->d:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$j;->c()V

    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/mapcore/util/k$j;->c:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z

    if-nez v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$j;->c()V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z
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

.method public b(Lcom/amap/api/mapcore/util/k$i;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-nez v1, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$j;->c()V

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k$i;->i()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/amap/api/mapcore/util/k$i;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
