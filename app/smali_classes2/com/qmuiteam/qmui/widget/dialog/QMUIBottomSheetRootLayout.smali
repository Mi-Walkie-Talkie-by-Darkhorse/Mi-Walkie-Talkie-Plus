.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetRootLayout;
.super Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
.source "QMUIBottomSheetRootLayout.java"


# instance fields
.field private final c:I

.field private final d:F

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_bottom_sheet_bg:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/c/h;->c(I)Lcom/qmuiteam/qmui/c/h;

    .line 7
    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 8
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->q()V

    .line 9
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_radius:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, p2, v0}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadius(II)V

    .line 11
    :cond_0
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_use_percent_min_height:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetRootLayout;->c:I

    .line 12
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_height_percent:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->i(Landroid/content/Context;I)F

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetRootLayout;->d:F

    .line 13
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_max_width:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetRootLayout;->e:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetRootLayout;->e:I

    if-le v0, v2, :cond_0

    .line 4
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetRootLayout;->c:I

    if-lt v0, v1, :cond_1

    int-to-float p2, v0

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetRootLayout;->d:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->onMeasure(II)V

    return-void
.end method
