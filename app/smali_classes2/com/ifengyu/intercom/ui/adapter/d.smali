.class public Lcom/ifengyu/intercom/ui/adapter/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/d$d;,
        Lcom/ifengyu/intercom/ui/adapter/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/ifengyu/intercom/ui/adapter/d$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Typeface;

.field private d:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field private e:Landroid/text/style/AbsoluteSizeSpan;

.field private final f:Landroid/text/style/ForegroundColorSpan;

.field private final g:Landroid/text/style/ForegroundColorSpan;

.field private final h:Landroid/text/style/ForegroundColorSpan;

.field private final i:Landroid/text/style/ForegroundColorSpan;

.field private j:Landroid/text/SpannableStringBuilder;

.field private k:Lcom/ifengyu/intercom/ui/adapter/d$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/d;->b:Ljava/util/List;

    sget-object p1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->c:Landroid/graphics/Typeface;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->j:Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lcom/ifengyu/intercom/i/c0;->c(F)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->e:Landroid/text/style/AbsoluteSizeSpan;

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#ff000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->f:Landroid/text/style/ForegroundColorSpan;

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#ff0076ff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->g:Landroid/text/style/ForegroundColorSpan;

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#99000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->h:Landroid/text/style/ForegroundColorSpan;

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#960076ff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->i:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/d;)Lcom/ifengyu/intercom/ui/adapter/d$c;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->k:Lcom/ifengyu/intercom/ui/adapter/d$c;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->j:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->e:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/adapter/d;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->d:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->g:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->i:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->f:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->h:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->c:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/adapter/d$d;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/adapter/d$d;->a(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/d;->k:Lcom/ifengyu/intercom/ui/adapter/d$c;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/d$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/d$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/d;Lcom/ifengyu/intercom/ui/adapter/d$d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/d$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/d$b;-><init>(Lcom/ifengyu/intercom/ui/adapter/d;Lcom/ifengyu/intercom/ui/adapter/d$d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->d:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/d$d;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/d;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/d$d;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/d$d;
    .locals 3

    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/d$d;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/d$d;-><init>(Lcom/ifengyu/intercom/ui/adapter/d;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d;->k:Lcom/ifengyu/intercom/ui/adapter/d$c;

    return-void
.end method
