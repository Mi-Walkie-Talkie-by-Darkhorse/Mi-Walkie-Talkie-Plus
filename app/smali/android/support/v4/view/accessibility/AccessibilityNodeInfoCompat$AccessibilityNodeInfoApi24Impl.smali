.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionSetProgress()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->getActionSetProgress()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingOrder(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->getDrawingOrder(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->isImportantForAccessibility(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDrawingOrder(Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->setDrawingOrder(Ljava/lang/Object;I)V

    return-void
.end method

.method public setImportantForAccessibility(Ljava/lang/Object;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->setImportantForAccessibility(Ljava/lang/Object;Z)V

    return-void
.end method
