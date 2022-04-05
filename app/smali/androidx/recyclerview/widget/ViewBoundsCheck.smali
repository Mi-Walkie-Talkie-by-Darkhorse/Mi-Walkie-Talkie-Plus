.class Landroidx/recyclerview/widget/ViewBoundsCheck;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewBoundsCheck$b;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$a;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

.field b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ViewBoundsCheck$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    new-instance p1, Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->a()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->b()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->a(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->b(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a(IIII)V

    if-eqz p3, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->b()V

    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {v5, p3}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->b()V

    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {v5, p4}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method a(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->a()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v2}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->b()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->b(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a(IIII)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->b()V

    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
