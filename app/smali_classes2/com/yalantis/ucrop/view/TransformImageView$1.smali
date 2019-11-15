.class Lcom/yalantis/ucrop/view/TransformImageView$1;
.super Ljava/lang/Object;
.source "TransformImageView.java"

# interfaces
.implements Lcom/yalantis/ucrop/a/b;


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

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yalantis/ucrop/model/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {v0, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {v0, p4}, Lcom/yalantis/ucrop/view/TransformImageView;->b(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {v0, p2}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Lcom/yalantis/ucrop/view/TransformImageView;Lcom/yalantis/ucrop/model/b;)Lcom/yalantis/ucrop/model/b;

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yalantis/ucrop/view/TransformImageView;->g:Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TransformImageView"

    const-string v1, "onFailure: setImageUri"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    iget-object v0, v0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    iget-object v0, v0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/view/TransformImageView$a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
