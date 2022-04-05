.class Landroidx/transition/a0;
.super Landroidx/transition/f0;

# interfaces
.implements Landroidx/transition/c0;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/f0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/transition/a0;
    .locals 0

    invoke-static {p0}, Landroidx/transition/f0;->a(Landroid/view/View;)Landroidx/transition/f0;

    move-result-object p0

    check-cast p0, Landroidx/transition/a0;

    return-object p0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/f0;->a:Landroidx/transition/f0$a;

    invoke-virtual {v0, p1}, Landroidx/transition/f0$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/f0;->a:Landroidx/transition/f0$a;

    invoke-virtual {v0, p1}, Landroidx/transition/f0$a;->b(Landroid/view/View;)V

    return-void
.end method
