.class public Lcom/ifengyu/intercom/ui/adapter/b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BtEarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/b$a;,
        Lcom/ifengyu/intercom/ui/adapter/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ifengyu/intercom/ui/adapter/b$a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/ifengyu/intercom/ui/adapter/b$b;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/b;->d:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/b$a;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/b$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/b$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/b;Landroid/view/View;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/adapter/b;->d:I

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/adapter/b$a;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BtEarBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BtEarBean;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/b$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BtEarBean;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/adapter/b;->d:I

    if-ne v0, p2, :cond_1

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/b$a;->b:Landroid/widget/ImageView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/b$a;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/b$a;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/b$a;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/b$a;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/b$a;->b:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/b$a;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/b;->a(Lcom/ifengyu/intercom/ui/adapter/b$a;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/adapter/b$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/b$a;->getLayoutPosition()I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/adapter/b;->d:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/adapter/b;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/b;->c:Lcom/ifengyu/intercom/ui/adapter/b$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/b;->c:Lcom/ifengyu/intercom/ui/adapter/b$b;

    invoke-interface {v2, p1, v1, v0}, Lcom/ifengyu/intercom/ui/adapter/b$b;->a(Landroid/view/View;ILjava/util/Map$Entry;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/b;->a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/b$a;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/b;->c:Lcom/ifengyu/intercom/ui/adapter/b$b;

    return-void
.end method
