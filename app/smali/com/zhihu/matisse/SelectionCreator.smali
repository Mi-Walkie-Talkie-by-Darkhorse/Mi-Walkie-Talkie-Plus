.class public final Lcom/zhihu/matisse/SelectionCreator;
.super Ljava/lang/Object;
.source "SelectionCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/SelectionCreator$ScreenOrientation;
    }
.end annotation


# instance fields
.field private final a:Lcom/zhihu/matisse/a;

.field private final b:Lcom/zhihu/matisse/internal/entity/b;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/a;Ljava/util/Set;Z)V
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/matisse/a;",
            "Ljava/util/Set<",
            "Lcom/zhihu/matisse/MimeType;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zhihu/matisse/SelectionCreator;->a:Lcom/zhihu/matisse/a;

    .line 3
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->a()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/SelectionCreator;->b:Lcom/zhihu/matisse/internal/entity/b;

    .line 4
    iput-object p2, p1, Lcom/zhihu/matisse/internal/entity/b;->a:Ljava/util/Set;

    .line 5
    iput-boolean p3, p1, Lcom/zhihu/matisse/internal/entity/b;->b:Z

    const/4 p2, -0x1

    .line 6
    iput p2, p1, Lcom/zhihu/matisse/internal/entity/b;->e:I

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->b:Lcom/zhihu/matisse/internal/entity/b;

    iput-boolean p1, v0, Lcom/zhihu/matisse/internal/entity/b;->f:Z

    return-object p0
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->a:Lcom/zhihu/matisse/a;

    invoke-virtual {v0}, Lcom/zhihu/matisse/a;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zhihu/matisse/ui/MatisseActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v2, p0, Lcom/zhihu/matisse/SelectionCreator;->a:Lcom/zhihu/matisse/a;

    invoke-virtual {v2}, Lcom/zhihu/matisse/a;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public c(Lcom/zhihu/matisse/b/a;)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->b:Lcom/zhihu/matisse/internal/entity/b;

    iput-object p1, v0, Lcom/zhihu/matisse/internal/entity/b;->p:Lcom/zhihu/matisse/b/a;

    return-object p0
.end method

.method public d(I)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->b:Lcom/zhihu/matisse/internal/entity/b;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/b;->e:I

    return-object p0
.end method

.method public e(Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->b:Lcom/zhihu/matisse/internal/entity/b;

    iput-boolean p1, v0, Lcom/zhihu/matisse/internal/entity/b;->c:Z

    return-object p0
.end method

.method public f(I)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->b:Lcom/zhihu/matisse/internal/entity/b;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/b;->d:I

    return-object p0
.end method

.method public g(F)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->b:Lcom/zhihu/matisse/internal/entity/b;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/b;->o:F

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Thumbnail scale must be between (0.0, 1.0]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
