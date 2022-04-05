.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Landroid/widget/LinearLayout$LayoutParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Landroid/widget/LinearLayout$LayoutParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method private a(IIII)I
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_grid_item_mini_width:I

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->b:I

    :cond_0
    sub-int/2addr p1, p3

    sub-int p3, p1, p4

    iget p4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->b:I

    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    mul-int v0, p2, p4

    sub-int v0, p3, v0

    if-lez v0, :cond_1

    if-ge v0, p4, :cond_1

    div-int p4, p3, p4

    div-int p4, p3, p4

    :cond_1
    mul-int p2, p2, p4

    if-le p2, p3, :cond_2

    div-int p2, p1, p4

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    div-float/2addr p1, p2

    float-to-int p4, p1

    :cond_2
    return p4
.end method


# virtual methods
.method protected measureChild(Landroid/view/View;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->a:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->e:I

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->a(IIII)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->f:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->f:I

    if-eq v2, v3, :cond_0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridLineLayout;->f:I

    if-eq v2, v3, :cond_2

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
