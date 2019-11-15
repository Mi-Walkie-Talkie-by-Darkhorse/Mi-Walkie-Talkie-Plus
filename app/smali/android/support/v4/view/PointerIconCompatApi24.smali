.class Landroid/support/v4/view/PointerIconCompatApi24;
.super Ljava/lang/Object;
.source "PointerIconCompatApi24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static load(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method
