.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;
.super Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;


# instance fields
.field protected c:Landroidx/appcompat/widget/AppCompatImageView;

.field protected d:Landroid/widget/TextView;

.field protected e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaConstraintLayout;->setChangeAlphaWhenPress(Z)V

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_grid_item_padding_top:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    sget p3, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_grid_item_padding_bottom:I

    invoke-static {p1, p3}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->a(Landroid/content/Context;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setId(I)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_grid_item_icon_size:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    new-instance p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p3, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v0, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    iput v0, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    iput v0, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->b(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setId(I)V

    new-instance p2, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {p2}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    sget p3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_bottom_sheet_grid_item_text_color:I

    const-string v1, "textColor"

    invoke-virtual {p2, v1, p3}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->d:Landroid/widget/TextView;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_grid_item_text_style:I

    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->d:Landroid/widget/TextView;

    invoke-static {p3, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/i/a;)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getId()I

    move-result p3

    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    sget p3, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_grid_item_text_margin_top:I

    invoke-static {p1, p3}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModelTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetGridItemView;->e:Ljava/lang/Object;

    return-object v0
.end method
