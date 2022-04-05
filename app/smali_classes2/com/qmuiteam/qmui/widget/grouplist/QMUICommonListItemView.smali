.class public Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;
.super Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$a;,
        Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$QMUICommonListItemTipPosition;,
        Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$QMUICommonListItemOrientation;,
        Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$QMUICommonListItemAccessoryType;
    }
.end annotation


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field protected f:Landroid/widget/ImageView;

.field private g:Landroid/view/ViewGroup;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroidx/constraintlayout/widget/Placeholder;

.field private n:Landroidx/constraintlayout/widget/Placeholder;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUICommonListItemViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->e:I

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->o:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->d:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->e:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_detail_h_margin_with_title_large:I

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_detail_h_margin_with_title:I

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    return-void
.end method

.method private getAccessoryImageView()Landroid/widget/ImageView;
    .locals 3

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->getAccessoryLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_common_list_chevron_color:I

    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-static {v1}, Lcom/qmuiteam/qmui/c/h;->a(Lcom/qmuiteam/qmui/c/h;)V

    return-object v0
.end method

.method private getAccessoryLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$layout;->qmui_common_list_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUICommonListItemView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICommonListItemView_qmui_orientation:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUICommonListItemView_qmui_accessory_type:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUICommonListItemView_qmui_common_list_title_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sget v2, Lcom/qmuiteam/qmui/R$styleable;->QMUICommonListItemView_qmui_common_list_detail_color:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget p1, Lcom/qmuiteam/qmui/R$id;->group_list_item_imageView:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->f:Landroid/widget/ImageView;

    sget p1, Lcom/qmuiteam/qmui/R$id;->group_list_item_textView:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    sget p1, Lcom/qmuiteam/qmui/R$id;->group_list_item_tips_dot:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->k:Landroid/widget/ImageView;

    sget p1, Lcom/qmuiteam/qmui/R$id;->group_list_item_tips_new:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->l:Landroid/widget/ImageView;

    sget p1, Lcom/qmuiteam/qmui/R$id;->group_list_item_detailTextView:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    sget p1, Lcom/qmuiteam/qmui/R$id;->group_list_item_holder_after_title:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Placeholder;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->m:Landroidx/constraintlayout/widget/Placeholder;

    sget p1, Lcom/qmuiteam/qmui/R$id;->group_list_item_holder_before_accessory:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Placeholder;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->n:Landroidx/constraintlayout/widget/Placeholder;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->m:Landroidx/constraintlayout/widget/Placeholder;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Placeholder;->setEmptyVisibility(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->n:Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Placeholder;->setEmptyVisibility(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lcom/qmuiteam/qmui/R$id;->group_list_item_accessoryView:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->setOrientation(I)V

    invoke-virtual {p0, p3}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->setAccessoryType(I)V

    return-void
.end method

.method public getAccessoryContainerView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getAccessoryType()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->c:I

    return v0
.end method

.method public getDetailText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDetailTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->d:I

    return v0
.end method

.method public getSwitch()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAccessoryType(I)V
    .locals 4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->c:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    if-nez p1, :cond_2

    new-instance p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_switch:I

    invoke-static {v2, v3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->getAccessoryLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->o:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->getAccessoryImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_chevron:I

    invoke-static {v2, v3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_5

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    goto :goto_1

    :cond_5
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    :goto_1
    return-void
.end method

.method public setDetailText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDisableSwitchSelf(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->o:Z

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->j:Landroid/widget/CheckBox;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->f:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->f:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 7

    iget v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->d:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_title_v_text_size:I

    invoke-static {v5, v6}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_detail_v_text_size:I

    invoke-static {v5, v6}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    const/4 p1, 0x2

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_detail_v_margin_with_title:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_title_h_text_size:I

    invoke-static {v5, v6}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/qmuiteam/qmui/R$attr;->qmui_common_list_item_detail_h_text_size:I

    invoke-static {v5, v6}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, 0x1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->b()V

    :goto_0
    return-void
.end method

.method public setSkinConfig(Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$a;)V
    .locals 2

    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    iget v1, p1, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$a;->a:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    :cond_0
    iget v1, p1, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$a;->b:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->m(I)Lcom/qmuiteam/qmui/c/h;

    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->f:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    iget v1, p1, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$a;->c:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    :cond_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    iget v1, p1, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$a;->d:I

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    :cond_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->i:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    iget v1, p1, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$a;->e:I

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->m(I)Lcom/qmuiteam/qmui/c/h;

    :cond_4
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->l:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    iget p1, p1, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$a;->f:I

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/c/h;->c(I)Lcom/qmuiteam/qmui/c/h;

    :cond_5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->k:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->d()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTipPosition(I)V
    .locals 3

    iput p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->e:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, -0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->e:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->m:Landroidx/constraintlayout/widget/Placeholder;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Placeholder;->setContentId(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->n:Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Placeholder;->setContentId(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->n:Landroidx/constraintlayout/widget/Placeholder;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Placeholder;->setContentId(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->m:Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Placeholder;->setContentId(I)V

    :goto_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->e:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->m:Landroidx/constraintlayout/widget/Placeholder;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Placeholder;->setContentId(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->n:Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Placeholder;->setContentId(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->n:Landroidx/constraintlayout/widget/Placeholder;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Placeholder;->setContentId(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->m:Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Placeholder;->setContentId(I)V

    :goto_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->b()V

    return-void
.end method
