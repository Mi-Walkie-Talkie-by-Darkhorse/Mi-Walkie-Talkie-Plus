.class Lcom/wang/avi/indicators/CubeTransitionIndicator$3;
.super Ljava/lang/Object;
.source "CubeTransitionIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/CubeTransitionIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/wang/avi/indicators/CubeTransitionIndicator;->scaleFloat:F

    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->postInvalidate()V

    return-void
.end method
