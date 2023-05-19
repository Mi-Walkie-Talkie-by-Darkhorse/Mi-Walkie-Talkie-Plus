.class public Lcom/zhihu/matisse/d/b/b;
.super Ljava/lang/Object;
.source "AlbumMediaCollection.java"

# interfaces
.implements Landroidx/loader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/d/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/a/a$a<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/loader/a/a;

.field private c:Lcom/zhihu/matisse/d/b/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/loader/content/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/matisse/d/b/b;->h(Landroidx/loader/content/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public b(ILandroid/os/Bundle;)Landroidx/loader/content/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/c<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "args_album"

    .line 2
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/zhihu/matisse/internal/entity/Album;

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/entity/Album;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "args_enable_capture"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .line 4
    :cond_2
    invoke-static {p1, v1, v2}, Lcom/zhihu/matisse/d/a/b;->P(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/Album;Z)Landroidx/loader/content/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroidx/loader/content/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/c<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/b;->c:Lcom/zhihu/matisse/d/b/b$a;

    invoke-interface {p1}, Lcom/zhihu/matisse/d/b/b$a;->A0()V

    return-void
.end method

.method public d(Lcom/zhihu/matisse/internal/entity/Album;)V
    .locals 1
    .param p1    # Lcom/zhihu/matisse/internal/entity/Album;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/zhihu/matisse/d/b/b;->e(Lcom/zhihu/matisse/internal/entity/Album;Z)V

    return-void
.end method

.method public e(Lcom/zhihu/matisse/internal/entity/Album;Z)V
    .locals 2
    .param p1    # Lcom/zhihu/matisse/internal/entity/Album;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_album"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "args_enable_capture"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/b;->b:Landroidx/loader/a/a;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0, p0}, Landroidx/loader/a/a;->d(ILandroid/os/Bundle;Landroidx/loader/a/a$a;)Landroidx/loader/content/c;

    return-void
.end method

.method public f(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/d/b/b$a;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zhihu/matisse/d/b/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhihu/matisse/d/b/b;->a:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/d/b/b;->b:Landroidx/loader/a/a;

    .line 3
    iput-object p2, p0, Lcom/zhihu/matisse/d/b/b;->c:Lcom/zhihu/matisse/d/b/b$a;

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/b;->b:Landroidx/loader/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v2}, Landroidx/loader/a/a;->a(I)V

    .line 3
    iput-object v1, p0, Lcom/zhihu/matisse/d/b/b;->b:Landroidx/loader/a/a;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/zhihu/matisse/d/b/b;->c:Lcom/zhihu/matisse/d/b/b$a;

    return-void
.end method

.method public h(Landroidx/loader/content/c;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/c<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/b;->c:Lcom/zhihu/matisse/d/b/b$a;

    invoke-interface {p1, p2}, Lcom/zhihu/matisse/d/b/b$a;->p1(Landroid/database/Cursor;)V

    return-void
.end method
