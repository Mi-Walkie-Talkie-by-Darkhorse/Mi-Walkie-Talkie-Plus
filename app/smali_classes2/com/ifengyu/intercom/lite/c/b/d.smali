.class public Lcom/ifengyu/intercom/lite/c/b/d;
.super Lcom/qmuiteam/qmui/widget/dialog/b$a;


# instance fields
.field private A:Landroid/text/TextWatcher;

.field private B:Z

.field private C:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(III)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    const v0, 0x7f0600cd

    invoke-static {p1, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    return-void
.end method

.method static synthetic a(Landroid/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    if-eqz p1, :cond_1

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

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/c/b/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/lite/c/b/d;->B:Z

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/c/b/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/c/b/d;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/c/b/d;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/c/b/d;->A:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/c/b/d;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/c/b/d;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/widget/EditText;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/d;->C:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;)V
    .locals 3

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    const p1, 0x7f080061

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080116

    invoke-static {p1, v0}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d;->C:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/d;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Lcom/ifengyu/intercom/lite/c/b/a;

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/lite/c/b/a;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    new-instance p1, Lcom/ifengyu/intercom/lite/c/b/d$a;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/lite/c/b/d$a;-><init>(Lcom/ifengyu/intercom/lite/c/b/d;Landroid/widget/EditText;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d;->A:Landroid/text/TextWatcher;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Lcom/ifengyu/intercom/lite/c/b/d$b;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/lite/c/b/d$b;-><init>(Lcom/ifengyu/intercom/lite/c/b/d;Landroid/widget/EditText;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, Lcom/ifengyu/intercom/lite/c/b/d$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/lite/c/b/d$c;-><init>(Lcom/ifengyu/intercom/lite/c/b/d;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;)V
    .locals 3

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/d;->f(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setMinWidth(I)V

    return-void
.end method

.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f120364

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V

    return-void
.end method
