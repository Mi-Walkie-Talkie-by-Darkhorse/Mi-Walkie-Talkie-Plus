.class public final Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;
.super Ljava/lang/Object;
.source "QMUIPullLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:I

.field private final c:Z

.field private final d:F

.field private final e:F

.field private final f:I

.field private final g:I

.field private final h:F

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Lcom/qmuiteam/qmui/util/m;

.field private final m:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/view/View;IZFIIFZFZZLcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->n:Z

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a:Landroid/view/View;

    .line 4
    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b:I

    .line 5
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c:Z

    .line 6
    iput p4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d:F

    .line 7
    iput-boolean p8, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->i:Z

    .line 8
    iput p9, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->e:F

    .line 9
    iput p5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->f:I

    .line 10
    iput p7, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->h:F

    .line 11
    iput p6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->g:I

    .line 12
    iput-boolean p10, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->j:Z

    .line 13
    iput-boolean p11, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->k:Z

    .line 14
    iput-object p12, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->m:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;

    .line 15
    new-instance p2, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {p2, p1}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->l:Lcom/qmuiteam/qmui/util/m;

    .line 16
    invoke-virtual {p0, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Lcom/qmuiteam/qmui/util/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->l:Lcom/qmuiteam/qmui/util/m;

    return-object p0
.end method

.method static synthetic e(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->h:F

    return p0
.end method

.method static synthetic f(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->n:Z

    return p0
.end method

.method static synthetic g(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->k:Z

    return p0
.end method

.method static synthetic h(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->j:Z

    return p0
.end method


# virtual methods
.method public a(I)F
    .locals 2

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d:F

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->e:F

    mul-float p1, p1, v1

    sub-float p1, v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->f:I

    return v0
.end method

.method public b()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method b(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->m:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;

    .line 6
    invoke-interface {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(I)V

    return-void
.end method

.method public c()F
    .locals 1

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d:F

    return v0
.end method

.method c(I)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->l:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->l:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->l:Lcom/qmuiteam/qmui/util/m;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->l:Lcom/qmuiteam/qmui/util/m;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    :goto_0
    return-void
.end method

.method public d()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c:Z

    return v0
.end method
