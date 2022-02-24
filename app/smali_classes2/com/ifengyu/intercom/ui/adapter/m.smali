.class public Lcom/ifengyu/intercom/ui/adapter/m;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SealCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/m$c;,
        Lcom/ifengyu/intercom/ui/adapter/m$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/ifengyu/intercom/ui/adapter/m$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Typeface;

.field private d:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private e:Landroid/text/style/AbsoluteSizeSpan;

.field private final f:Landroid/text/style/ForegroundColorSpan;

.field private final g:Landroid/text/style/ForegroundColorSpan;

.field private final h:Landroid/text/style/ForegroundColorSpan;

.field private final i:Landroid/text/style/ForegroundColorSpan;

.field private final j:Landroid/text/style/ForegroundColorSpan;

.field private final k:Landroid/text/style/ForegroundColorSpan;

.field private final l:Landroid/text/style/ForegroundColorSpan;

.field private final m:Landroid/text/style/ForegroundColorSpan;

.field private n:Landroid/text/SpannableStringBuilder;

.field private o:Lcom/ifengyu/intercom/ui/adapter/m$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->a:Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/m;->b:Ljava/util/List;

    .line 4
    sget-object p1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->c:Landroid/graphics/Typeface;

    .line 5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->n:Landroid/text/SpannableStringBuilder;

    .line 6
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lcom/ifengyu/intercom/i/c0;->c(F)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->e:Landroid/text/style/AbsoluteSizeSpan;

    .line 7
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#99000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->f:Landroid/text/style/ForegroundColorSpan;

    .line 8
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v0, "#ff0076ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Landroid/text/style/ForegroundColorSpan;

    .line 9
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Landroid/text/style/ForegroundColorSpan;

    .line 10
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->i:Landroid/text/style/ForegroundColorSpan;

    .line 11
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->j:Landroid/text/style/ForegroundColorSpan;

    .line 12
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->k:Landroid/text/style/ForegroundColorSpan;

    .line 13
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->l:Landroid/text/style/ForegroundColorSpan;

    .line 14
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#960076ff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->m:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/m;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/adapter/m$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->o:Lcom/ifengyu/intercom/ui/adapter/m$d;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->e:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->m:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->l:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->c:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->i:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->k:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->f:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->j:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->n:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/adapter/m$c;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$c;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$c;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/adapter/m$c;->a(I)V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/m;->o:Lcom/ifengyu/intercom/ui/adapter/m$d;

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/m$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/m$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/m;Lcom/ifengyu/intercom/ui/adapter/m$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/m$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/m$b;-><init>(Lcom/ifengyu/intercom/ui/adapter/m;Lcom/ifengyu/intercom/ui/adapter/m$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/m$c;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/m;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/m$c;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/m$c;
    .locals 3

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/m$c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/m$c;-><init>(Lcom/ifengyu/intercom/ui/adapter/m;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/m$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->o:Lcom/ifengyu/intercom/ui/adapter/m$d;

    return-void
.end method
