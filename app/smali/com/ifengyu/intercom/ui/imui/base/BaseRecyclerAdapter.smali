.class public abstract Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;,
        Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;,
        Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$SelectedType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ifengyu/intercom/ui/imui/base/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_MULTI:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SINGLE:I = 0x1


# instance fields
.field private curSelectedPos:I

.field private mClickListener:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;

.field protected final mContext:Landroid/content/Context;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mLongClickListener:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;

.field public mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private preSelectedPos:I

.field protected selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mSelectedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedType:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->curSelectedPos:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->preSelectedPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedItems:Ljava/util/List;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;)Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mClickListener:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;)Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mLongClickListener:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addSelectedItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public abstract bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/ui/imui/base/a;",
            "ITT;)V"
        }
    .end annotation
.end method

.method protected bindMultiTypeData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/ui/imui/base/a;",
            "ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public delete(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public getCurSelectedPos()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->curSelectedPos:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract getItemLayoutId(I)I
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedItems:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedType:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->onBindViewHolder(Lcom/ifengyu/intercom/ui/imui/base/a;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ifengyu/intercom/ui/imui/base/a;I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->bindMultiTypeData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/imui/base/a;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/imui/base/a;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->getItemLayoutId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/base/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mClickListener:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/imui/base/a;->itemView:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$1;-><init>(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;Lcom/ifengyu/intercom/ui/imui/base/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mLongClickListener:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/imui/base/a;->itemView:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$2;-><init>(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;Lcom/ifengyu/intercom/ui/imui/base/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-object v0
.end method

.method public refreshItemState(I)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->curSelectedPos:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->preSelectedPos:I

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->curSelectedPos:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->preSelectedPos:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->preSelectedPos:I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->notifyItemChanged(I)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->curSelectedPos:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->curSelectedPos:I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->notifyItemChanged(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->toggleSelect(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurSelectedPos(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->curSelectedPos:I

    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mClickListener:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->mLongClickListener:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;

    return-void
.end method

.method public setSelectedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedItems:Ljava/util/List;

    return-void
.end method

.method public setSelectedType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedType:I

    return-void
.end method

.method public toggleSelect(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->notifyItemChanged(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->selectedItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
