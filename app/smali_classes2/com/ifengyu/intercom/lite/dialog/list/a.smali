.class public Lcom/ifengyu/intercom/lite/dialog/list/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "BottomSheetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/dialog/list/a$b;,
        Lcom/ifengyu/intercom/lite/dialog/list/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/ifengyu/intercom/lite/dialog/list/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/dialog/list/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Z

.field private f:I

.field private g:Lcom/ifengyu/intercom/lite/dialog/list/a$b;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->f:I

    .line 4
    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->d:Z

    .line 5
    iput-boolean p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/dialog/list/a;)Lcom/ifengyu/intercom/lite/dialog/list/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->g:Lcom/ifengyu/intercom/lite/dialog/list/a$b;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/dialog/list/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/dialog/list/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->f:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/dialog/list/c;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->a:Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->b:Landroid/view/View;

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p3, :cond_0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->c:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/lite/dialog/list/a$c;I)V
    .locals 2
    .param p1    # Lcom/ifengyu/intercom/lite/dialog/list/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/dialog/list/c;

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    check-cast p1, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;

    .line 13
    iget v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->f:I

    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->a(Lcom/ifengyu/intercom/lite/dialog/list/c;Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->a:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->a:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/dialog/list/a;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/lite/dialog/list/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/a;->a(Lcom/ifengyu/intercom/lite/dialog/list/a$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/lite/dialog/list/a$c;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/lite/dialog/list/a$c;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p1, Lcom/ifengyu/intercom/lite/dialog/list/a$c;

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->a:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/a$c;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/lite/dialog/list/a$c;

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->b:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/a$c;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4
    :cond_1
    new-instance p2, Lcom/ifengyu/intercom/lite/dialog/list/a$c;

    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->d:Z

    iget-boolean v2, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->e:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {p2, v0}, Lcom/ifengyu/intercom/lite/dialog/list/a$c;-><init>(Landroid/view/View;)V

    .line 6
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/lite/dialog/list/a$a;-><init>(Lcom/ifengyu/intercom/lite/dialog/list/a;Lcom/ifengyu/intercom/lite/dialog/list/a$c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/lite/dialog/list/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a;->g:Lcom/ifengyu/intercom/lite/dialog/list/a$b;

    return-void
.end method
