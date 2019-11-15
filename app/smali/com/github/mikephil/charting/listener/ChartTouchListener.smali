.class public abstract Lcom/github/mikephil/charting/listener/ChartTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChartTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<*>;>",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field protected b:I

.field protected c:Lcom/github/mikephil/charting/d/d;

.field protected d:Landroid/view/GestureDetector;

.field protected e:Lcom/github/mikephil/charting/charts/Chart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method protected static a(FFFF)F
    .locals 2

    sub-float v0, p0, p1

    sub-float v1, p2, p3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-interface {v0, p1, v1}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/github/mikephil/charting/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->c:Lcom/github/mikephil/charting/d/d;

    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/d/d;Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->c:Lcom/github/mikephil/charting/d/d;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/d/d;->a(Lcom/github/mikephil/charting/d/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/Chart;->a(Lcom/github/mikephil/charting/d/d;Z)V

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->c:Lcom/github/mikephil/charting/d/d;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, p1, v1}, Lcom/github/mikephil/charting/charts/Chart;->a(Lcom/github/mikephil/charting/d/d;Z)V

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->c:Lcom/github/mikephil/charting/d/d;

    goto :goto_0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-interface {v0, p1, v1}, Lcom/github/mikephil/charting/listener/b;->b(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V

    :cond_0
    return-void
.end method
