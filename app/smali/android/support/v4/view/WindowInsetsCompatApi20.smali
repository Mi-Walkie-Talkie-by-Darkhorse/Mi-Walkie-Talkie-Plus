.class Landroid/support/v4/view/WindowInsetsCompatApi20;
.super Ljava/lang/Object;
.source "WindowInsetsCompatApi20.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x14
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeSystemWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public static getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/view/WindowInsets;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public static getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetRight(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetTop(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0
.end method

.method public static hasInsets(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasInsets()Z

    move-result v0

    return v0
.end method

.method public static hasSystemWindowInsets(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    return v0
.end method

.method public static isRound(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public static replaceSystemWindowInsets(Ljava/lang/Object;IIII)Ljava/lang/Object;
    .locals 1

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
