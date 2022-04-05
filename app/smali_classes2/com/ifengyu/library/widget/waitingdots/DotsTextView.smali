.class public Lcom/ifengyu/library/widget/waitingdots/DotsTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;


# instance fields
.field private autoPlay:Z

.field private dotOne:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

.field private dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

.field private dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

.field private handler:Landroid/os/Handler;

.field private isHide:Z

.field private isPlaying:Z

.field private jumpHeight:I

.field private lockDotOne:Z

.field private lockDotThree:Z

.field private lockDotTwo:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private period:I

.field private showSpeed:I

.field private startTime:J

.field private textWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->showSpeed:I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->showSpeed:I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x2bc

    iput p3, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->showSpeed:I

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createDotHideAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;F)Landroid/animation/ObjectAnimator;
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->textWidth:F

    neg-float v0, v0

    mul-float v0, v0, p2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotHorizontalAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private createDotHorizontalAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "translationX"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget p2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->showSpeed:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private createDotJumpAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;J)Landroid/animation/ObjectAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->jumpHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "translationY"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/library/widget/waitingdots/SinTypeEvaluator;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/waitingdots/SinTypeEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    return-object p1
.end method

.method private createDotShowAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;I)Landroid/animation/ObjectAnimator;
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->textWidth:F

    neg-float v0, v0

    int-to-float p2, p2

    mul-float v0, v0, p2

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotHorizontalAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->handler:Landroid/os/Handler;

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    sget-object v2, Lcom/ifengyu/library/R$styleable;->WaitingDots:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/ifengyu/library/R$styleable;->WaitingDots_period:I

    const/16 v2, 0x1770

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    sget p2, Lcom/ifengyu/library/R$styleable;->WaitingDots_jumpHeight:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->jumpHeight:I

    sget p2, Lcom/ifengyu/library/R$styleable;->WaitingDots_autoplay:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->autoPlay:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    iput p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->jumpHeight:I

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->autoPlay:Z

    :goto_0
    new-instance p1, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    invoke-direct {p1}, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotOne:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    new-instance p1, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    invoke-direct {p1}, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    new-instance p1, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    invoke-direct {p1}, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    new-instance p1, Landroid/text/SpannableString;

    const-string p2, "...\u200b"

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotOne:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const/16 v0, 0x21

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const/4 v3, 0x2

    invoke-virtual {p1, p2, v1, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const/4 v4, 0x3

    invoke-virtual {p1, p2, v3, v4, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2, v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->textWidth:F

    iget-object p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotOne:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const-wide/16 v5, 0x0

    invoke-direct {p0, p1, v5, v6}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotJumpAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/library/widget/waitingdots/InvalidateViewOnUpdate;

    invoke-direct {p2, p0}, Lcom/ifengyu/library/widget/waitingdots/InvalidateViewOnUpdate;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    iget v2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    div-int/lit8 v2, v2, 0x6

    int-to-long v4, v2

    invoke-direct {p0, p1, v4, v5}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotJumpAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    iget v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x6

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotJumpAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->autoPlay:Z

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isPlaying:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->start()V

    :cond_1
    return-void
.end method

.method private setAllAnimationsRepeatCount(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    instance-of v2, v1, Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotHideAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotHideAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/library/widget/waitingdots/InvalidateViewOnUpdate;

    invoke-direct {v1, p0}, Lcom/ifengyu/library/widget/waitingdots/InvalidateViewOnUpdate;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isHide:Z

    return-void
.end method

.method public hideAndStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->hide()V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->stop()V

    return-void
.end method

.method public isHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isHide:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isPlaying:Z

    return v0
.end method

.method public setJumpHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->jumpHeight:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotShowAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotShowAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/library/widget/waitingdots/InvalidateViewOnUpdate;

    invoke-direct {v1, p0}, Lcom/ifengyu/library/widget/waitingdots/InvalidateViewOnUpdate;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isHide:Z

    return-void
.end method

.method public showAndPlay()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->show()V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->start()V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isPlaying:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->setAllAnimationsRepeatCount(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isPlaying:Z

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->setAllAnimationsRepeatCount(I)V

    return-void
.end method
