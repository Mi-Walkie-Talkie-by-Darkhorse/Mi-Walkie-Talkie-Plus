.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$b;
.super Ljava/lang/Object;
.source "SealCustomAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->s(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$c;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->f(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$c;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-interface {v0, v1, p1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$d;->m(Landroid/view/View;ILcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
