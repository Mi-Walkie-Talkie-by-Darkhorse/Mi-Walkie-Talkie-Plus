.class public Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;
.super Landroid/widget/ListView;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p1, 0x1fffffff

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x1fffffff

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x1fffffff

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;->a:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;->a:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;->a:I

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method
