.class public Lcom/qmuiteam/qmui/widget/dialog/b$a;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.source "QMUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder<",
        "Lcom/qmuiteam/qmui/widget/dialog/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected t:Ljava/lang/String;

.field protected u:Landroid/text/method/TransformationMethod;

.field protected v:Landroid/widget/EditText;

.field protected w:Landroidx/appcompat/widget/AppCompatImageView;

.field private x:I

.field private y:Ljava/lang/CharSequence;

.field private z:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->x:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->y:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    new-instance p1, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 9
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_edit_bottom_line_height:I

    .line 10
    invoke-static {p3, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_edit_bottom_line_color:I

    .line 11
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1, v1, p2, v0}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;->a(IIII)V

    .line 13
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object p2

    .line 14
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_edit_bottom_line_color:I

    invoke-virtual {p2, v0}, Lcom/qmuiteam/qmui/c/h;->e(I)Lcom/qmuiteam/qmui/c/h;

    .line 15
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 16
    new-instance v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v0, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b()Z

    move-result v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_edit_content_style:I

    invoke-static {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->a(Landroid/widget/TextView;ZI)V

    .line 19
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 20
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 21
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 22
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_edit_input:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 23
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->y:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->y:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->z:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 26
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 27
    :cond_1
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    .line 28
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_edit_text_color:I

    invoke-virtual {p2, v0}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    .line 29
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_edit_text_hint_color:I

    invoke-virtual {p2, v0}, Lcom/qmuiteam/qmui/c/h;->f(I)Lcom/qmuiteam/qmui/c/h;

    .line 30
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-static {v0, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 31
    invoke-static {p2}, Lcom/qmuiteam/qmui/c/h;->a(Lcom/qmuiteam/qmui/c/h;)V

    .line 32
    new-instance p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->w:Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_edit_right_icon:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 34
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->w:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->w:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-virtual {p0, p2, v0}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;)V

    .line 36
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->u:Landroid/text/method/TransformationMethod;

    if-eqz p2, :cond_2

    .line 37
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 38
    :cond_2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->x:I

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 39
    :goto_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->t:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 40
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 41
    :cond_3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-virtual {p0, p3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->w:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->f(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method protected a(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    .line 3
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_padding_horizontal:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    .line 4
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_edit_margin_top:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_edit_margin_bottom:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->y:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V

    const-string p2, "input_method"

    .line 44
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 45
    new-instance p3, Lcom/qmuiteam/qmui/widget/dialog/b$a$a;

    invoke-direct {p3, p0, p2}, Lcom/qmuiteam/qmui/widget/dialog/b$a$a;-><init>(Lcom/qmuiteam/qmui/widget/dialog/b$a;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    new-instance p3, Lcom/qmuiteam/qmui/widget/dialog/b$a$b;

    invoke-direct {p3, p0, p2}, Lcom/qmuiteam/qmui/widget/dialog/b$a$b;-><init>(Lcom/qmuiteam/qmui/widget/dialog/b$a;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->t:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->x:I

    return-object p0
.end method

.method public e()Landroid/widget/EditText;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method protected e(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 3

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 3
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 4
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 5
    sget v2, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_edit_right_icon:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 7
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    return-object v0
.end method

.method public e(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->b(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    return-object p0
.end method

.method protected f(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_edit_input:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    return-object p1
.end method
