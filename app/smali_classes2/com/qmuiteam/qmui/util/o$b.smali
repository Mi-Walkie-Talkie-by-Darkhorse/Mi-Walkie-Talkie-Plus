.class Lcom/qmuiteam/qmui/util/o$b;
.super Ljava/lang/Object;
.source "QMUIWindowInsetHelper.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/util/o;->m(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/util/o;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/util/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/o$b;->a:Lcom/qmuiteam/qmui/util/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/o$b;->a:Lcom/qmuiteam/qmui/util/o;

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/o;->a(Lcom/qmuiteam/qmui/util/o;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/util/o$b;->a:Lcom/qmuiteam/qmui/util/o;

    .line 2
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/o;->a(Lcom/qmuiteam/qmui/util/o;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/c;

    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/c;->d(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method
