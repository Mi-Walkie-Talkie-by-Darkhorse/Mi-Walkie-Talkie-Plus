.class public Lcom/ifengyu/intercom/m/b/e;
.super Lcom/qmuiteam/qmui/widget/dialog/b$a;
.source "EditTextDialogBuilder.java"


# instance fields
.field private A:Landroid/text/TextWatcher;

.field private B:Z

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/m/b/e;->D:I

    return-void
.end method

.method static synthetic L(Lcom/ifengyu/intercom/m/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/m/b/e;->B:Z

    return p0
.end method

.method static synthetic M(Lcom/ifengyu/intercom/m/b/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/m/b/e;->B:Z

    return p1
.end method

.method static synthetic N(Lcom/ifengyu/intercom/m/b/e;)Landroid/text/TextWatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/m/b/e;->A:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic O(Lcom/ifengyu/intercom/m/b/e;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic P(Lcom/ifengyu/intercom/m/b/e;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    return-object p0
.end method

.method private Q(Lcom/qmuiteam/qmui/layout/QMUILinearLayout;)Lcom/qmuiteam/qmui/layout/QMUIButton;
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/m/b/e;->D:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/m/b/e;->D:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/ifengyu/intercom/m/b/e;->D:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/m/b/e;->D:I

    .line 4
    instance-of v1, v0, Lcom/qmuiteam/qmui/layout/QMUIButton;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIButton;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic R(Landroid/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return v0
.end method


# virtual methods
.method protected D(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    const p1, 0x7f08006c

    .line 2
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080153

    invoke-static {p1, v0}, Landroidx/core/content/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/e;->C:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/e;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    new-instance p1, Lcom/ifengyu/intercom/m/b/a;

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/m/b/a;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/m/b/e$a;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/m/b/e$a;-><init>(Lcom/ifengyu/intercom/m/b/e;Landroid/widget/EditText;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/e;->A:Landroid/text/TextWatcher;

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    new-instance p1, Lcom/ifengyu/intercom/m/b/e$b;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/m/b/e$b;-><init>(Lcom/ifengyu/intercom/m/b/e;Landroid/widget/EditText;)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 11
    new-instance p1, Lcom/ifengyu/intercom/m/b/e$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/m/b/e$c;-><init>(Lcom/ifengyu/intercom/m/b/e;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method protected S(Landroid/widget/EditText;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/e;->C:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 4
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected e(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/d;->h(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setMinWidth(I)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setMaxWidth(I)V

    return-void
.end method

.method protected j(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x51

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f120360

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->getDialogView()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    move-result-object v0

    const v1, 0x7f090388

    .line 5
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v2, v3, :cond_3

    .line 7
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 8
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/m/b/e;->Q(Lcom/qmuiteam/qmui/layout/QMUILinearLayout;)Lcom/qmuiteam/qmui/layout/QMUIButton;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->e()I

    move-result v6

    if-ne v6, v4, :cond_1

    const v3, 0x7f080069

    .line 10
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->e()I

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f08006a

    .line 12
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v2, v4, :cond_4

    .line 14
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, p3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {v2, v3}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 18
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->j(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V

    return-void
.end method

.method protected n(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04042c

    .line 2
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f040393

    .line 3
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;->setRadius(II)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->A(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;)V

    return-object v0
.end method
