.class public Lcom/ifengyu/intercom/device/oldDevice/w/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DolphinRelayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;,
        Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Typeface;

.field private d:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field private e:Landroid/text/style/AbsoluteSizeSpan;

.field private final f:Landroid/text/style/ForegroundColorSpan;

.field private final g:Landroid/text/style/ForegroundColorSpan;

.field private final h:Landroid/text/style/ForegroundColorSpan;

.field private final i:Landroid/text/style/ForegroundColorSpan;

.field private j:Landroid/text/SpannableStringBuilder;

.field private k:Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->a:Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->b:Ljava/util/List;

    .line 4
    sget-object p1, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->c:Landroid/graphics/Typeface;

    .line 5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->j:Landroid/text/SpannableStringBuilder;

    .line 6
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lcom/ifengyu/intercom/p/b0;->I(F)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->e:Landroid/text/style/AbsoluteSizeSpan;

    .line 7
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#ff000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->f:Landroid/text/style/ForegroundColorSpan;

    .line 8
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#ff0076ff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g:Landroid/text/style/ForegroundColorSpan;

    .line 9
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#99000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->h:Landroid/text/style/ForegroundColorSpan;

    .line 10
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#960076ff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->i:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->k:Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->j:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->e:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->d:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->i:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->f:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->h:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->c:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o(Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;I)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->a(I)V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->k:Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->o(Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->p(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;
    .locals 3

    .line 1
    new-instance p2, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;Landroid/view/View;)V

    return-object p2
.end method

.method public q(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->d:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    return-void
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->k:Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;

    return-void
.end method
