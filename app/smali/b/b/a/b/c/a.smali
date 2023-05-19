.class public Lb/b/a/b/c/a;
.super Lb/b/a/b/a;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private e:Lb/b/a/b/b;

.field private volatile f:Lb/b/a/b/c/b;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lb/b/a/b/a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/b/a/b/c/a;->g:Ljava/lang/Object;

    iput-object p1, p0, Lb/b/a/b/c/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lb/b/a/b/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-lez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/b/a/b/c/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "path must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/b/a/b/c/a;->f:Lb/b/a/b/c/b;

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/a/b/c/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/a/b/c/a;->f:Lb/b/a/b/c/b;

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/b/a/b/c/a;->e:Lb/b/a/b/b;

    if-nez v1, :cond_0

    new-instance v1, Lb/b/a/b/c/g;

    iget-object v2, p0, Lb/b/a/b/c/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lb/b/a/b/c/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lb/b/a/b/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lb/b/a/b/c/a;->f:Lb/b/a/b/c/b;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/a/b/b;->b()Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Lb/b/a/b/c/d;

    invoke-direct {p2, p1}, Lb/b/a/b/c/d;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lb/b/a/b/c/a;->f:Lb/b/a/b/c/b;

    iget-object p1, p0, Lb/b/a/b/c/a;->e:Lb/b/a/b/b;

    invoke-virtual {p1}, Lb/b/a/b/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    invoke-static {p1}, Lb/b/a/b/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lb/b/a/b/c/a;->f:Lb/b/a/b/c/b;

    invoke-interface {v0, p1, p2}, Lb/b/a/b/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
