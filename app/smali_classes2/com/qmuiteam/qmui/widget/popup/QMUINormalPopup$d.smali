.class Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;
.super Ljava/lang/Object;
.source "QMUINormalPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:[I

.field private b:[I

.field c:Landroid/graphics/Rect;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroid/view/View;

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field final synthetic q:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->q:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->a:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->b:[I

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    .line 5
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->m(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->j:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->m:I

    .line 7
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->n:I

    .line 8
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    .line 9
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->p:I

    .line 10
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->h:Landroid/view/View;

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->a:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->b:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 13
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->b:[I

    aget p1, v1, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    add-int/2addr p1, v1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->i:I

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->b:[I

    return-object p0
.end method


# virtual methods
.method b()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->i:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method e()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method f()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method g()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->p:I

    add-int/2addr v0, v1

    return v0
.end method

.method h()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->m:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->n:I

    add-int/2addr v0, v1

    return v0
.end method
