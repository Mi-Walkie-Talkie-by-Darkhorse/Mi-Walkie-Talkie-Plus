.class public final Lcom/amap/api/col/l3/dg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/dg$a;,
        Lcom/amap/api/col/l3/dg$c;,
        Lcom/amap/api/col/l3/dg$e;,
        Lcom/amap/api/col/l3/dg$b;,
        Lcom/amap/api/col/l3/dg$d;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3/dg$c;

.field private b:Lcom/amap/api/col/l3/dg$e;

.field private c:Lcom/amap/api/col/l3/dg$b;

.field private d:Lcom/amap/api/col/l3/dg$d;

.field private e:Lcom/amap/api/col/l3/dg$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized b()Lcom/amap/api/col/l3/df;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->a:Lcom/amap/api/col/l3/dg$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/dg$c;

    const-string v1, "texture_normal.glsl"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/dg$c;-><init>(Lcom/amap/api/col/l3/dg;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dg;->a:Lcom/amap/api/col/l3/dg$c;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->a:Lcom/amap/api/col/l3/dg$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Lcom/amap/api/col/l3/df;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->b:Lcom/amap/api/col/l3/dg$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/dg$e;

    const-string v1, "texture.glsl"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/dg$e;-><init>(Lcom/amap/api/col/l3/dg;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dg;->b:Lcom/amap/api/col/l3/dg$e;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->b:Lcom/amap/api/col/l3/dg$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/amap/api/col/l3/df;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->c:Lcom/amap/api/col/l3/dg$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/dg$b;

    const-string v1, "texture_layer.glsl"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/dg$b;-><init>(Lcom/amap/api/col/l3/dg;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dg;->c:Lcom/amap/api/col/l3/dg$b;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->c:Lcom/amap/api/col/l3/dg$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Lcom/amap/api/col/l3/df;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->d:Lcom/amap/api/col/l3/dg$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/dg$d;

    const-string v1, "point.glsl"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/dg$d;-><init>(Lcom/amap/api/col/l3/dg;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dg;->d:Lcom/amap/api/col/l3/dg$d;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->d:Lcom/amap/api/col/l3/dg$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Lcom/amap/api/col/l3/dg$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->e:Lcom/amap/api/col/l3/dg$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/dg$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/dg$a;-><init>(Lcom/amap/api/col/l3/dg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dg;->e:Lcom/amap/api/col/l3/dg$a;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->e:Lcom/amap/api/col/l3/dg$a;
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
.method public final a(I)Lcom/amap/api/col/l3/df;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/dg;->f()Lcom/amap/api/col/l3/dg$a;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/dg;->e()Lcom/amap/api/col/l3/df;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3/dg;->d()Lcom/amap/api/col/l3/df;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/col/l3/dg;->b()Lcom/amap/api/col/l3/df;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/col/l3/dg;->c()Lcom/amap/api/col/l3/df;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->a:Lcom/amap/api/col/l3/dg$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->a:Lcom/amap/api/col/l3/dg$c;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/df;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3/dg;->a:Lcom/amap/api/col/l3/dg$c;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->b:Lcom/amap/api/col/l3/dg$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->b:Lcom/amap/api/col/l3/dg$e;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/df;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3/dg;->b:Lcom/amap/api/col/l3/dg$e;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->c:Lcom/amap/api/col/l3/dg$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->c:Lcom/amap/api/col/l3/dg$b;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/df;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3/dg;->c:Lcom/amap/api/col/l3/dg$b;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->d:Lcom/amap/api/col/l3/dg$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/dg;->d:Lcom/amap/api/col/l3/dg$d;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/df;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3/dg;->d:Lcom/amap/api/col/l3/dg$d;
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
