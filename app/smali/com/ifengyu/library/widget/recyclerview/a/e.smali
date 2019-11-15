.class public Lcom/ifengyu/library/widget/recyclerview/a/e;
.super Ljava/lang/Object;
.source "SlideInLeftAnimation.java"

# interfaces
.implements Lcom/ifengyu/library/widget/recyclerview/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Landroid/animation/Animator;

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    return-object v0
.end method
