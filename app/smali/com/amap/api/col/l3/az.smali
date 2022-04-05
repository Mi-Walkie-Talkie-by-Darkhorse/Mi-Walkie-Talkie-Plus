.class public final Lcom/amap/api/col/l3/az;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/l3/bl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/az;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3/bl;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/bl;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/az;->b:Lcom/amap/api/col/l3/bl;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/amap/api/col/l3/bg;
    .locals 8

    const-string v0, "quanguo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "quanguogaiyaotu"

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/az;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/aw;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/aw;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amap/api/col/l3/az;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/l3/em;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".zip.tmp.dt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lcom/amap/api/col/l3/em;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/amap/api/col/l3/bg;

    invoke-direct {v5}, Lcom/amap/api/col/l3/bg;-><init>()V

    invoke-virtual {v5, v1}, Lcom/amap/api/col/l3/bg;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/amap/api/col/l3/bj;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v5

    :cond_3
    move-object v1, v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private a()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3/az;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/em;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3/az;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/bg;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bj;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/az;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/col/l3/az;->b:Lcom/amap/api/col/l3/bl;

    return-void
.end method

.method public final run()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3/az;->b:Lcom/amap/api/col/l3/bl;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bl;->a()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "vmap/"

    invoke-direct {p0, v0, v2}, Lcom/amap/api/col/l3/az;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v2, "map/"

    invoke-direct {p0, v0, v2}, Lcom/amap/api/col/l3/az;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/az;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3/bg;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/amap/api/col/l3/bj;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/amap/api/col/l3/bj;->l:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_8

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x3

    if-ne v5, v8, :cond_0

    invoke-virtual {v4}, Lcom/amap/api/col/l3/bj;->f()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/amap/api/col/l3/bj;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/amap/api/col/l3/bj;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v6, 0x1

    :cond_4
    if-nez v6, :cond_0

    :goto_1
    iget-object v5, p0, Lcom/amap/api/col/l3/az;->b:Lcom/amap/api/col/l3/bl;

    invoke-virtual {v5, v4}, Lcom/amap/api/col/l3/bl;->b(Lcom/amap/api/col/l3/bg;)V

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/amap/api/col/l3/bj;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/amap/api/col/l3/bj;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const/4 v6, 0x1

    :cond_7
    if-nez v6, :cond_0

    goto :goto_1

    :cond_8
    :goto_3
    invoke-virtual {v4}, Lcom/amap/api/col/l3/bj;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3/az;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/az;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/bg;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/amap/api/col/l3/az;->b:Lcom/amap/api/col/l3/bl;

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3/bl;->a(Lcom/amap/api/col/l3/bg;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/l3/az;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/aw;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/amap/api/col/l3/aw;->b()V

    :cond_c
    return-void
.end method
