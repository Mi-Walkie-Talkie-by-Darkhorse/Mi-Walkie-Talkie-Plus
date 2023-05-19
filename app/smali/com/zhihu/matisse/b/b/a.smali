.class public Lcom/zhihu/matisse/b/b/a;
.super Ljava/lang/Object;
.source "GlideEngine.java"

# interfaces
.implements Lcom/zhihu/matisse/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IILandroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p5}, Lcom/bumptech/glide/g;->p(Landroid/net/Uri;)Lcom/bumptech/glide/f;

    move-result-object p1

    new-instance p5, Lcom/bumptech/glide/request/e;

    invoke-direct {p5}, Lcom/bumptech/glide/request/e;-><init>()V

    .line 3
    invoke-virtual {p5, p2, p3}, Lcom/bumptech/glide/request/e;->U(II)Lcom/bumptech/glide/request/e;

    move-result-object p2

    sget-object p3, Lcom/bumptech/glide/Priority;->b:Lcom/bumptech/glide/Priority;

    .line 4
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/e;->X(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/bumptech/glide/request/e;->l()Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    .line 7
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/f;->l(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    return-void
.end method

.method public b(Landroid/content/Context;IILandroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/g;->l()Lcom/bumptech/glide/f;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p5}, Lcom/bumptech/glide/f;->o(Landroid/net/Uri;)Lcom/bumptech/glide/f;

    new-instance p5, Lcom/bumptech/glide/request/e;

    invoke-direct {p5}, Lcom/bumptech/glide/request/e;-><init>()V

    .line 4
    invoke-virtual {p5, p2, p3}, Lcom/bumptech/glide/request/e;->U(II)Lcom/bumptech/glide/request/e;

    move-result-object p2

    sget-object p3, Lcom/bumptech/glide/Priority;->b:Lcom/bumptech/glide/Priority;

    .line 5
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/e;->X(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/bumptech/glide/request/e;->l()Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    .line 8
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/f;->l(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    return-void
.end method

.method public c(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/g;->f()Lcom/bumptech/glide/f;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p5}, Lcom/bumptech/glide/f;->o(Landroid/net/Uri;)Lcom/bumptech/glide/f;

    new-instance p5, Lcom/bumptech/glide/request/e;

    invoke-direct {p5}, Lcom/bumptech/glide/request/e;-><init>()V

    .line 4
    invoke-virtual {p5, p2, p2}, Lcom/bumptech/glide/request/e;->U(II)Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/e;->W(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/bumptech/glide/request/e;->c()Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    .line 8
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/f;->l(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    return-void
.end method

.method public d(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/g;->f()Lcom/bumptech/glide/f;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p5}, Lcom/bumptech/glide/f;->o(Landroid/net/Uri;)Lcom/bumptech/glide/f;

    new-instance p5, Lcom/bumptech/glide/request/e;

    invoke-direct {p5}, Lcom/bumptech/glide/request/e;-><init>()V

    .line 4
    invoke-virtual {p5, p2, p2}, Lcom/bumptech/glide/request/e;->U(II)Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/e;->W(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/bumptech/glide/request/e;->c()Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    .line 8
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/f;->l(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    return-void
.end method
