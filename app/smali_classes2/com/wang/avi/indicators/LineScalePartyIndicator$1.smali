.class Lcom/wang/avi/indicators/LineScalePartyIndicator$1;
.super Ljava/lang/Object;
.source "LineScalePartyIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/LineScalePartyIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/LineScalePartyIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/LineScalePartyIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePartyIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePartyIndicator;

    iget-object v1, v0, Lcom/wang/avi/indicators/LineScalePartyIndicator;->scaleFloats:[F

    iget v2, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePartyIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/LineScalePartyIndicator;->postInvalidate()V

    return-void
.end method
