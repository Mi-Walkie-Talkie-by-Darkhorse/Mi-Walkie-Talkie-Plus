.class public Lcom/qmuiteam/qmui/widget/tab/QMUITab;
.super Ljava/lang/Object;
.source "QMUITab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/tab/QMUITab$IconPosition;
    }
.end annotation


# instance fields
.field A:F

.field B:F

.field C:I

.field D:I

.field a:Z

.field b:I

.field c:I

.field d:I

.field e:Landroid/graphics/Typeface;

.field f:Landroid/graphics/Typeface;

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:F

.field n:Lcom/qmuiteam/qmui/widget/tab/c;

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field private v:Ljava/lang/CharSequence;

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->k:I

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->r:I

    .line 7
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->s:I

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    const/16 v1, 0x11

    .line 9
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    const/4 v1, 0x2

    .line 10
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->w:I

    .line 11
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    .line 12
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->y:I

    .line 13
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->z:I

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->A:F

    .line 15
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->B:F

    .line 16
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->C:I

    .line 17
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->D:I

    .line 18
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->v:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b:I

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->i:I

    if-nez v0, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g:I

    return p1

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/c;->getIntrinsicWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/c;->getIntrinsicWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j:I

    if-nez v0, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h:I

    return p1

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    return v0
.end method

.method public h()Lcom/qmuiteam/qmui/widget/tab/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    return-object v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a:Z

    return v0
.end method
