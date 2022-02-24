.class public Lcom/qmuiteam/qmui/widget/tab/d;
.super Ljava/lang/Object;
.source "QMUITabIndicator.java"


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

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/widget/tab/d;-><init>(IZZI)V

    return-void
.end method

.method public constructor <init>(IZZI)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->b:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->d:Z

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    .line 6
    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    .line 7
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    .line 8
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->h:Z

    .line 9
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->i:I

    .line 10
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->a:I

    .line 11
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/tab/d;->b:Z

    .line 12
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/tab/d;->d:Z

    .line 13
    iput p4, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/util/e;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(III)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    goto :goto_0

    .line 4
    :cond_0
    iput p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    .line 5
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 6
    :goto_0
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    if-nez p1, :cond_1

    .line 7
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

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 15
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->h:Z

    .line 17
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->i:I

    .line 18
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/d;->a(I)V

    .line 19
    :cond_0
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->b:Z

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 21
    iget p4, p0, Lcom/qmuiteam/qmui/widget/tab/d;->a:I

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 23
    iget p3, p0, Lcom/qmuiteam/qmui/widget/tab/d;->a:I

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 25
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/d;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 26
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 27
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

    .line 28
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->h:Z

    if-eqz p4, :cond_1

    .line 29
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/d;->g:I

    if-nez p1, :cond_1

    .line 30
    iget p1, p4, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j:I

    if-nez p1, :cond_0

    iget p1, p4, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h:I

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p3, p1}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    .line 32
    :goto_0
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/d;->a(I)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/d;->d:Z

    return v0
.end method
