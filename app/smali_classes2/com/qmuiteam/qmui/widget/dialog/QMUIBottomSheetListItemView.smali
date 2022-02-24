.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetListItemView;
.super Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;
.source "QMUIBottomSheetListItemView.java"


# instance fields
.field private c:I


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetListItemView;->c:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;->onMeasure(II)V

    return-void
.end method
