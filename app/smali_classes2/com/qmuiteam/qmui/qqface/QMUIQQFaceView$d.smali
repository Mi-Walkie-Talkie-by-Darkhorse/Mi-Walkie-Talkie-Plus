.class Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;
.super Ljava/lang/Object;
.source "QMUIQQFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/qmuiteam/qmui/link/a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field final synthetic f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;Lcom/qmuiteam/qmui/link/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->b:I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->c:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->d:I

    .line 5
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e:I

    .line 6
    iput-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->a:Lcom/qmuiteam/qmui/link/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->d:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 4
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    .line 5
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    add-int/2addr v2, v3

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 8
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 11
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->d:I

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e:I

    if-ne v0, v1, :cond_1

    .line 12
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->b:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 13
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->c:I

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->a:Lcom/qmuiteam/qmui/link/a;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/link/a;->a(Z)V

    return-void
.end method

.method public a(II)Z
    .locals 6

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 16
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->d:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 17
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    .line 18
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v1, v3

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x0

    if-lt p2, v0, :cond_a

    if-le p2, v1, :cond_1

    goto :goto_4

    .line 19
    :cond_1
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->d:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e:I

    if-ne v4, v5, :cond_3

    .line 20
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->b:I

    if-lt p1, p2, :cond_2

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->c:I

    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 21
    :cond_3
    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    add-int/2addr v0, v4

    .line 22
    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    sub-int/2addr v1, v4

    if-le p2, v0, :cond_6

    if-ge p2, v1, :cond_6

    .line 23
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e:I

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->d:I

    sub-int/2addr p2, v0

    if-ne p2, v2, :cond_5

    .line 24
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->b:I

    if-lt p1, p2, :cond_4

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->c:I

    if-gt p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    return v2

    :cond_6
    if-gt p2, v0, :cond_8

    .line 25
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->b:I

    if-lt p1, p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 26
    :cond_8
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->c:I

    if-gt p1, p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_a
    :goto_4
    return v3
.end method

.method public b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->a:Lcom/qmuiteam/qmui/link/a;

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/link/a;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->c:I

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->d:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->b:I

    return-void
.end method
