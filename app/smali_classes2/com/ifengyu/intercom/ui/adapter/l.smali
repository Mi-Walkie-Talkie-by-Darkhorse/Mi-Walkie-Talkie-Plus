.class public Lcom/ifengyu/intercom/ui/adapter/l;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SealCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/l$a;,
        Lcom/ifengyu/intercom/ui/adapter/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ifengyu/intercom/ui/adapter/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

.field private o:Lcom/ifengyu/intercom/ui/adapter/l$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/l;->b:Ljava/util/List;

    sget-object v0, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->c:Landroid/graphics/Typeface;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->n:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(F)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->e:Landroid/text/style/AbsoluteSizeSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#99000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->f:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff0076ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->g:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->h:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff0076ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->i:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->j:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff0076ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->k:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#99000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->l:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#960076ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->m:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/l;)Lcom/ifengyu/intercom/ui/adapter/l$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->o:Lcom/ifengyu/intercom/ui/adapter/l$b;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/l;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->d:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->g:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->i:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->k:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->f:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->h:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->j:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->n:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->e:Landroid/text/style/AbsoluteSizeSpan;

    return-object v0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->m:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->l:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->c:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/l$a;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/l$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f0400b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/l$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/l;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/ui/adapter/l$a;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/l$a;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/adapter/l$a;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->o:Lcom/ifengyu/intercom/ui/adapter/l$b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/l$a;->itemView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/l$1;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/l$1;-><init>(Lcom/ifengyu/intercom/ui/adapter/l;Lcom/ifengyu/intercom/ui/adapter/l$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/l$a;->itemView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/l$2;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/l$2;-><init>(Lcom/ifengyu/intercom/ui/adapter/l;Lcom/ifengyu/intercom/ui/adapter/l$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/l$a;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/l;->d:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/l$a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/l;->a(Lcom/ifengyu/intercom/ui/adapter/l$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/l;->a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/l$a;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/l$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/l;->o:Lcom/ifengyu/intercom/ui/adapter/l$b;

    return-void
.end method
