.class public Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;
.super Lcom/qmuiteam/qmui/layout/QMUILinearLayout;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_radius:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_bg:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_padding_horizontal:I

    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_padding_vertical:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadius(I)V

    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_bg:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->b(I)Lcom/qmuiteam/qmui/c/h;

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->d()V

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_max_width:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;->c:I

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_min_width:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;->d:I

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_min_height:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;->e:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;->c:I

    if-le v0, v2, :cond_0

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->onMeasure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;->d:I

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_1

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;->e:I

    if-ge v1, v2, :cond_2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    if-eqz v3, :cond_3

    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->onMeasure(II)V

    :cond_3
    return-void
.end method
