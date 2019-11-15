.class public Lcom/wang/avi/indicators/LineScalePulseOutRapidIndicator;
.super Lcom/wang/avi/indicators/LineScaleIndicator;
.source "LineScalePulseOutRapidIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v6, [J

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget-wide v4, v2, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/wang/avi/indicators/LineScalePulseOutRapidIndicator$1;

    invoke-direct {v4, p0, v0}, Lcom/wang/avi/indicators/LineScalePulseOutRapidIndicator$1;-><init>(Lcom/wang/avi/indicators/LineScalePulseOutRapidIndicator;I)V

    invoke-virtual {p0, v3, v4}, Lcom/wang/avi/indicators/LineScalePulseOutRapidIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 8
        0x190
        0xc8
        0x0
        0xc8
        0x190
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
