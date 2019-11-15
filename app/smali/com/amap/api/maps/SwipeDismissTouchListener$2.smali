.class Lcom/amap/api/maps/SwipeDismissTouchListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


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

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/maps/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->c:Lcom/amap/api/maps/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->c:Lcom/amap/api/maps/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/amap/api/maps/SwipeDismissTouchListener;->b(Lcom/amap/api/maps/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->c:Lcom/amap/api/maps/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/amap/api/maps/SwipeDismissTouchListener;->b(Lcom/amap/api/maps/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->b:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->c:Lcom/amap/api/maps/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/amap/api/maps/SwipeDismissTouchListener;->b(Lcom/amap/api/maps/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/SwipeDismissTouchListener$2;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
