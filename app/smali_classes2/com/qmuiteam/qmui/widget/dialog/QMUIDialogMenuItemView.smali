.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
.super Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;
.source "QMUIDialogMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$CheckItemView;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$a;
    }
.end annotation


# instance fields
.field private c:I

.field private d:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_menu_item_style:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->c:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->e:Z

    .line 4
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object p1

    .line 5
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_s_dialog_menu_item_bg:I

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/c/h;->c(I)Lcom/qmuiteam/qmui/c/h;

    .line 6
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 7
    invoke-static {p1}, Lcom/qmuiteam/qmui/c/h;->r(Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuTextStyleDef:[I

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_menu_item_style:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 5
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuTextStyleDef_android_gravity:I

    if-ne v3, v5, :cond_0

    const/4 v5, -0x1

    .line 6
    invoke-virtual {p0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 7
    :cond_0
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuTextStyleDef_android_textColor:I

    if-ne v3, v5, :cond_1

    .line 8
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 9
    :cond_1
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuTextStyleDef_android_textSize:I

    if-ne v3, v5, :cond_2

    .line 10
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setId(I)V

    const/4 p0, 0x1

    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 14
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 15
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 16
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object p0

    .line 17
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_menu_item_text_color:I

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/c/h;->w(I)Lcom/qmuiteam/qmui/c/h;

    .line 18
    invoke-static {v0, p0}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 19
    invoke-static {p0}, Lcom/qmuiteam/qmui/c/h;->r(Lcom/qmuiteam/qmui/c/h;)V

    return-object v0
.end method


# virtual methods
.method public getMenuIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->c:I

    return v0
.end method

.method protected l(Z)V
    .locals 0

    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->d:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$a;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->c:I

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$a;->a(I)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->e:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->l(Z)V

    return-void
.end method

.method public setListener(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->d:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$a;

    return-void
.end method

.method public setMenuIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->c:I

    return-void
.end method
