.class public Lcom/ifengyu/library/widget/view/ClearEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "ClearEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/ifengyu/library/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/view/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->a()V

    return-void
.end method

.method public static a(I)Landroid/view/animation/TranslateAnimation;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ifengyu/library/R$drawable;->common_btn_clear:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Lcom/ifengyu/library/widget/view/ClearEditText;->setClearIconVisible(Z)V

    invoke-virtual {p0, p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    const-class v0, Lcom/ifengyu/library/widget/view/ClearEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatEditText;->onDetachedFromWindow()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean p2, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->b:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ClearEditText;->setClearIconVisible(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ClearEditText;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->b:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ClearEditText;->setClearIconVisible(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getTotalPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/ifengyu/library/widget/view/ClearEditText;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/ifengyu/library/widget/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setClearIconVisible(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/ifengyu/library/widget/view/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShakeAnimation()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/ClearEditText;->a(I)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ClearEditText;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
