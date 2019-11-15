.class public Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;
.super Landroid/text/style/ReplacementSpan;
.source "JumpingSpan.java"


# instance fields
.field private translationX:F

.field private translationY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;->translationX:F

    iput v0, p0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;->translationY:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7

    iget v0, p0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;->translationX:F

    add-float v4, p5, v0

    int-to-float v0, p7

    iget v1, p0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;->translationY:F

    add-float v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public setTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;->translationX:F

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/waitingdots/JumpingSpan;->translationY:F

    return-void
.end method
