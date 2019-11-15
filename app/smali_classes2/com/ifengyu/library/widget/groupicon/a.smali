.class public abstract Lcom/ifengyu/library/widget/groupicon/a;
.super Ljava/lang/Object;
.source "NineGridImageViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;

    invoke-direct {v0, p1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setCornerRadius(I)V

    return-object v0
.end method

.method protected abstract onDisplayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "TT;)V"
        }
    .end annotation
.end method
