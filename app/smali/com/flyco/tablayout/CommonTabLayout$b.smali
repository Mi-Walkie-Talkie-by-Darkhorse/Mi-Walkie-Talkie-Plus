.class Lcom/flyco/tablayout/CommonTabLayout$b;
.super Ljava/lang/Object;
.source "CommonTabLayout.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyco/tablayout/CommonTabLayout;
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
        "Lcom/flyco/tablayout/CommonTabLayout$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flyco/tablayout/CommonTabLayout;


# direct methods
.method constructor <init>(Lcom/flyco/tablayout/CommonTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/flyco/tablayout/CommonTabLayout$b;->a:Lcom/flyco/tablayout/CommonTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLcom/flyco/tablayout/CommonTabLayout$a;Lcom/flyco/tablayout/CommonTabLayout$a;)Lcom/flyco/tablayout/CommonTabLayout$a;
    .locals 4

    iget v0, p2, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    iget v1, p3, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    iget v2, p2, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p2, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    iget v2, p3, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    iget v3, p2, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    new-instance v2, Lcom/flyco/tablayout/CommonTabLayout$a;

    iget-object v3, p0, Lcom/flyco/tablayout/CommonTabLayout$b;->a:Lcom/flyco/tablayout/CommonTabLayout;

    invoke-direct {v2, v3}, Lcom/flyco/tablayout/CommonTabLayout$a;-><init>(Lcom/flyco/tablayout/CommonTabLayout;)V

    iput v0, v2, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    iput v1, v2, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    return-object v2
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/flyco/tablayout/CommonTabLayout$a;

    check-cast p3, Lcom/flyco/tablayout/CommonTabLayout$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flyco/tablayout/CommonTabLayout$b;->a(FLcom/flyco/tablayout/CommonTabLayout$a;Lcom/flyco/tablayout/CommonTabLayout$a;)Lcom/flyco/tablayout/CommonTabLayout$a;

    move-result-object v0

    return-object v0
.end method
