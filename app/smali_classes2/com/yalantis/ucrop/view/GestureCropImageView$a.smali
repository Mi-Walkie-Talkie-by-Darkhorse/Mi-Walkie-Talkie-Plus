.class Lcom/yalantis/ucrop/view/GestureCropImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureCropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/GestureCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/view/GestureCropImageView;


# direct methods
.method private constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$a;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView$a;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$a;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$a;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getDoubleTapTargetScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/yalantis/ucrop/view/GestureCropImageView;->a(FFFJ)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$a;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->a(FF)V

    const/4 v0, 0x1

    return v0
.end method
