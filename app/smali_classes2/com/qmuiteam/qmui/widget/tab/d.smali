.class public Lcom/qmuiteam/qmui/widget/tab/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z

.field private c:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/widget/tab/d;-><init>(IZZI)V

    return-void
.end method

.method public constructor <init>(IZZI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->d:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->h:Z

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->i:I

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->a:I

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/tab/d;->b:Z

    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/tab/d;->d:Z

    iput p4, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/util/e;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(III)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    if-nez p1, :cond_1

    invoke-direct {p0, p3}, Lcom/qmuiteam/qmui/widget/tab/d;->a(I)V

    :cond_1
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/graphics/Canvas;II)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->h:Z

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->i:I

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/d;->a(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->top:I

    iget p4, p0, Lcom/qmuiteam/qmui/widget/tab/d;->a:I

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/qmuiteam/qmui/widget/tab/d;->a:I

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected a(Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/qmuiteam/qmui/widget/tab/QMUITab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->h:Z

    if-eqz p4, :cond_1

    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    if-nez p1, :cond_1

    iget p1, p4, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j:I

    if-nez p1, :cond_0

    iget p1, p4, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h:I

    goto :goto_0

    :cond_0
    invoke-static {p3, p1}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/d;->a(I)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->d:Z

    return v0
.end method
