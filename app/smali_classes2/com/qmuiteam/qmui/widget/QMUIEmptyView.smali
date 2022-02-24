.class public Lcom/qmuiteam/qmui/widget/QMUIEmptyView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "QMUIEmptyView.java"


# instance fields
.field private a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field protected d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->c()V

    .line 5
    sget-object p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIEmptyView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIEmptyView_qmui_show_loading:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 7
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIEmptyView_qmui_title_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIEmptyView_qmui_detail_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIEmptyView_qmui_btn_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x0

    move-object v0, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$layout;->qmui_empty_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$id;->empty_view_loading:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$id;->empty_view_title:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->b:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/qmuiteam/qmui/R$id;->empty_view_detail:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->c:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/qmuiteam/qmui/R$id;->empty_view_button:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->d:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->setLoadingShowing(Z)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->setTitleText(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->setDetailText(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p4, p5}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setBtnSkinValue(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->d:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->d:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->d:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDetailColor(I)V
    .locals 1
    .annotation runtime Lcom/qmuiteam/qmui/skin/annotation/QMUISkinChangeNotAdapted;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setDetailSkinValue(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setDetailText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setLoadingShowing(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setLoadingSkinValue(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .annotation runtime Lcom/qmuiteam/qmui/skin/annotation/QMUISkinChangeNotAdapted;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleSkinValue(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIEmptyView;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
