.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SharkCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;,
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Typeface;

.field private d:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field private e:Landroid/text/style/AbsoluteSizeSpan;

.field private final f:Landroid/text/style/ForegroundColorSpan;

.field private final g:Landroid/text/style/ForegroundColorSpan;

.field private final h:Landroid/text/style/ForegroundColorSpan;

.field private final i:Landroid/text/style/ForegroundColorSpan;

.field private final j:Landroid/text/style/ForegroundColorSpan;

.field private final k:Landroid/text/style/ForegroundColorSpan;

.field private l:Landroid/text/SpannableStringBuilder;

.field private m:Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->a:Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->b:Ljava/util/List;

    .line 4
    sget-object p1, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->c:Landroid/graphics/Typeface;

    .line 5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->l:Landroid/text/SpannableStringBuilder;

    .line 6
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lcom/ifengyu/intercom/p/b0;->I(F)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->e:Landroid/text/style/AbsoluteSizeSpan;

    .line 7
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#99000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->f:Landroid/text/style/ForegroundColorSpan;

    .line 8
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v0, "#960076ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->g:Landroid/text/style/ForegroundColorSpan;

    .line 9
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->h:Landroid/text/style/ForegroundColorSpan;

    .line 10
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff0076ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->i:Landroid/text/style/ForegroundColorSpan;

    .line 11
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->j:Landroid/text/style/ForegroundColorSpan;

    .line 12
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->k:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->m:Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$d;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->j:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->c:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->d:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->g:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->i:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->f:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->h:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->l:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method static synthetic o(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->e:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method static synthetic p(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->k:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->b:Ljava/util/List;

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
    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->q(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->r(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;->a(I)V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->m:Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$d;

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;
    .locals 3

    .line 1
    new-instance p2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;Landroid/view/View;)V

    return-object p2
.end method

.method public s(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->d:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-void
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a;->m:Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/a/a$d;

    return-void
.end method