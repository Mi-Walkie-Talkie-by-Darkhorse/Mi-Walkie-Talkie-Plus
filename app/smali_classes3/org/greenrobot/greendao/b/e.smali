.class public Lorg/greenrobot/greendao/b/e;
.super Ljava/lang/Object;
.source "TableStatements.java"


# instance fields
.field private final a:Lorg/greenrobot/greendao/a/a;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private e:Lorg/greenrobot/greendao/a/c;

.field private f:Lorg/greenrobot/greendao/a/c;

.field private g:Lorg/greenrobot/greendao/a/c;

.field private h:Lorg/greenrobot/greendao/a/c;

.field private i:Lorg/greenrobot/greendao/a/c;

.field private volatile j:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/a/a;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/b/e;->a:Lorg/greenrobot/greendao/a/a;

    iput-object p2, p0, Lorg/greenrobot/greendao/b/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/greenrobot/greendao/b/e;->c:[Ljava/lang/String;

    iput-object p4, p0, Lorg/greenrobot/greendao/b/e;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/greenrobot/greendao/a/c;
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->e:Lorg/greenrobot/greendao/a/c;

    if-nez v0, :cond_1

    const-string v0, "INSERT INTO "

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/b/e;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->a:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/a/a;->b(Ljava/lang/String;)Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->e:Lorg/greenrobot/greendao/a/c;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/e;->e:Lorg/greenrobot/greendao/a/c;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->e:Lorg/greenrobot/greendao/a/c;

    if-eq v1, v0, :cond_1

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/c;->e()V

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->e:Lorg/greenrobot/greendao/a/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Lorg/greenrobot/greendao/a/c;
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->f:Lorg/greenrobot/greendao/a/c;

    if-nez v0, :cond_1

    const-string v0, "INSERT OR REPLACE INTO "

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/b/e;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->a:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/a/a;->b(Ljava/lang/String;)Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->f:Lorg/greenrobot/greendao/a/c;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/e;->f:Lorg/greenrobot/greendao/a/c;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->f:Lorg/greenrobot/greendao/a/c;

    if-eq v1, v0, :cond_1

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/c;->e()V

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->f:Lorg/greenrobot/greendao/a/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Lorg/greenrobot/greendao/a/c;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->h:Lorg/greenrobot/greendao/a/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->a:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/a/a;->b(Ljava/lang/String;)Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->h:Lorg/greenrobot/greendao/a/c;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/e;->h:Lorg/greenrobot/greendao/a/c;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->h:Lorg/greenrobot/greendao/a/c;

    if-eq v1, v0, :cond_1

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/c;->e()V

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->h:Lorg/greenrobot/greendao/a/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Lorg/greenrobot/greendao/a/c;
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->g:Lorg/greenrobot/greendao/a/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->c:[Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/b/e;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->a:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/a/a;->b(Ljava/lang/String;)Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->g:Lorg/greenrobot/greendao/a/c;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/e;->g:Lorg/greenrobot/greendao/a/c;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->g:Lorg/greenrobot/greendao/a/c;

    if-eq v1, v0, :cond_1

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/c;->e()V

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->g:Lorg/greenrobot/greendao/a/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Lorg/greenrobot/greendao/a/c;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->i:Lorg/greenrobot/greendao/a/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/b/e;->a:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/a/a;->b(Ljava/lang/String;)Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/e;->i:Lorg/greenrobot/greendao/a/c;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->i:Lorg/greenrobot/greendao/a/c;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->b:Ljava/lang/String;

    const-string v1, "T"

    iget-object v2, p0, Lorg/greenrobot/greendao/b/e;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/e;->j:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/b/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "T"

    iget-object v2, p0, Lorg/greenrobot/greendao/b/e;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/b/d;->b(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/e;->k:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/greenrobot/greendao/b/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE ROWID=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/e;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/b/e;->l:Ljava/lang/String;

    return-object v0
.end method
