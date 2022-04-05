.class public Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder$IconType;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/CharSequence;

.field private d:Lcom/qmuiteam/qmui/c/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1
.end method

.method protected a(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_0

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_text_margin_top:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    return-object v0
.end method

.method public a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 1

    sget v0, Lcom/qmuiteam/qmui/R$style;->QMUI_TipDialog:I

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(ZI)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    return-object p1
.end method

.method public a(ZI)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 6

    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/a;->setCancelable(Z)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->d:Lcom/qmuiteam/qmui/c/g;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/a;->a(Lcom/qmuiteam/qmui/c/g;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;

    invoke-direct {p2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-direct {v2, p1}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_loading_color:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setColor(I)V

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_loading_size:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setSize(I)V

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_loading_color:I

    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    invoke-static {v2, v1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_4

    :cond_1
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    iget v5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    if-ne v5, v4, :cond_2

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_success_src:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_success_src:I

    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/c/h;->m(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_0

    :cond_2
    if-ne v5, v3, :cond_3

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_error_src:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_error_src:I

    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/c/h;->m(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_0

    :cond_3
    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_info_src:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_info_src:I

    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/c/h;->m(I)Lcom/qmuiteam/qmui/c/h;

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v2, v1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_text_size:I

    invoke-static {p1, v4}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_text_color:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_text_color:I

    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    invoke-static {v2, v1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    iget v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    invoke-virtual {p0, p1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->d()V

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/d;->setContentView(Landroid/view/View;)V

    return-object v0
.end method
