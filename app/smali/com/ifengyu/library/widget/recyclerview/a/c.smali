.class public Lcom/ifengyu/library/widget/recyclerview/a/c;
.super Ljava/lang/Object;
.source "ScaleInAnimation.java"

# interfaces
.implements Lcom/ifengyu/library/widget/recyclerview/a/b;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/a/c;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/a/c;->a:F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "scaleX"

    new-array v1, v6, [F

    iget v2, p0, Lcom/ifengyu/library/widget/recyclerview/a/c;->a:F

    aput v2, v1, v4

    aput v7, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "scaleY"

    new-array v2, v6, [F

    iget v3, p0, Lcom/ifengyu/library/widget/recyclerview/a/c;->a:F

    aput v3, v2, v4

    aput v7, v2, v5

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v6, [Landroid/animation/ObjectAnimator;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    return-object v2
.end method
