.class Lcom/wang/avi/indicators/PacmanIndicator$4;
.super Ljava/lang/Object;
.source "PacmanIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/PacmanIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/PacmanIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/PacmanIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/wang/avi/indicators/PacmanIndicator$4;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/wang/avi/indicators/PacmanIndicator$4;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/wang/avi/indicators/PacmanIndicator;->access$302(Lcom/wang/avi/indicators/PacmanIndicator;F)F

    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$4;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/PacmanIndicator;->postInvalidate()V

    return-void
.end method
