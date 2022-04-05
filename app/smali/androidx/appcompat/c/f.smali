.class public Landroidx/appcompat/c/f;
.super Landroid/view/ActionMode;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/c/f$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroidx/appcompat/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/c/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/c/f;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->a()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/n;

    iget-object v1, p0, Landroidx/appcompat/c/f;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v2}, Landroidx/appcompat/c/b;->c()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Landroidx/core/a/a/a;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/n;-><init>(Landroid/content/Context;Landroidx/core/a/a/a;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->d()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->h()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->i()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0}, Landroidx/appcompat/c/b;->j()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/c/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/c/b;->a(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/c/b;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/c/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/c/b;->b(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/c/b;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/c/f;->b:Landroidx/appcompat/c/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/c/b;->a(Z)V

    return-void
.end method
