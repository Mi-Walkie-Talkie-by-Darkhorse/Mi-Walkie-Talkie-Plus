.class Lcom/amap/api/maps/SwipeDismissTouchListener$3;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/SwipeDismissTouchListener;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Lcom/amap/api/maps/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$3;->b:Lcom/amap/api/maps/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$3;->b:Lcom/amap/api/maps/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/amap/api/maps/SwipeDismissTouchListener;->b(Lcom/amap/api/maps/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
