.class Lcom/ifengyu/intercom/ui/adapter/l$1;
.super Ljava/lang/Object;
.source "SealCustomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/l;->a(Lcom/ifengyu/intercom/ui/adapter/l$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/l$a;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/l;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/l;Lcom/ifengyu/intercom/ui/adapter/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/l$1;->b:Lcom/ifengyu/intercom/ui/adapter/l;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/l$1;->a:Lcom/ifengyu/intercom/ui/adapter/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$1;->a:Lcom/ifengyu/intercom/ui/adapter/l$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/l$a;->getAdapterPosition()I

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$1;->b:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/l;->a(Lcom/ifengyu/intercom/ui/adapter/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$1;->b:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/l;->b(Lcom/ifengyu/intercom/ui/adapter/l;)Lcom/ifengyu/intercom/ui/adapter/l$b;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$1;->a:Lcom/ifengyu/intercom/ui/adapter/l$a;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/adapter/l$a;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$1;->b:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/l;->a(Lcom/ifengyu/intercom/ui/adapter/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-interface {v2, v3, v1, v0}, Lcom/ifengyu/intercom/ui/adapter/l$b;->a(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    return-void
.end method
