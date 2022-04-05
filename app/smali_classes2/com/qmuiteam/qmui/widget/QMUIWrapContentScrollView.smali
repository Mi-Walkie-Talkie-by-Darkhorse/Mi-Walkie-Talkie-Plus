.class public Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;
.super Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;-><init>(Landroid/content/Context;)V

    const p1, 0x1fffffff

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x1fffffff

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x1fffffff

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->c:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->c:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->c:I

    if-gt v0, v1, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->c:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    :cond_0
    return-void
.end method
