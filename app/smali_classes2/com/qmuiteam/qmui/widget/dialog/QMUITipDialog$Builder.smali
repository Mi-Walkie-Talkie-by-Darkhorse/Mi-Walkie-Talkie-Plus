.class public Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;
.super Ljava/lang/Object;
.source "QMUITipDialog.java"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 1

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$style;->QMUI_TipDialog:I

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b(ZI)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    return-object p1
.end method

.method public b(ZI)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 6

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/a;->setCancelable(Z)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->d:Lcom/qmuiteam/qmui/c/g;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/a;->b(Lcom/qmuiteam/qmui/c/g;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;

    invoke-direct {p2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object v1

    .line 7
    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 8
    new-instance v2, Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-direct {v2, p1}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;-><init>(Landroid/content/Context;)V

    .line 9
    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_loading_color:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setColor(I)V

    .line 10
    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_loading_size:I

    invoke-static {p1, v4}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setSize(I)V

    .line 11
    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/c/h;->D(I)Lcom/qmuiteam/qmui/c/h;

    .line 12
    invoke-static {v2, v1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->c(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

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

    .line 14
    :cond_1
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->j()Lcom/qmuiteam/qmui/c/h;

    .line 16
    iget v5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    if-ne v5, v4, :cond_2

    .line 17
    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_success_src:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 18
    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/c/h;->u(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_0

    :cond_2
    if-ne v5, v3, :cond_3

    .line 19
    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_error_src:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 20
    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/c/h;->u(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_0

    .line 21
    :cond_3
    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_icon_info_src:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 22
    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/c/h;->u(I)Lcom/qmuiteam/qmui/c/h;

    .line 23
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-static {v2, v1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->c(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 27
    new-instance v2, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v3, 0x11

    .line 29
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    .line 30
    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_text_size:I

    .line 31
    invoke-static {p1, v4}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tip_dialog_text_color:I

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->j()Lcom/qmuiteam/qmui/c/h;

    .line 36
    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/c/h;->w(I)Lcom/qmuiteam/qmui/c/h;

    .line 37
    invoke-static {v2, v1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 38
    iget v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    invoke-virtual {p0, p1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->d(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    :cond_5
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->q()V

    .line 40
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/d;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1
.end method

.method protected d(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_0

    .line 2
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_tip_dialog_text_margin_top:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    return-object v0
.end method

.method public e(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a:I

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->c:Ljava/lang/CharSequence;

    return-object p0
.end method
