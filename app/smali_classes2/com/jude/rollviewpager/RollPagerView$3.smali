.class Lcom/jude/rollviewpager/RollPagerView$3;
.super Ljava/lang/Object;
.source "RollPagerView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jude/rollviewpager/RollPagerView;->setAnimationDurtion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jude/rollviewpager/RollPagerView;


# direct methods
.method constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView$3;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, p1, v2

    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method
