.class Landroidx/core/view/ViewCompat$h$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat$h;->a(Landroid/view/View;Landroidx/core/view/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroidx/core/view/WindowInsetsCompat;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/view/r;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/core/view/r;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/ViewCompat$h$a;->b:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/ViewCompat$h$a;->c:Landroidx/core/view/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/ViewCompat$h$a;->a:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->a(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroidx/core/view/ViewCompat$h$a;->b:Landroid/view/View;

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat$h;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Landroidx/core/view/ViewCompat$h$a;->a:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/core/view/ViewCompat$h$a;->c:Landroidx/core/view/r;

    invoke-interface {p2, p1, v0}, Landroidx/core/view/r;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->k()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object v0, p0, Landroidx/core/view/ViewCompat$h$a;->a:Landroidx/core/view/WindowInsetsCompat;

    iget-object p2, p0, Landroidx/core/view/ViewCompat$h$a;->c:Landroidx/core/view/r;

    invoke-interface {p2, p1, v0}, Landroidx/core/view/r;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->k()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)V

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->k()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
