.class Landroidx/core/view/accessibility/c$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/view/accessibility/c;


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/accessibility/c$a;->a:Landroidx/core/view/accessibility/c;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c$a;->a:Landroidx/core/view/accessibility/c;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/c;->b(I)Landroidx/core/view/accessibility/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/core/view/accessibility/b;->H0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c$a;->a:Landroidx/core/view/accessibility/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/accessibility/c;->c(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/accessibility/b;

    .line 6
    invoke-virtual {v2}, Landroidx/core/view/accessibility/b;->H0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c$a;->a:Landroidx/core/view/accessibility/c;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/accessibility/c;->f(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
