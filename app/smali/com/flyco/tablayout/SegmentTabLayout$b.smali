.class Lcom/flyco/tablayout/SegmentTabLayout$b;
.super Ljava/lang/Object;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyco/tablayout/SegmentTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/flyco/tablayout/SegmentTabLayout$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flyco/tablayout/SegmentTabLayout;


# direct methods
.method constructor <init>(Lcom/flyco/tablayout/SegmentTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout$b;->a:Lcom/flyco/tablayout/SegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLcom/flyco/tablayout/SegmentTabLayout$a;Lcom/flyco/tablayout/SegmentTabLayout$a;)Lcom/flyco/tablayout/SegmentTabLayout$a;
    .locals 4

    iget v0, p2, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    iget v1, p3, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    iget v2, p2, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p2, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    iget v2, p3, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    iget v3, p2, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    new-instance v2, Lcom/flyco/tablayout/SegmentTabLayout$a;

    iget-object v3, p0, Lcom/flyco/tablayout/SegmentTabLayout$b;->a:Lcom/flyco/tablayout/SegmentTabLayout;

    invoke-direct {v2, v3}, Lcom/flyco/tablayout/SegmentTabLayout$a;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    iput v0, v2, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    iput v1, v2, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    return-object v2
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/flyco/tablayout/SegmentTabLayout$a;

    check-cast p3, Lcom/flyco/tablayout/SegmentTabLayout$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flyco/tablayout/SegmentTabLayout$b;->a(FLcom/flyco/tablayout/SegmentTabLayout$a;Lcom/flyco/tablayout/SegmentTabLayout$a;)Lcom/flyco/tablayout/SegmentTabLayout$a;

    move-result-object v0

    return-object v0
.end method
