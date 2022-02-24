.class Landroidx/customview/a/a$c;
.super Landroidx/core/view/accessibility/c;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Landroidx/customview/a/a;


# direct methods
.method constructor <init>(Landroidx/customview/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/customview/a/a$c;->b:Landroidx/customview/a/a;

    invoke-direct {p0}, Landroidx/core/view/accessibility/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/view/accessibility/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/customview/a/a$c;->b:Landroidx/customview/a/a;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/customview/a/a;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/b;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroidx/core/view/accessibility/b;->a(Landroidx/core/view/accessibility/b;)Landroidx/core/view/accessibility/b;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/customview/a/a$c;->b:Landroidx/customview/a/a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/a/a;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public b(I)Landroidx/core/view/accessibility/b;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/customview/a/a$c;->b:Landroidx/customview/a/a;

    iget p1, p1, Landroidx/customview/a/a;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/customview/a/a$c;->b:Landroidx/customview/a/a;

    iget p1, p1, Landroidx/customview/a/a;->mKeyboardFocusedVirtualViewId:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/customview/a/a$c;->a(I)Landroidx/core/view/accessibility/b;

    move-result-object p1

    return-object p1
.end method
