.class Lcom/yalantis/ucrop/view/TransformImageView$a;
.super Ljava/lang/Object;
.source "TransformImageView.java"

# interfaces
.implements Lcom/yalantis/ucrop/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/view/TransformImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/view/TransformImageView;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/view/TransformImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/b;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yalantis/ucrop/model/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {v0, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Lcom/yalantis/ucrop/view/TransformImageView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {v0, p4}, Lcom/yalantis/ucrop/view/TransformImageView;->b(Lcom/yalantis/ucrop/view/TransformImageView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p3, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p3, p4}, Lcom/yalantis/ucrop/view/TransformImageView;->b(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p3, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {p3, p2}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Lcom/yalantis/ucrop/view/TransformImageView;Lcom/yalantis/ucrop/model/b;)Lcom/yalantis/ucrop/model/b;

    .line 6
    iget-object p2, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/yalantis/ucrop/view/TransformImageView;->j:Z

    .line 7
    invoke-virtual {p2, p1}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TransformImageView"

    const-string v1, "onFailure: setImageUri"

    .line 8
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    iget-object v0, v0, Lcom/yalantis/ucrop/view/TransformImageView;->g:Lcom/yalantis/ucrop/view/TransformImageView$b;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/view/TransformImageView$b;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
