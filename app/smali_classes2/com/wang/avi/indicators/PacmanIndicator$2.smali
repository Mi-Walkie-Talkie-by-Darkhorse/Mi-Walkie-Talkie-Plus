.class Lcom/wang/avi/indicators/PacmanIndicator$2;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/wang/avi/indicators/PacmanIndicator$2;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$2;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/wang/avi/indicators/PacmanIndicator;->access$102(Lcom/wang/avi/indicators/PacmanIndicator;I)I

    iget-object p1, p0, Lcom/wang/avi/indicators/PacmanIndicator$2;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {p1}, Lcom/wang/avi/Indicator;->postInvalidate()V

    return-void
.end method
