.class public final Lcom/qmuiteam/qmui/util/m;
.super Ljava/lang/Object;
.source "QMUIViewOffsetHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->f:Z

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->g:Z

    .line 4
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    iget v1, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/qmuiteam/qmui/util/m;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->c0(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    iget v1, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/qmuiteam/qmui/util/m;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->b0(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/util/m;->b:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/util/m;->c:I

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/m;->i()V

    return-void
.end method

.method public f(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/m;->i()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(II)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/qmuiteam/qmui/util/m;->f:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_3

    .line 2
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/util/m;->f:Z

    if-eqz v2, :cond_3

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 4
    :cond_2
    :goto_0
    iput p1, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    .line 6
    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/m;->i()V

    const/4 p1, 0x1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/util/m;->f(I)Z

    move-result p1

    return p1

    .line 8
    :cond_4
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/util/m;->h(I)Z

    move-result p1

    return p1
.end method

.method public h(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/m;->i()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
