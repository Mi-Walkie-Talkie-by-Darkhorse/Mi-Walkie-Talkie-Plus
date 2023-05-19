.class Lcom/zhihu/matisse/internal/ui/b$b;
.super Ljava/lang/Object;
.source "PreviewItemFragment.java"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/ImageViewTouch$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/matisse/internal/ui/b;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/internal/ui/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/b$b;->a:Lcom/zhihu/matisse/internal/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/b$b;->a:Lcom/zhihu/matisse/internal/ui/b;

    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/b;->w1(Lcom/zhihu/matisse/internal/ui/b;)Lcom/zhihu/matisse/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/b$b;->a:Lcom/zhihu/matisse/internal/ui/b;

    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/b;->w1(Lcom/zhihu/matisse/internal/ui/b;)Lcom/zhihu/matisse/e/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhihu/matisse/e/b;->d()V

    :cond_0
    return-void
.end method
