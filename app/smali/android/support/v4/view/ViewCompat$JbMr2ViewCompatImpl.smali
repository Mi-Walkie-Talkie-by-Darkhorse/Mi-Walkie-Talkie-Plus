.class Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr2ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr2;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isInLayout(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr2;->isInLayout(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr2;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
