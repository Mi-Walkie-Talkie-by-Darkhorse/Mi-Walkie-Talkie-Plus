.class Lcom/ifengyu/intercom/ui/widget/dialog/j;
.super Landroid/view/animation/Animation;
.source "HeightAnimation.java"


# instance fields
.field protected final a:I

.field protected final b:Landroid/view/View;

.field protected c:F


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Landroid/view/View;

    .line 3
    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->a:I

    sub-int/2addr p3, p2

    int-to-float p1, p3

    .line 4
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->c:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->c:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
