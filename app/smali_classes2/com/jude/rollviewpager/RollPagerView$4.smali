.class Lcom/jude/rollviewpager/RollPagerView$4;
.super Landroid/widget/Scroller;
.source "RollPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jude/rollviewpager/RollPagerView;->setAnimationDurtion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jude/rollviewpager/RollPagerView;


# direct methods
.method constructor <init>(Lcom/jude/rollviewpager/RollPagerView;Landroid/content/Context;Landroid/view/animation/Interpolator;I)V
    .locals 0

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView$4;->b:Lcom/jude/rollviewpager/RollPagerView;

    iput p4, p0, Lcom/jude/rollviewpager/RollPagerView$4;->a:I

    invoke-direct {p0, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 6

    iget v5, p0, Lcom/jude/rollviewpager/RollPagerView$4;->a:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jude/rollviewpager/RollPagerView$4;->b:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v2}, Lcom/jude/rollviewpager/RollPagerView;->g(Lcom/jude/rollviewpager/RollPagerView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/jude/rollviewpager/RollPagerView$4;->b:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v2}, Lcom/jude/rollviewpager/RollPagerView;->h(Lcom/jude/rollviewpager/RollPagerView;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v5, p0, Lcom/jude/rollviewpager/RollPagerView$4;->a:I

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void

    :cond_0
    div-int/lit8 v5, p5, 0x2

    goto :goto_0
.end method
