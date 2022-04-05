.class public Lcom/qmuiteam/qmui/widget/tab/QMUITab;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->k:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->r:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->s:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    const/16 v1, 0x11

    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->w:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->y:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->z:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->A:F

    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->B:F

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->C:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->D:I

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->v:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->i:I

    if-nez v0, :cond_0

    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g:I

    return p1

    :cond_0
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b:I

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j:I

    if-nez v0, :cond_0

    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h:I

    return p1

    :cond_0
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/c;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->l:I

    return v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/c;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->k:I

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    return v0
.end method

.method public f()Lcom/qmuiteam/qmui/widget/tab/c;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a:Z

    return v0
.end method
