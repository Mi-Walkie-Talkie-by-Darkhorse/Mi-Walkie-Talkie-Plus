.class Lcom/wang/avi/indicators/BallScaleIndicator$2;
.super Ljava/lang/Object;
.source "BallScaleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallScaleIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallScaleIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallScaleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/wang/avi/indicators/BallScaleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/wang/avi/indicators/BallScaleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/wang/avi/indicators/BallScaleIndicator;->alpha:I

    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallScaleIndicator;->postInvalidate()V

    return-void
.end method
