.class Landroidx/core/view/accessibility/c$c;
.super Landroidx/core/view/accessibility/c$b;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/c$b;-><init>(Landroidx/core/view/accessibility/c;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/accessibility/c$a;->a:Landroidx/core/view/accessibility/c;

    invoke-static {p2}, Landroidx/core/view/accessibility/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/b;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/accessibility/c;->a(ILandroidx/core/view/accessibility/b;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
