.class final Lcom/amap/api/col/l3/t$i;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/amap/api/col/l3/t$h;

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/t$i;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->r:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/amap/api/col/l3/t$i;->l:I

    .line 5
    iput v1, p0, Lcom/amap/api/col/l3/t$i;->m:I

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->o:Z

    .line 7
    iput v0, p0, Lcom/amap/api/col/l3/t$i;->n:I

    .line 8
    iput-object p1, p0, Lcom/amap/api/col/l3/t$i;->t:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/t$i;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->b:Z

    return v0
.end method

.method private i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->i:Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$h;->d()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$h;->e()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->h:Z

    .line 4
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/t$j;->c(Lcom/amap/api/col/l3/t$i;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/t$h;

    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->t:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3/t$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->h:Z

    .line 3
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->i:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 5
    :goto_1
    :try_start_1
    iget-boolean v2, v1, Lcom/amap/api/col/l3/t$i;->a:Z

    if-eqz v2, :cond_0

    .line 6
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 7
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    monitor-enter v2

    .line 8
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->i()V

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->j()V

    .line 10
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 11
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->q:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto/16 :goto_6

    .line 13
    :cond_1
    iget-boolean v2, v1, Lcom/amap/api/col/l3/t$i;->d:Z

    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->c:Z

    if-eq v2, v0, :cond_2

    .line 14
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->d:Z

    .line 15
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 16
    :goto_2
    iget-boolean v2, v1, Lcom/amap/api/col/l3/t$i;->k:Z

    if-eqz v2, :cond_3

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->i()V

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->j()V

    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v1, Lcom/amap/api/col/l3/t$i;->k:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->i()V

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->j()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 22
    iget-boolean v2, v1, Lcom/amap/api/col/l3/t$i;->i:Z

    if-eqz v2, :cond_5

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->i()V

    :cond_5
    if-eqz v0, :cond_8

    .line 24
    iget-boolean v2, v1, Lcom/amap/api/col/l3/t$i;->h:Z

    if-eqz v2, :cond_8

    .line 25
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->t:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/t;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    .line 27
    :cond_6
    invoke-static {v2}, Lcom/amap/api/col/l3/t;->g(Lcom/amap/api/col/l3/t;)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_7

    .line 28
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/amap/api/col/l3/t$j;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 30
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->j()V

    :cond_8
    if-eqz v0, :cond_9

    .line 31
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$j;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, v1, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$h;->e()V

    .line 34
    :cond_9
    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->g:Z

    if-nez v0, :cond_b

    .line 35
    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->i:Z

    if-eqz v0, :cond_a

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->i()V

    :cond_a
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->g:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->f:Z

    .line 39
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 40
    :cond_b
    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->g:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->g:Z

    .line 42
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->p:Z

    .line 44
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v14, 0x0

    .line 45
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->l()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 46
    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->h:Z

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_4

    .line 47
    :cond_e
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/t$j;->b(Lcom/amap/api/col/l3/t$i;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 49
    :try_start_4
    iget-object v0, v1, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 50
    :try_start_5
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->h:Z

    .line 51
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v7, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 52
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/t$j;->c(Lcom/amap/api/col/l3/t$i;)V

    .line 54
    throw v0

    .line 55
    :cond_f
    :goto_4
    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->i:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->i:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 57
    :cond_10
    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->i:Z

    if-eqz v0, :cond_1f

    .line 58
    iget-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->r:Z

    if-eqz v0, :cond_11

    .line 59
    iget v0, v1, Lcom/amap/api/col/l3/t$i;->l:I

    .line 60
    iget v2, v1, Lcom/amap/api/col/l3/t$i;->m:I

    const/4 v8, 0x0

    .line 61
    iput-boolean v8, v1, Lcom/amap/api/col/l3/t$i;->r:Z

    move v11, v0

    move v12, v2

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    .line 62
    :goto_5
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->o:Z

    .line 63
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 64
    :goto_6
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v13, :cond_12

    .line 65
    :try_start_6
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_14

    .line 66
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/t$h;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 67
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v8, 0x1

    .line 68
    :try_start_7
    iput-boolean v8, v1, Lcom/amap/api/col/l3/t$i;->j:Z

    .line 69
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v8, 0x0

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0

    .line 71
    :cond_13
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v15, 0x1

    .line 72
    :try_start_9
    iput-boolean v15, v1, Lcom/amap/api/col/l3/t$i;->j:Z

    .line 73
    iput-boolean v15, v1, Lcom/amap/api/col/l3/t$i;->f:Z

    .line 74
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v2

    throw v0

    :cond_14
    :goto_7
    if-eqz v9, :cond_15

    .line 76
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/t$h;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    .line 77
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/amap/api/col/l3/t$j;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v9, 0x0

    :cond_15
    if-eqz v7, :cond_17

    .line 78
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/t;

    if-eqz v2, :cond_16

    .line 79
    invoke-static {v2}, Lcom/amap/api/col/l3/t;->h(Lcom/amap/api/col/l3/t;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    iget-object v7, v1, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    iget-object v7, v7, Lcom/amap/api/col/l3/t$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v6, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    const/4 v7, 0x0

    :cond_17
    if-eqz v10, :cond_19

    .line 80
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/t;

    if-eqz v2, :cond_18

    .line 81
    invoke-static {v2}, Lcom/amap/api/col/l3/t;->h(Lcom/amap/api/col/l3/t;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    const/4 v10, 0x0

    .line 82
    :cond_19
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/t;

    if-eqz v2, :cond_1a

    .line 83
    invoke-static {v2}, Lcom/amap/api/col/l3/t;->h(Lcom/amap/api/col/l3/t;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 84
    :cond_1a
    iget-object v2, v1, Lcom/amap/api/col/l3/t$i;->s:Lcom/amap/api/col/l3/t$h;

    iget-object v15, v2, Lcom/amap/api/col/l3/t$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, v2, Lcom/amap/api/col/l3/t$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    move/from16 v16, v3

    iget-object v3, v2, Lcom/amap/api/col/l3/t$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v15, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    const/16 v3, 0x3000

    if-nez v0, :cond_1b

    iget-object v0, v2, Lcom/amap/api/col/l3/t$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    goto :goto_8

    :cond_1b
    const/16 v0, 0x3000

    :goto_8
    if-eq v0, v3, :cond_1d

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_1c

    const-string v2, "eglSwapBuffers"

    .line 85
    invoke-static {v2, v0}, Lcom/amap/api/col/l3/t$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v0, 0x1

    .line 87
    :try_start_b
    iput-boolean v0, v1, Lcom/amap/api/col/l3/t$i;->f:Z

    .line 88
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 89
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v2

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1c
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_a

    :cond_1d
    const/4 v0, 0x1

    :goto_9
    move/from16 v3, v16

    :goto_a
    if-eqz v14, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 90
    :cond_1f
    :try_start_d
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    .line 91
    :try_start_e
    monitor-exit v15

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 92
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v2

    monitor-enter v2

    .line 93
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->i()V

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/t$i;->j()V

    .line 95
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 96
    throw v0

    :catchall_6
    move-exception v0

    .line 97
    monitor-exit v2

    throw v0
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/l3/t$i;->l:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/l3/t$i;->m:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->o:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3/t$i;->n:I

    if-ne v0, v1, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 7
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    .line 8
    :try_start_0
    iget v1, p0, Lcom/amap/api/col/l3/t$i;->n:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    throw v1
.end method

.method public final a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iput p1, p0, Lcom/amap/api/col/l3/t$i;->n:I

    .line 4
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    .line 11
    :try_start_0
    iput p1, p0, Lcom/amap/api/col/l3/t$i;->l:I

    .line 12
    iput p2, p0, Lcom/amap/api/col/l3/t$i;->m:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/amap/api/col/l3/t$i;->r:Z

    .line 14
    iput-boolean p1, p0, Lcom/amap/api/col/l3/t$i;->o:Z

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/amap/api/col/l3/t$i;->p:Z

    .line 16
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 17
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->b:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->p:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->i:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3/t$i;->l()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 18
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 20
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 21
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/t$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->o:Z

    .line 3
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->e:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->j:Z

    .line 4
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->e:Z

    .line 3
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->c:Z

    .line 3
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->c:Z

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/amap/api/col/l3/t$i;->o:Z

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->p:Z

    .line 5
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->a:Z

    .line 3
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/t$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/t$i;->k:Z

    .line 2
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/t$i;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catch_0
    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/t$j;->a(Lcom/amap/api/col/l3/t$i;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/col/l3/t;->d()Lcom/amap/api/col/l3/t$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3/t$j;->a(Lcom/amap/api/col/l3/t$i;)V

    .line 4
    throw v0
.end method
