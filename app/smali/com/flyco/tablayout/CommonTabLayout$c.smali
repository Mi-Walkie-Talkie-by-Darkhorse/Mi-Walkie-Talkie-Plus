.class Lcom/flyco/tablayout/CommonTabLayout$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyco/tablayout/CommonTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/flyco/tablayout/CommonTabLayout$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flyco/tablayout/CommonTabLayout;


# direct methods
.method constructor <init>(Lcom/flyco/tablayout/CommonTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/flyco/tablayout/CommonTabLayout$c;->a:Lcom/flyco/tablayout/CommonTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLcom/flyco/tablayout/CommonTabLayout$b;Lcom/flyco/tablayout/CommonTabLayout$b;)Lcom/flyco/tablayout/CommonTabLayout$b;
    .locals 2

    iget v0, p2, Lcom/flyco/tablayout/CommonTabLayout$b;->a:F

    iget v1, p3, Lcom/flyco/tablayout/CommonTabLayout$b;->a:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget p2, p2, Lcom/flyco/tablayout/CommonTabLayout$b;->b:F

    iget p3, p3, Lcom/flyco/tablayout/CommonTabLayout$b;->b:F

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    new-instance p1, Lcom/flyco/tablayout/CommonTabLayout$b;

    iget-object p3, p0, Lcom/flyco/tablayout/CommonTabLayout$c;->a:Lcom/flyco/tablayout/CommonTabLayout;

    invoke-direct {p1, p3}, Lcom/flyco/tablayout/CommonTabLayout$b;-><init>(Lcom/flyco/tablayout/CommonTabLayout;)V

    iput v0, p1, Lcom/flyco/tablayout/CommonTabLayout$b;->a:F

    iput p2, p1, Lcom/flyco/tablayout/CommonTabLayout$b;->b:F

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/flyco/tablayout/CommonTabLayout$b;

    check-cast p3, Lcom/flyco/tablayout/CommonTabLayout$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flyco/tablayout/CommonTabLayout$c;->a(FLcom/flyco/tablayout/CommonTabLayout$b;Lcom/flyco/tablayout/CommonTabLayout$b;)Lcom/flyco/tablayout/CommonTabLayout$b;

    move-result-object p1

    return-object p1
.end method
