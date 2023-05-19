.class public Lcom/zhihu/matisse/d/b/a;
.super Ljava/lang/Object;
.source "AlbumCollection.java"

# interfaces
.implements Landroidx/loader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/d/b/a$a;
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

.field private c:Lcom/zhihu/matisse/d/b/a$a;

.field private d:I

.field private e:Z


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

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/matisse/d/b/a;->h(Landroidx/loader/content/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public b(ILandroid/os/Bundle;)Landroidx/loader/content/c;
    .locals 0
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
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/zhihu/matisse/d/b/a;->e:Z

    .line 3
    invoke-static {p1}, Lcom/zhihu/matisse/d/a/a;->O(Landroid/content/Context;)Landroidx/loader/content/b;

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
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/a;->c:Lcom/zhihu/matisse/d/b/a$a;

    invoke-interface {p1}, Lcom/zhihu/matisse/d/b/a$a;->c()V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zhihu/matisse/d/b/a;->d:I

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/a;->b:Landroidx/loader/a/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/a/a;->d(ILandroid/os/Bundle;Landroidx/loader/a/a$a;)Landroidx/loader/content/c;

    return-void
.end method

.method public f(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/d/b/a$a;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhihu/matisse/d/b/a;->a:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/d/b/a;->b:Landroidx/loader/a/a;

    .line 3
    iput-object p2, p0, Lcom/zhihu/matisse/d/b/a;->c:Lcom/zhihu/matisse/d/b/a$a;

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/a;->b:Landroidx/loader/a/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/loader/a/a;->a(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zhihu/matisse/d/b/a;->c:Lcom/zhihu/matisse/d/b/a$a;

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
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/zhihu/matisse/d/b/a;->e:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/zhihu/matisse/d/b/a;->e:Z

    .line 4
    iget-object p1, p0, Lcom/zhihu/matisse/d/b/a;->c:Lcom/zhihu/matisse/d/b/a$a;

    invoke-interface {p1, p2}, Lcom/zhihu/matisse/d/b/a$a;->g(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "state_current_selection"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zhihu/matisse/d/b/a;->d:I

    return-void
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/zhihu/matisse/d/b/a;->d:I

    const-string v1, "state_current_selection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zhihu/matisse/d/b/a;->d:I

    return-void
.end method
