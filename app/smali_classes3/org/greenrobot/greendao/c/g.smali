.class public Lorg/greenrobot/greendao/c/g;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private final c:Lorg/greenrobot/greendao/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/c/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/StringBuilder;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/greenrobot/greendao/c/e",
            "<TT;*>;>;"
        }
    .end annotation
.end field

.field private final g:Lorg/greenrobot/greendao/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/a",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/greenrobot/greendao/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/a",
            "<TT;*>;)V"
        }
    .end annotation

    const-string v0, "T"

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/c/g;-><init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/a",
            "<TT;*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/c/g;->g:Lorg/greenrobot/greendao/a;

    iput-object p2, p0, Lorg/greenrobot/greendao/c/g;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/c/g;->f:Ljava/util/List;

    new-instance v0, Lorg/greenrobot/greendao/c/h;

    invoke-direct {v0, p1, p2}, Lorg/greenrobot/greendao/c/h;-><init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/c/g;->c:Lorg/greenrobot/greendao/c/h;

    const-string v0, " COLLATE NOCASE"

    iput-object v0, p0, Lorg/greenrobot/greendao/c/g;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v0, " LIMIT ?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->i:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static a(Lorg/greenrobot/greendao/a;)Lorg/greenrobot/greendao/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/a",
            "<TT2;*>;)",
            "Lorg/greenrobot/greendao/c/g",
            "<TT2;>;"
        }
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/c/g;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/c/g;-><init>(Lorg/greenrobot/greendao/a;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lorg/greenrobot/greendao/c/g;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Built SQL for query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/greenrobot/greendao/d;->a(Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lorg/greenrobot/greendao/c/g;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Values for query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/greenrobot/greendao/d;->a(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Lorg/greenrobot/greendao/f;)V
    .locals 4

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    invoke-direct {p0}, Lorg/greenrobot/greendao/c/g;->e()V

    iget-object v3, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v2}, Lorg/greenrobot/greendao/c/g;->a(Ljava/lang/StringBuilder;Lorg/greenrobot/greendao/f;)Ljava/lang/StringBuilder;

    const-class v3, Ljava/lang/String;

    iget-object v2, v2, Lorg/greenrobot/greendao/f;->b:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/greenrobot/greendao/c/g;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/greenrobot/greendao/c/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/c/e;

    const-string v3, " JOIN "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/greenrobot/greendao/c/e;->b:Lorg/greenrobot/greendao/a;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/a;->getTablename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/greenrobot/greendao/c/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/greenrobot/greendao/c/e;->a:Ljava/lang/String;

    iget-object v4, v0, Lorg/greenrobot/greendao/c/e;->c:Lorg/greenrobot/greendao/f;

    invoke-static {p1, v3, v4}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/f;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/greenrobot/greendao/c/e;->e:Ljava/lang/String;

    iget-object v0, v0, Lorg/greenrobot/greendao/c/e;->d:Lorg/greenrobot/greendao/f;

    invoke-static {p1, v3, v0}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/f;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->c:Lorg/greenrobot/greendao/c/h;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/h;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    const-string v1, " WHERE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->c:Lorg/greenrobot/greendao/c/h;

    iget-object v3, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    invoke-virtual {v1, p1, p2, v3}, Lorg/greenrobot/greendao/c/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/c/e;

    iget-object v4, v0, Lorg/greenrobot/greendao/c/e;->f:Lorg/greenrobot/greendao/c/h;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/c/h;->a()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_4

    const-string v1, " WHERE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_3
    iget-object v4, v0, Lorg/greenrobot/greendao/c/e;->f:Lorg/greenrobot/greendao/c/h;

    iget-object v0, v0, Lorg/greenrobot/greendao/c/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    invoke-virtual {v4, p1, v0, v5}, Lorg/greenrobot/greendao/c/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    move v0, v1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v4, " AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    return-void
.end method

.method private b(Ljava/lang/StringBuilder;)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Offset cannot be set without limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, " OFFSET ?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->j:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private f()Ljava/lang/StringBuilder;
    .locals 4

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->g:Lorg/greenrobot/greendao/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/a;->getTablename()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->h:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/c/g;->g:Lorg/greenrobot/greendao/a;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/a;->getAllColumns()[Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/greenrobot/greendao/c/g;->k:Z

    invoke-static {v0, v1, v2, v3}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->h:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/greenrobot/greendao/c/g;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " ORDER BY "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/greenrobot/greendao/c/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected a(Ljava/lang/StringBuilder;Lorg/greenrobot/greendao/f;)Ljava/lang/StringBuilder;
    .locals 3

    const/16 v2, 0x27

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->c:Lorg/greenrobot/greendao/c/h;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/c/h;->a(Lorg/greenrobot/greendao/f;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lorg/greenrobot/greendao/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public a()Lorg/greenrobot/greendao/c/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/c/f",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/greenrobot/greendao/c/g;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/c/g;->a(Ljava/lang/StringBuilder;)I

    move-result v1

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/c/g;->b(Ljava/lang/StringBuilder;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/c/g;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/greenrobot/greendao/c/g;->g:Lorg/greenrobot/greendao/a;

    iget-object v4, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v0, v4, v1, v2}, Lorg/greenrobot/greendao/c/f;->a(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/c/f;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lorg/greenrobot/greendao/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/greenrobot/greendao/c/g",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/c/g;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public varargs a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/c/i;",
            "[",
            "Lorg/greenrobot/greendao/c/i;",
            ")",
            "Lorg/greenrobot/greendao/c/g",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->c:Lorg/greenrobot/greendao/c/h;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/c/h;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)V

    return-object p0
.end method

.method public varargs a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/greenrobot/greendao/f;",
            ")",
            "Lorg/greenrobot/greendao/c/g",
            "<TT;>;"
        }
    .end annotation

    const-string v0, " ASC"

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/c/g;->a(Ljava/lang/String;[Lorg/greenrobot/greendao/f;)V

    return-object p0
.end method

.method public b()Lorg/greenrobot/greendao/c/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/c/d",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "JOINs are not supported for DELETE queries"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/c/g;->g:Lorg/greenrobot/greendao/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/a;->getTablename()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/b/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->h:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lorg/greenrobot/greendao/c/g;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/greenrobot/greendao/c/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\".\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/c/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/greenrobot/greendao/c/g;->g:Lorg/greenrobot/greendao/a;

    iget-object v2, p0, Lorg/greenrobot/greendao/c/g;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/greenrobot/greendao/c/d;->a(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/c/d;

    move-result-object v0

    return-object v0
.end method

.method public varargs b([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/greenrobot/greendao/f;",
            ")",
            "Lorg/greenrobot/greendao/c/g",
            "<TT;>;"
        }
    .end annotation

    const-string v0, " DESC"

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/c/g;->a(Ljava/lang/String;[Lorg/greenrobot/greendao/f;)V

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/c/g;->a()Lorg/greenrobot/greendao/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/f;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/c/g;->a()Lorg/greenrobot/greendao/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/f;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
