.class public Lcom/ifengyu/library/c/a;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field public static a:Ljava/lang/String; = "https://cdn.cnbj2.fds.api.mi-img.com/fengyu-image/n-avator-bg.png"

.field public static b:Ljava/lang/String; = "https://cdn.cnbj2.fds.api.mi-img.com/fengyu-image/default-device-avatar.png"

.field public static c:Ljava/lang/String; = "https://cdn.cnbj2.fds.api.mi-img.com/fengyu-image/default-group-avatar.png"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a()Lcom/bumptech/glide/request/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    sget v1, Lcom/ifengyu/library/R$drawable;->common_icon_device_head_big:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->V(I)Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->k(I)Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->j(I)Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->c()Lcom/bumptech/glide/request/e;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lcom/bumptech/glide/request/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    sget v1, Lcom/ifengyu/library/R$drawable;->common_icon_head_big:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->V(I)Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->k(I)Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->j(I)Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->c()Lcom/bumptech/glide/request/e;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/bumptech/glide/request/e;)V
    .locals 1

    .line 1
    :try_start_0
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lcom/bumptech/glide/c;->v(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/g;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Landroid/app/Activity;)Lcom/bumptech/glide/g;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/g;->p(Landroid/net/Uri;)Lcom/bumptech/glide/f;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    .line 7
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->l(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    goto :goto_1

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "just Fragment or Activity!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/library/c/a;->b()Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/ifengyu/library/c/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p2, Lcom/ifengyu/library/c/a;->a:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/ifengyu/library/c/a;->c(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/bumptech/glide/request/e;)V

    return-void
.end method

.method public static f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/library/c/a;->b()Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/ifengyu/library/c/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p2, Lcom/ifengyu/library/c/a;->a:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/ifengyu/library/c/a;->c(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/bumptech/glide/request/e;)V

    return-void
.end method

.method public static g(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/library/c/a;->a()Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/ifengyu/library/c/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p2, Lcom/ifengyu/library/c/a;->b:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/ifengyu/library/c/a;->c(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/bumptech/glide/request/e;)V

    return-void
.end method
