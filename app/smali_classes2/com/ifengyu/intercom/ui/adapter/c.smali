.class public Lcom/ifengyu/intercom/ui/adapter/c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "DiscoveryFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/c$a;,
        Lcom/ifengyu/intercom/ui/adapter/c$b;,
        Lcom/ifengyu/intercom/ui/adapter/c$d;,
        Lcom/ifengyu/intercom/ui/adapter/c$e;,
        Lcom/ifengyu/intercom/ui/adapter/c$c;
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

.field private e:Lcom/ifengyu/intercom/ui/adapter/l;

.field private f:Lcom/ifengyu/intercom/ui/adapter/c$a;

.field private g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


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
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    .line 4
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const p2, 0x7f0800d0

    .line 6
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const p1, 0x7f010036

    .line 12
    invoke-static {p3, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->a:Landroid/view/animation/Animation;

    .line 13
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->f:Lcom/ifengyu/intercom/ui/adapter/c$a;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/c;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->a:Landroid/view/animation/Animation;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->e:Lcom/ifengyu/intercom/ui/adapter/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/adapter/l;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/adapter/c;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/adapter/c;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/c$b;

    .line 3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4
    iget-object p2, p1, Lcom/ifengyu/intercom/ui/adapter/c$b;->a:Landroid/widget/TextView;

    const v0, 0x7f1101c8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p2, p1, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 7
    :cond_1
    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/c$d;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    .line 9
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getExcerpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getMeta()Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->getFirst_published_at()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 12
    iget-object v2, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->c:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/j0;->e(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->d:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/j0;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getHeader_image_url()Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;->getMedium()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 15
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

    .line 16
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://cms.ifengyu.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 17
    :cond_3
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p2

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {p2, v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c;->e:Lcom/ifengyu/intercom/ui/adapter/l;

    if-eqz p2, :cond_6

    .line 20
    invoke-virtual {p2}, Lcom/jude/rollviewpager/d/a;->notifyDataSetChanged()V

    goto :goto_1

    .line 21
    :cond_6
    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/c$c;

    .line 22
    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/l;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-direct {p2, v0, v1}, Lcom/ifengyu/intercom/ui/adapter/l;-><init>(Ljava/util/ArrayList;Lcom/jude/rollviewpager/RollPagerView;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c;->e:Lcom/ifengyu/intercom/ui/adapter/l;

    .line 23
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-virtual {p1, p2}, Lcom/jude/rollviewpager/RollPagerView;->setAdapter(Landroidx/viewpager/widget/a;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0128

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/c$c;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/c$c;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c008f

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/c$e;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/c$e;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0090

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/c$b;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/c$b;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c008e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/c$d;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/c$d;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setOnAllItemClickListener(Lcom/ifengyu/intercom/ui/adapter/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->f:Lcom/ifengyu/intercom/ui/adapter/c$a;

    return-void
.end method
