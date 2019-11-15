.class public Lcom/github/mikephil/charting/a/a;
.super Ljava/lang/Object;
.source "ChartAnimator.java"


# instance fields
.field protected a:F

.field protected b:F

.field private c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/github/mikephil/charting/a/a;->a:F

    iput v0, p0, Lcom/github/mikephil/charting/a/a;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/github/mikephil/charting/a/a;->a:F

    iput v0, p0, Lcom/github/mikephil/charting/a/a;->b:F

    iput-object p1, p0, Lcom/github/mikephil/charting/a/a;->c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/a/a;->a:F

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/a/a;->b:F

    return v0
.end method
