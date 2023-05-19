.class public Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;
.super Lcom/zhihu/matisse/internal/ui/widget/SquareFrameLayout;
.source "MediaGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;,
        Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/zhihu/matisse/internal/entity/Item;

.field private f:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;

.field private g:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/SquareFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/zhihu/matisse/internal/ui/widget/SquareFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/zhihu/matisse/R$layout;->media_grid_content:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2
    sget p1, Lcom/zhihu/matisse/R$id;->media_thumbnail:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->a:Landroid/widget/ImageView;

    .line 3
    sget p1, Lcom/zhihu/matisse/R$id;->check_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    .line 4
    sget p1, Lcom/zhihu/matisse/R$id;->gif:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->c:Landroid/widget/ImageView;

    .line 5
    sget p1, Lcom/zhihu/matisse/R$id;->video_duration:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->d:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->f:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;

    iget-boolean v1, v1, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->c:Z

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCountable(Z)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/entity/Item;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Item;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iget-object v1, v0, Lcom/zhihu/matisse/internal/entity/b;->p:Lcom/zhihu/matisse/b/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->f:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;

    iget v3, v0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->a:I

    iget-object v4, v0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->b:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    .line 3
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object v6

    .line 4
    invoke-interface/range {v1 .. v6}, Lcom/zhihu/matisse/b/a;->d(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iget-object v1, v0, Lcom/zhihu/matisse/internal/entity/b;->p:Lcom/zhihu/matisse/b/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->f:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;

    iget v3, v0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->a:I

    iget-object v4, v0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->b:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    .line 6
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object v6

    .line 7
    invoke-interface/range {v1 .. v6}, Lcom/zhihu/matisse/b/a;->c(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Item;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    iget-wide v1, v1, Lcom/zhihu/matisse/internal/entity/Item;->e:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/matisse/internal/entity/Item;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    .line 2
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e()V

    .line 3
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->c()V

    .line 4
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->f()V

    .line 5
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->g()V

    return-void
.end method

.method public d(Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->f:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;

    return-void
.end method

.method public getMedia()Lcom/zhihu/matisse/internal/entity/Item;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->g:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->a:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->f:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;

    iget-object v2, v2, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->d:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-interface {v0, v1, p1, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$a;->b(Landroid/widget/ImageView;Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$y;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    if-ne p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->e:Lcom/zhihu/matisse/internal/entity/Item;

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->f:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;

    iget-object v2, v2, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->d:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-interface {v0, v1, p1, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$a;->c(Lcom/zhihu/matisse/internal/ui/widget/CheckView;Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$y;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    return-void
.end method

.method public setCheckedNum(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->b:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    return-void
.end method

.method public setOnMediaGridClickListener(Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->g:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$a;

    return-void
.end method
