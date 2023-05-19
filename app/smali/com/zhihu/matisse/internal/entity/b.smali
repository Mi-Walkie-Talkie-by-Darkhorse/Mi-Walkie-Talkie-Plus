.class public final Lcom/zhihu/matisse/internal/entity/b;
.super Ljava/lang/Object;
.source "SelectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/entity/b$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zhihu/matisse/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zhihu/matisse/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Lcom/zhihu/matisse/internal/entity/a;

.field public m:I

.field public n:I

.field public o:F

.field public p:Lcom/zhihu/matisse/b/a;

.field public q:Z

.field public r:Lcom/zhihu/matisse/e/c;

.field public s:Z

.field public t:Z

.field public u:I

.field public v:Lcom/zhihu/matisse/e/a;

.field public w:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhihu/matisse/internal/entity/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/entity/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/zhihu/matisse/internal/entity/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    .line 2
    invoke-direct {v0}, Lcom/zhihu/matisse/internal/entity/b;->g()V

    return-object v0
.end method

.method public static b()Lcom/zhihu/matisse/internal/entity/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b$b;->a()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/b;->a:Ljava/util/Set;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/zhihu/matisse/internal/entity/b;->b:Z

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/b;->c:Z

    .line 4
    sget v3, Lcom/zhihu/matisse/R$style;->Matisse_Zhihu:I

    iput v3, p0, Lcom/zhihu/matisse/internal/entity/b;->d:I

    .line 5
    iput v2, p0, Lcom/zhihu/matisse/internal/entity/b;->e:I

    .line 6
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/b;->f:Z

    .line 7
    iput v1, p0, Lcom/zhihu/matisse/internal/entity/b;->g:I

    .line 8
    iput v2, p0, Lcom/zhihu/matisse/internal/entity/b;->h:I

    .line 9
    iput v2, p0, Lcom/zhihu/matisse/internal/entity/b;->i:I

    .line 10
    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/b;->j:Ljava/util/List;

    .line 11
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/b;->k:Z

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/b;->m:I

    .line 13
    iput v2, p0, Lcom/zhihu/matisse/internal/entity/b;->n:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/b;->o:F

    .line 15
    new-instance v0, Lcom/zhihu/matisse/b/b/a;

    invoke-direct {v0}, Lcom/zhihu/matisse/b/b/a;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/b;->p:Lcom/zhihu/matisse/b/a;

    .line 16
    iput-boolean v1, p0, Lcom/zhihu/matisse/internal/entity/b;->q:Z

    .line 17
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/b;->s:Z

    .line 18
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/b;->t:Z

    const v0, 0x7fffffff

    .line 19
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/b;->u:I

    .line 20
    iput-boolean v1, p0, Lcom/zhihu/matisse/internal/entity/b;->w:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/zhihu/matisse/internal/entity/b;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/entity/b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/MimeType;->f()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/entity/b;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/entity/b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/MimeType;->g()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/entity/b;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/entity/b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/MimeType;->i()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/entity/b;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/entity/b;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhihu/matisse/internal/entity/b;->g:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/zhihu/matisse/internal/entity/b;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zhihu/matisse/internal/entity/b;->i:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
