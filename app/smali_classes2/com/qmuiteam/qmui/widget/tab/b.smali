.class public Lcom/qmuiteam/qmui/widget/tab/b;
.super Ljava/lang/Object;
.source "QMUITabBuilder.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/graphics/Typeface;

.field private q:Landroid/graphics/Typeface;

.field private r:I

.field s:I

.field t:F

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->a:I

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->c:I

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->e:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->f:Z

    .line 6
    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tab_normal_color:I

    iput v2, p0, Lcom/qmuiteam/qmui/widget/tab/b;->i:I

    .line 7
    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tab_selected_color:I

    iput v2, p0, Lcom/qmuiteam/qmui/widget/tab/b;->j:I

    .line 8
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->k:I

    .line 9
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->l:I

    .line 10
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->m:I

    const/16 v1, 0x11

    .line 11
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->n:I

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->r:I

    .line 13
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->s:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    iput v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->t:F

    .line 15
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->u:I

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->v:I

    .line 17
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->y:I

    const/16 v0, 0xc

    .line 18
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->h:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/b;->g:I

    const/4 v0, 0x3

    .line 19
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->w:I

    .line 20
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->x:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/tab/QMUITab;
    .locals 5

    .line 5
    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->o:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->f:Z

    if-nez v1, :cond_1

    .line 7
    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->a:I

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->b:Landroid/graphics/drawable/Drawable;

    .line 9
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->c:I

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->d:Landroid/graphics/drawable/Drawable;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 12
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->e:Z

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->d:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lcom/qmuiteam/qmui/widget/tab/c;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/b;->b:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v2, v3, v1}, Lcom/qmuiteam/qmui/widget/tab/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    iput-object p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    new-instance p1, Lcom/qmuiteam/qmui/widget/tab/c;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/b;->b:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/qmuiteam/qmui/widget/tab/b;->e:Z

    invoke-direct {p1, v2, v3, v4}, Lcom/qmuiteam/qmui/widget/tab/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    iput-object p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    .line 15
    :goto_1
    iget-object p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/tab/b;->r:I

    iget v3, p0, Lcom/qmuiteam/qmui/widget/tab/b;->s:I

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    :cond_4
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->f:Z

    iput-boolean p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->o:Z

    .line 17
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->a:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->p:I

    .line 18
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->c:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->q:I

    .line 19
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->r:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->k:I

    .line 20
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->s:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->l:I

    .line 21
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->t:F

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    .line 22
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->n:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    .line 23
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->m:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    .line 24
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->g:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c:I

    .line 25
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->h:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d:I

    .line 26
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->p:Landroid/graphics/Typeface;

    iput-object p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e:Landroid/graphics/Typeface;

    .line 27
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->q:Landroid/graphics/Typeface;

    iput-object p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f:Landroid/graphics/Typeface;

    .line 28
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->i:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->i:I

    .line 29
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->j:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j:I

    .line 30
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->k:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g:I

    .line 31
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->l:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h:I

    .line 32
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->u:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->z:I

    .line 33
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->v:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->w:I

    .line 34
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->w:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    .line 35
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->x:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->y:I

    .line 36
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->y:I

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b:I

    return-object v0
.end method

.method public a(I)Lcom/qmuiteam/qmui/widget/tab/b;
    .locals 0

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->n:I

    return-object p0
.end method

.method public a(II)Lcom/qmuiteam/qmui/widget/tab/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->g:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/tab/b;->h:I

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/tab/b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->o:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(I)Lcom/qmuiteam/qmui/widget/tab/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/b;->m:I

    return-object p0
.end method
