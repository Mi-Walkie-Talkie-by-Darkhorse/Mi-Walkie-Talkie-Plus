.class Lcom/google/android/material/transition/FitModeResult;
.super Ljava/lang/Object;


# instance fields
.field final currentEndHeight:F

.field final currentEndWidth:F

.field final currentStartHeight:F

.field final currentStartWidth:F

.field final endScale:F

.field final startScale:F


# direct methods
.method constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/transition/FitModeResult;->startScale:F

    iput p2, p0, Lcom/google/android/material/transition/FitModeResult;->endScale:F

    iput p3, p0, Lcom/google/android/material/transition/FitModeResult;->currentStartWidth:F

    iput p4, p0, Lcom/google/android/material/transition/FitModeResult;->currentStartHeight:F

    iput p5, p0, Lcom/google/android/material/transition/FitModeResult;->currentEndWidth:F

    iput p6, p0, Lcom/google/android/material/transition/FitModeResult;->currentEndHeight:F

    return-void
.end method
