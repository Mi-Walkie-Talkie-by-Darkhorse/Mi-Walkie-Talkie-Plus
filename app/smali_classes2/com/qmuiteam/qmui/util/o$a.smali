.class Lcom/qmuiteam/qmui/util/o$a;
.super Ljava/lang/Object;
.source "QMUIWindowInsetHelper.java"

# interfaces
.implements Landroidx/core/view/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/util/o;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/c;)V
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
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/o$a;->a:Lcom/qmuiteam/qmui/util/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/util/o$a;->a:Lcom/qmuiteam/qmui/util/o;

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/o;->a(Lcom/qmuiteam/qmui/util/o;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/o$a;->a:Lcom/qmuiteam/qmui/util/o;

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/o;->a(Lcom/qmuiteam/qmui/util/o;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/c;

    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/c;->d(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->c()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->m()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->b()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method
