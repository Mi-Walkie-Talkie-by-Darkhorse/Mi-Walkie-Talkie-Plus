.class Landroid/support/v4/view/KeyEventCompatHoneycomb;
.super Ljava/lang/Object;
.source "KeyEventCompatHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xb
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCtrlPressed(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    return v0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1

    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static normalizeMetaState(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method
