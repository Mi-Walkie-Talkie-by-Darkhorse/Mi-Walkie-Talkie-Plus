.class Landroidx/recyclerview/widget/e$d;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/e;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/e$d;->a:Landroidx/recyclerview/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/e$d;->a:Landroidx/recyclerview/widget/e;

    iget-object v0, v0, Landroidx/recyclerview/widget/e;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/e$d;->a:Landroidx/recyclerview/widget/e;

    iget-object v0, v0, Landroidx/recyclerview/widget/e;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/e$d;->a:Landroidx/recyclerview/widget/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e;->a()V

    return-void
.end method
