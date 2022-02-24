.class public Lb/a/a/a/a/a;
.super Ljava/lang/Object;
.source "ChartAnimator.java"


# instance fields
.field protected a:F

.field protected b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lb/a/a/a/a/a;->a:F

    .line 3
    iput v0, p0, Lb/a/a/a/a/a;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lb/a/a/a/a/a;->a:F

    .line 6
    iput p1, p0, Lb/a/a/a/a/a;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/a/a/a;->b:F

    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/a/a/a;->a:F

    return v0
.end method
