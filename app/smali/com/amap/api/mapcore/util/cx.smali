.class public Lcom/amap/api/mapcore/util/cx;
.super Ljava/lang/Object;
.source "GLShaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/cx$a;,
        Lcom/amap/api/mapcore/util/cx$c;,
        Lcom/amap/api/mapcore/util/cx$e;,
        Lcom/amap/api/mapcore/util/cx$b;,
        Lcom/amap/api/mapcore/util/cx$d;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/cx$c;

.field private b:Lcom/amap/api/mapcore/util/cx$e;

.field private c:Lcom/amap/api/mapcore/util/cx$b;

.field private d:Lcom/amap/api/mapcore/util/cx$d;

.field private e:Lcom/amap/api/mapcore/util/cx$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized b()Lcom/amap/api/mapcore/util/cw;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->a:Lcom/amap/api/mapcore/util/cx$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/cx$c;

    const-string v1, "texture_normal.glsl"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/cx$c;-><init>(Lcom/amap/api/mapcore/util/cx;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->a:Lcom/amap/api/mapcore/util/cx$c;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->a:Lcom/amap/api/mapcore/util/cx$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Lcom/amap/api/mapcore/util/cw;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->b:Lcom/amap/api/mapcore/util/cx$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/cx$e;

    const-string v1, "texture.glsl"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/cx$e;-><init>(Lcom/amap/api/mapcore/util/cx;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->b:Lcom/amap/api/mapcore/util/cx$e;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->b:Lcom/amap/api/mapcore/util/cx$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/amap/api/mapcore/util/cw;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->c:Lcom/amap/api/mapcore/util/cx$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/cx$b;

    const-string v1, "texture_layer.glsl"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/cx$b;-><init>(Lcom/amap/api/mapcore/util/cx;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->c:Lcom/amap/api/mapcore/util/cx$b;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->c:Lcom/amap/api/mapcore/util/cx$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Lcom/amap/api/mapcore/util/cw;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->d:Lcom/amap/api/mapcore/util/cx$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/cx$d;

    const-string v1, "point.glsl"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/cx$d;-><init>(Lcom/amap/api/mapcore/util/cx;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->d:Lcom/amap/api/mapcore/util/cx$d;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->d:Lcom/amap/api/mapcore/util/cx$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Lcom/amap/api/mapcore/util/cx$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->e:Lcom/amap/api/mapcore/util/cx$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/cx$a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/cx$a;-><init>(Lcom/amap/api/mapcore/util/cx;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->e:Lcom/amap/api/mapcore/util/cx$a;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->e:Lcom/amap/api/mapcore/util/cx$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/amap/api/mapcore/util/cw;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cx;->c()Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cx;->b()Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cx;->d()Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cx;->e()Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cx;->f()Lcom/amap/api/mapcore/util/cx$a;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->a:Lcom/amap/api/mapcore/util/cx$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->a:Lcom/amap/api/mapcore/util/cx$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->a:Lcom/amap/api/mapcore/util/cx$c;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->b:Lcom/amap/api/mapcore/util/cx$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->b:Lcom/amap/api/mapcore/util/cx$e;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->b:Lcom/amap/api/mapcore/util/cx$e;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->c:Lcom/amap/api/mapcore/util/cx$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->c:Lcom/amap/api/mapcore/util/cx$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->c:Lcom/amap/api/mapcore/util/cx$b;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->d:Lcom/amap/api/mapcore/util/cx$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cx;->d:Lcom/amap/api/mapcore/util/cx$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$d;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cx;->d:Lcom/amap/api/mapcore/util/cx$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
