.class public Lcom/ifengyu/intercom/ui/b/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiscoveryFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/b/b$a;,
        Lcom/ifengyu/intercom/ui/b/b$b;,
        Lcom/ifengyu/intercom/ui/b/b$d;,
        Lcom/ifengyu/intercom/ui/b/b$e;,
        Lcom/ifengyu/intercom/ui/b/b$c;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/ifengyu/intercom/ui/b/g;

.field private f:Lcom/ifengyu/intercom/ui/b/b$a;

.field private final g:Lcom/bumptech/glide/request/e;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/b/b;->c:Ljava/util/ArrayList;

    .line 4
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/b/b;->d:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/bumptech/glide/request/e;

    invoke-direct {p1}, Lcom/bumptech/glide/request/e;-><init>()V

    const p2, 0x7f0800c8

    .line 6
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/e;->V(I)Lcom/bumptech/glide/request/e;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/e;->k(I)Lcom/bumptech/glide/request/e;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/e;->j(I)Lcom/bumptech/glide/request/e;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/bumptech/glide/request/e;->c()Lcom/bumptech/glide/request/e;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b;->g:Lcom/bumptech/glide/request/e;

    const p1, 0x7f010035

    .line 10
    invoke-static {p3, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b;->a:Landroid/view/animation/Animation;

    .line 11
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/b/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/b/b;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/b/b;)Lcom/ifengyu/intercom/ui/b/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/b/b;->f:Lcom/ifengyu/intercom/ui/b/b$a;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/b/b;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/b/b;->a:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private h(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->q(Ljava/lang/String;)Lcom/bumptech/glide/f;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/b;->g:Lcom/bumptech/glide/request/e;

    .line 3
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    .line 4
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/f;->l(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/b/b;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public i(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/b/b;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    check-cast p1, Lcom/ifengyu/intercom/ui/b/b$b;

    .line 3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 4
    iget-object p2, p1, Lcom/ifengyu/intercom/ui/b/b$b;->a:Landroid/widget/TextView;

    const v0, 0x7f110258

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p2, p1, Lcom/ifengyu/intercom/ui/b/b$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/b/b$b;->b:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 7
    :cond_1
    check-cast p1, Lcom/ifengyu/intercom/ui/b/b$d;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    .line 9
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/b/b$d;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/b/b$d;->c:Landroid/widget/TextView;

    const v1, 0x7f110194

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getViews()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getHeader_image_url()Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;->getMedium()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://cms.ifengyu.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/b/b$d;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/ui/b/b;->h(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/b/b$d;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/ui/b/b;->h(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 15
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/b/b$d;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/ui/b/b;->h(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/b/b;->e:Lcom/ifengyu/intercom/ui/b/g;

    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p2}, Lcom/jude/rollviewpager/d/a;->notifyDataSetChanged()V

    goto :goto_1

    .line 18
    :cond_6
    check-cast p1, Lcom/ifengyu/intercom/ui/b/b$c;

    .line 19
    new-instance p2, Lcom/ifengyu/intercom/ui/b/g;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/b;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/b/b$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-direct {p2, v0, v1}, Lcom/ifengyu/intercom/ui/b/g;-><init>(Ljava/util/ArrayList;Lcom/jude/rollviewpager/RollPagerView;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/b/b;->e:Lcom/ifengyu/intercom/ui/b/g;

    .line 20
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/b/b$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-virtual {p1, p2}, Lcom/jude/rollviewpager/RollPagerView;->setAdapter(Landroidx/viewpager/widget/a;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/b/b;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0152

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/b/b$c;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/b/b$c;-><init>(Lcom/ifengyu/intercom/ui/b/b;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/b/b;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c007a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/ifengyu/intercom/ui/b/b$e;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/b/b$e;-><init>(Lcom/ifengyu/intercom/ui/b/b;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/b/b;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c007b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/ifengyu/intercom/ui/b/b$b;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/b/b$b;-><init>(Lcom/ifengyu/intercom/ui/b/b;Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/b/b;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0079

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/ifengyu/intercom/ui/b/b$d;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/b/b$d;-><init>(Lcom/ifengyu/intercom/ui/b/b;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setOnAllItemClickListener(Lcom/ifengyu/intercom/ui/b/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b;->f:Lcom/ifengyu/intercom/ui/b/b$a;

    return-void
.end method
