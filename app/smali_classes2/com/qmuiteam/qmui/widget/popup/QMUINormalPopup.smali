.class public Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;
.super Lcom/qmuiteam/qmui/widget/popup/a;
.source "QMUINormalPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;,
        Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$b;,
        Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;,
        Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qmuiteam/qmui/widget/popup/a;",
        ">",
        "Lcom/qmuiteam/qmui/widget/popup/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field protected final J:I

.field protected final K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Landroid/view/View;

.field protected m:I
    .annotation build Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$AnimStyle;
    .end annotation
.end field

.field protected n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/popup/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->s:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->t:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u:I

    .line 5
    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->v:I

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w:I

    .line 7
    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_popup_border_color:I

    iput v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->x:I

    .line 8
    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->y:I

    .line 9
    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->z:I

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->A:F

    .line 11
    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->B:I

    .line 12
    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->C:I

    .line 13
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->D:I

    .line 14
    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_popup_bg:I

    iput v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->E:I

    .line 15
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->F:I

    .line 16
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->G:I

    .line 17
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->H:I

    .line 18
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->I:I

    .line 19
    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->L:I

    .line 20
    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M:I

    .line 21
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->N:Z

    .line 22
    iput p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->J:I

    .line 23
    iput p3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->K:I

    return-void
.end method

.method static synthetic A(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->D(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    return-void
.end method

.method static synthetic B(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->v:I

    return p0
.end method

.method static synthetic C(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->x:I

    return p0
.end method

.method private D(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup<",
            "TT;>.d;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->S()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->z:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_popup_shadow_elevation:I

    invoke-static {v0, v2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->z:I

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_popup_shadow_alpha:I

    invoke-static {v0, v2}, Lcom/qmuiteam/qmui/util/i;->i(Landroid/content/Context;I)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->A:F

    .line 5
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->B:I

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_popup_shadow_inset:I

    invoke-static {v0, v2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->B:I

    .line 7
    :cond_1
    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    iget v2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    .line 8
    iget v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->B:I

    sub-int v4, v0, v3

    iget-object v5, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-le v4, v6, :cond_2

    sub-int v4, v0, v3

    .line 9
    iput v4, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    .line 10
    iput v3, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->m:I

    goto :goto_0

    :cond_2
    sub-int v4, v0, v6

    .line 11
    iput v4, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->m:I

    .line 12
    iput v6, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    .line 13
    :goto_0
    iget v4, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    add-int v6, v0, v4

    add-int/2addr v6, v3

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_3

    .line 14
    iput v3, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->n:I

    goto :goto_1

    :cond_3
    sub-int/2addr v7, v0

    sub-int/2addr v7, v4

    .line 15
    iput v7, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->n:I

    :goto_1
    sub-int v0, v2, v3

    .line 16
    iget v4, v5, Landroid/graphics/Rect;->top:I

    if-le v0, v4, :cond_4

    sub-int v0, v2, v3

    .line 17
    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    .line 18
    iput v3, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    goto :goto_2

    :cond_4
    sub-int v0, v2, v4

    .line 19
    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    .line 20
    iput v4, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    .line 21
    :goto_2
    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    add-int v4, v2, v0

    add-int/2addr v4, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v5, :cond_5

    .line 22
    iput v3, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->p:I

    goto :goto_3

    :cond_5
    sub-int/2addr v5, v2

    sub-int/2addr v5, v0

    .line 23
    iput v5, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->p:I

    .line 24
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->s:Z

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->j:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    .line 25
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->L:I

    if-ne v0, v1, :cond_7

    .line 26
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_popup_arrow_width:I

    invoke-static {v0, v2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->L:I

    .line 27
    :cond_7
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M:I

    if-ne v0, v1, :cond_8

    .line 28
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_popup_arrow_height:I

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M:I

    .line 29
    :cond_8
    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 30
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->S()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    .line 32
    :cond_9
    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    goto :goto_4

    :cond_a
    if-nez v0, :cond_b

    .line 33
    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->p:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->p:I

    .line 34
    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    :cond_b
    :goto_4
    return-void
.end method

.method private G(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup<",
            "TT;>.d;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->J:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O(I)I

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    .line 3
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->k:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d()I

    move-result v0

    iget v6, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->p:I

    sub-int/2addr v0, v6

    iget v6, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->q:I

    sub-int/2addr v0, v6

    .line 5
    iget v6, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->J:I

    if-ne v6, v3, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O(I)I

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    .line 7
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->k:I

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O(I)I

    .line 9
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->k:I

    const/4 v0, 0x1

    .line 10
    :goto_1
    iget v6, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->K:I

    if-lez v6, :cond_2

    .line 11
    invoke-virtual {p0, v6}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->N(I)I

    iput v6, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    .line 12
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->l:I

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c()I

    move-result v6

    iget v7, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->o:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->r:I

    sub-int/2addr v6, v7

    .line 14
    iget v7, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->K:I

    if-ne v7, v3, :cond_3

    .line 15
    invoke-virtual {p0, v6}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->N(I)I

    iput v6, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    .line 16
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->l:I

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {p0, v6}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->N(I)I

    .line 18
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->l:I

    :goto_3
    if-nez v0, :cond_4

    if-eqz v2, :cond_6

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O:Landroid/view/View;

    iget v3, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->k:I

    iget v4, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->l:I

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O(I)I

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    :cond_5
    if-eqz v2, :cond_6

    .line 21
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->N(I)I

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    :cond_6
    return-void
.end method

.method private H(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup<",
            "TT;>.d;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->i:I

    iget-object v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->p:I

    iget-object v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->i:I

    iget v2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->F:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->q:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    sub-int/2addr v0, v1

    iget v2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->i:I

    div-int/2addr v1, v3

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->F:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    .line 4
    :goto_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 5
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0, v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->K(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;II)V

    return-void
.end method

.method private I(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup<",
            "TT;>.d;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O:Landroid/view/View;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->J:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->K:I

    invoke-static {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$b;->h(Landroid/view/View;II)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->v:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4
    iput v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w:I

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->x:I

    if-eqz v2, :cond_1

    .line 6
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w:I

    .line 7
    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->x:I

    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/c/h;->f(I)Lcom/qmuiteam/qmui/c/h;

    .line 8
    :cond_1
    :goto_0
    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->C:I

    if-eq v2, v3, :cond_2

    .line 9
    iput v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->D:I

    goto :goto_1

    .line 10
    :cond_2
    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->E:I

    if-eqz v2, :cond_3

    .line 11
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->D:I

    .line 12
    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->E:I

    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/c/h;->c(I)Lcom/qmuiteam/qmui/c/h;

    .line 13
    :cond_3
    :goto_1
    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->y:I

    if-ne v2, v3, :cond_4

    .line 14
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_popup_border_width:I

    invoke-static {v2, v4}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->y:I

    .line 15
    :cond_4
    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 16
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->q()V

    .line 17
    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->D:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 18
    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBorderColor(I)V

    .line 19
    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->y:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBorderWidth(I)V

    .line 20
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->N:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setShowBorderOnlyBeforeL(Z)V

    .line 21
    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u:I

    if-ne v1, v3, :cond_5

    .line 22
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_popup_radius:I

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u:I

    .line 23
    :cond_5
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->S()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->z:I

    iget v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->A:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setRadiusAndShadow(IIF)V

    goto :goto_2

    .line 25
    :cond_6
    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setRadius(I)V

    .line 26
    :goto_2
    new-instance v1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Landroid/content/Context;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$a;)V

    .line 27
    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->e(Landroid/view/View;)V

    .line 28
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private K(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup<",
            "TT;>.d;II)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d()I

    move-result p3

    iget v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    sub-int/2addr p3, v1

    div-int/2addr p3, v0

    add-int/2addr p2, p3

    iput p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    .line 2
    iget-object p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c()I

    move-result p3

    iget v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    sub-int/2addr p3, v1

    div-int/2addr p3, v0

    add-int/2addr p2, p3

    iput p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    .line 3
    iput v0, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->j:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 4
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->a(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)[I

    move-result-object p2

    aget p2, p2, v1

    iget v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->G:I

    sub-int/2addr p2, v1

    iput p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    .line 5
    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->o:I

    iget-object v2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 6
    invoke-direct {p0, p1, p3, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->K(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;II)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 7
    iput p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->j:I

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_4

    .line 8
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->a(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)[I

    move-result-object p2

    aget p2, p2, v1

    iget-object v2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr p2, v2

    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->H:I

    add-int/2addr p2, v2

    iput p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    .line 9
    iget-object v2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->r:I

    sub-int/2addr v2, v3

    iget v3, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    sub-int/2addr v2, v3

    if-le p2, v2, :cond_3

    .line 10
    invoke-direct {p0, p1, p3, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->K(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;II)V

    goto :goto_0

    .line 11
    :cond_3
    iput v1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->j:I

    :cond_4
    :goto_0
    return-void
.end method

.method private Q(FI)V
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->m:I

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_6

    const/4 p1, 0x2

    if-eq v1, p1, :cond_4

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    goto/16 :goto_7

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    iget p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->n:I

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_3

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Center:I

    goto :goto_1

    :cond_3
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Center:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_5

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Right:I

    goto :goto_2

    :cond_5
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Right:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    .line 5
    :cond_6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_7

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Left:I

    goto :goto_3

    :cond_7
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Left:I

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    :cond_8
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_a

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_9

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Left:I

    goto :goto_4

    :cond_9
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Left:I

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    :cond_a
    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_c

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_b

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Center:I

    goto :goto_5

    :cond_b
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Center:I

    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    .line 8
    :cond_c
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_d

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Right:I

    goto :goto_6

    :cond_d
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Right:I

    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_7
    return-void
.end method

.method private S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->t:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qmuiteam/qmui/layout/a;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic m(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->I:I

    return p0
.end method

.method static synthetic n(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w:I

    return p0
.end method

.method static synthetic o(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w:I

    return p1
.end method

.method static synthetic p(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->C:I

    return p0
.end method

.method static synthetic q(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->E:I

    return p0
.end method

.method static synthetic r(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->D:I

    return p0
.end method

.method static synthetic s(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->D:I

    return p1
.end method

.method static synthetic t(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->s:Z

    return p0
.end method

.method static synthetic u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->L:I

    return p0
.end method

.method static synthetic v(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->y:I

    return p0
.end method

.method static synthetic w(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M:I

    return p0
.end method

.method static synthetic x(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->N:Z

    return p0
.end method

.method static synthetic y(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->S()Z

    move-result p0

    return p0
.end method

.method static synthetic z(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->H(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    return-void
.end method


# virtual methods
.method public E(I)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .param p1    # I
        .annotation build Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$AnimStyle;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->m:I

    return-object p0
.end method

.method public F(Z)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->s:Z

    return-object p0
.end method

.method public J(I)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->p:I

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->q:I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->o:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->r:I

    return-object p0
.end method

.method public L(I)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->F:I

    return-object p0
.end method

.method public M(I)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->I:I

    return-object p0
.end method

.method protected N(I)I
    .locals 0

    return p1
.end method

.method protected O(I)I
    .locals 0

    return p1
.end method

.method public P(I)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u:I

    return-object p0
.end method

.method public R(Z)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->t:Z

    return-object p0
.end method

.method public T(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Landroid/view/View;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->G(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->H(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->D(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->I(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    .line 7
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->b()F

    move-result v1

    iget v2, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->j:I

    invoke-direct {p0, v1, v2}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->Q(FI)V

    .line 8
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 10
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e()I

    move-result v1

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/widget/popup/a;->j(Landroid/view/View;II)V

    return-object p0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "you should call view() to set your content view"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->O:Landroid/view/View;

    return-object p0
.end method
