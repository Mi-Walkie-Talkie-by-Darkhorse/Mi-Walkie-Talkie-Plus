.class public Landroidx/appcompat/c/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/c/b$a;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/ActionMode$Callback;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/c/f;",
            ">;"
        }
    .end annotation
.end field

.field final d:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/c/f$a;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/c/f$a;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/c/f$a;->c:Ljava/util/ArrayList;

    new-instance p1, La/b/g;

    invoke-direct {p1}, La/b/g;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/c/f$a;->d:La/b/g;

    return-void
.end method

.method private a(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/c/f$a;->d:La/b/g;

    invoke-virtual {v0, p1}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/n;

    iget-object v1, p0, Landroidx/appcompat/c/f$a;->b:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Landroidx/core/a/a/a;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/n;-><init>(Landroid/content/Context;Landroidx/core/a/a/a;)V

    iget-object v1, p0, Landroidx/appcompat/c/f$a;->d:La/b/g;

    invoke-virtual {v1, p1, v0}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/appcompat/c/b;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/c/f$a;->b(Landroidx/appcompat/c/b;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public a(Landroidx/appcompat/c/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/c/f$a;->b(Landroidx/appcompat/c/b;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-direct {p0, p2}, Landroidx/appcompat/c/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/appcompat/c/b;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/c/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/c/f$a;->b(Landroidx/appcompat/c/b;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/view/menu/i;

    iget-object v2, p0, Landroidx/appcompat/c/f$a;->b:Landroid/content/Context;

    check-cast p2, Landroidx/core/a/a/b;

    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;Landroidx/core/a/a/b;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/appcompat/c/b;)Landroid/view/ActionMode;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/c/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/c/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/c/f;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/appcompat/c/f;

    iget-object v1, p0, Landroidx/appcompat/c/f$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/c/f;-><init>(Landroid/content/Context;Landroidx/appcompat/c/b;)V

    iget-object p1, p0, Landroidx/appcompat/c/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(Landroidx/appcompat/c/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/c/f$a;->b(Landroidx/appcompat/c/b;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-direct {p0, p2}, Landroidx/appcompat/c/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
