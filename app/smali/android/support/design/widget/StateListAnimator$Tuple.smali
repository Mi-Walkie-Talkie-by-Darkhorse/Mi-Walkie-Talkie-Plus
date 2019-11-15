.class Landroid/support/design/widget/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tuple"
.end annotation


# instance fields
.field final mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field final mSpecs:[I


# direct methods
.method constructor <init>([ILandroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    iput-object p2, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    return-void
.end method
