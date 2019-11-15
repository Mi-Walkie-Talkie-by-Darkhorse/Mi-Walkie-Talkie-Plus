.class Lcom/wang/avi/indicators/BallGridPulseIndicator$1;
.super Ljava/lang/Object;
.source "BallGridPulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallGridPulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallGridPulseIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    iget-object v1, v0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->scaleFloats:[F

    iget v2, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->postInvalidate()V

    return-void
.end method
