.class abstract Landroidx/appcompat/view/menu/c;
.super Ljava/lang/Object;
.source "BaseMenuWrapper.java"


# instance fields
.field final a:Landroid/content/Context;

.field private b:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Landroidx/core/a/a/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Landroidx/core/a/a/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/core/a/a/b;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/core/a/a/b;

    .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, La/b/g;

    invoke-direct {v1}, La/b/g;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    invoke-virtual {v1, p1}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Landroidx/appcompat/view/menu/i;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;Landroidx/core/a/a/b;)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    invoke-virtual {v1, v0, p1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 8
    instance-of v0, p1, Landroidx/core/a/a/c;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Landroidx/core/a/a/c;

    .line 10
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:La/b/g;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, La/b/g;

    invoke-direct {v0}, La/b/g;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/c;->c:La/b/g;

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:La/b/g;

    invoke-virtual {v0, p1}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Landroidx/appcompat/view/menu/r;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/r;-><init>(Landroid/content/Context;Landroidx/core/a/a/c;)V

    .line 14
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->c:La/b/g;

    invoke-virtual {v1, p1, v0}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method final a(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    invoke-virtual {v1}, La/b/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 17
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    invoke-virtual {v1, v0}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/a/a/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 18
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    invoke-virtual {v1, v0}, La/b/g;->c(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, La/b/g;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:La/b/g;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, La/b/g;->clear()V

    :cond_1
    return-void
.end method

.method final b(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    invoke-virtual {v1}, La/b/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    invoke-virtual {v1, v0}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/a/a/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/c;->b:La/b/g;

    invoke-virtual {p1, v0}, La/b/g;->c(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
