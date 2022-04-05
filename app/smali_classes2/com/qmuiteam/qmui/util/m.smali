.class public final Lcom/qmuiteam/qmui/util/m;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->f:Z

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->g:Z

    iput-object p1, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    iget v1, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/qmuiteam/qmui/util/m;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    iget v1, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/qmuiteam/qmui/util/m;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->e(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->c:I

    return v0
.end method

.method public a(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/m;->f()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(II)Z
    .locals 2

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->f:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->g:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->f:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iput p1, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    iput p2, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/m;->f()V

    const/4 p1, 0x1

    return p1

    :cond_3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->g:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->b:I

    return v0
.end method

.method public b(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/util/m;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/m;->f()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/util/m;->d:I

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/util/m;->b:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/util/m;->c:I

    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/m;->f()V

    return-void
.end method
