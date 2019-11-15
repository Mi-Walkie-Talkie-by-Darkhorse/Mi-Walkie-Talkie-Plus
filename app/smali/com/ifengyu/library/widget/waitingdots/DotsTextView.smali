.class public Lcom/ifengyu/library/widget/waitingdots/DotsTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "DotsTextView.java"


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

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

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

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->showSpeed:I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->showSpeed:I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createDotHideAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;F)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->textWidth:F

    neg-float v1, v1

    mul-float/2addr v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotHorizontalAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createDotHorizontalAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;FF)Landroid/animation/ObjectAnimator;
    .locals 4

    const-string v0, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->showSpeed:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private createDotJumpAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;J)Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v4, 0x1

    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    iget v2, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->jumpHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v4

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/library/widget/waitingdots/SinTypeEvaluator;

    invoke-direct {v1}, Lcom/ifengyu/library/widget/waitingdots/SinTypeEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    return-object v0
.end method

.method private createDotShowAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;I)Landroid/animation/ObjectAnimator;
    .locals 2

    iget v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->textWidth:F

    neg-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotHorizontalAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/high16 v5, 0x40800000    # 4.0f

    const/16 v3, 0x21

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/ifengyu/library/R$styleable;->WaitingDots:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ifengyu/library/R$styleable;->WaitingDots_period:I

    const/16 v2, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    sget v1, Lcom/ifengyu/library/R$styleable;->WaitingDots_jumpHeight:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->jumpHeight:I

    sget v1, Lcom/ifengyu/library/R$styleable;->WaitingDots_autoplay:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->autoPlay:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    new-instance v0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotOne:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    new-instance v0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    new-instance v0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "...\u200b"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotOne:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    invoke-virtual {v0, v1, v4, v6, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    invoke-virtual {v0, v1, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1, v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->textWidth:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotOne:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotJumpAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/library/widget/waitingdots/InvalidateViewOnUpdate;

    invoke-direct {v1, p0}, Lcom/ifengyu/library/widget/waitingdots/InvalidateViewOnUpdate;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotTwo:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    iget v3, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    div-int/lit8 v3, v3, 0x6

    int-to-long v4, v3

    invoke-direct {p0, v0, v4, v5}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotJumpAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->dotThree:Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;

    iget v3, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x6

    int-to-long v4, v3

    invoke-direct {p0, v0, v4, v5}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->createDotJumpAnimator(Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->autoPlay:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isPlaying:Z

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->autoPlay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->start()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->period:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->getTextSize()F

    move-result v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->jumpHeight:I

    iput-boolean v6, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->autoPlay:Z

    goto/16 :goto_0
.end method

.method private setAllAnimationsRepeatCount(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    instance-of v2, v0, Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

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
