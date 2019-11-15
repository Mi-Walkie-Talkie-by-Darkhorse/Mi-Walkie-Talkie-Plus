.class public Lcom/ifengyu/intercom/ui/adapter/c;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;

.field private j:Lcom/ifengyu/intercom/ui/adapter/c$a;

.field private k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const v2, 0x7f0200d0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput v3, p0, Lcom/ifengyu/intercom/ui/adapter/c;->e:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->h:I

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/adapter/c;->l:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const v0, 0x7f050020

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->j:Lcom/ifengyu/intercom/ui/adapter/c$a;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/c;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->a:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->i:Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->i:Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->l:Z

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/adapter/c;->l:Z

    if-eqz v3, :cond_3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/adapter/c;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/adapter/c;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->i:Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->i:Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/c$c;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->b:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;-><init>(Ljava/util/ArrayList;Lcom/jude/rollviewpager/RollPagerView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->i:Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->i:Lcom/ifengyu/intercom/ui/adapter/PicLoopPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/jude/rollviewpager/RollPagerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/c$d;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getExcerpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getMeta()Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->getFirst_published_at()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->c:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ac;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->d:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ac;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getHeader_image_url()Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;->getMedium()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/c;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/c;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/ifengyu/intercom/ui/adapter/c$d;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/c;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    :pswitch_3
    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/c$b;

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/c$b;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/c$b;->a:Landroid/widget/TextView;

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fa

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/c$c;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/c$c;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008a

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/c$e;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/c$e;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008b

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/c$b;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/c$b;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040089

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/c$d;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/c$d;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOnAllItemClickListener(Lcom/ifengyu/intercom/ui/adapter/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c;->j:Lcom/ifengyu/intercom/ui/adapter/c$a;

    return-void
.end method
