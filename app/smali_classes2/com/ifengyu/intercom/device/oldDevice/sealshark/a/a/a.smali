.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BtEarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;,
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$b;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->d:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BtEarBean;

    .line 3
    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BtEarBean;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BtEarBean;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->d:I

    if-ne v0, p2, :cond_1

    .line 8
    iget-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f08015b

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 12
    :goto_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;
    .locals 3

    .line 1
    new-instance p2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;Landroid/view/View;)V

    return-object p2
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->d:I

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->d:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$b;

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2, p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$b;->h(Landroid/view/View;ILjava/util/Map$Entry;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->f(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/a$b;

    return-void
.end method
