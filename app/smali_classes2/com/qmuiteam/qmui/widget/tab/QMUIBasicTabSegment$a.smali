.class Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;
.super Ljava/lang/Object;
.source "QMUIBasicTabSegment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

.field final synthetic b:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

.field final synthetic c:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

.field final synthetic d:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

.field final synthetic e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->b:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    iput-object p4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->c:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iput-object p5, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->d:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->b:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->c:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;->d:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-static {v0, v1, v2, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITab;F)V

    return-void
.end method
