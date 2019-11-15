.class Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method
