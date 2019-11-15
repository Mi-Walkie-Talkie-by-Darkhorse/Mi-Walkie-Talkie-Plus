.class Lcom/ifengyu/intercom/ui/adapter/n$1;
.super Ljava/lang/Object;
.source "SharkCustomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/n$a;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/n;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/n;Lcom/ifengyu/intercom/ui/adapter/n$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$1;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/n$1;->a:Lcom/ifengyu/intercom/ui/adapter/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$1;->a:Lcom/ifengyu/intercom/ui/adapter/n$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/n$a;->getAdapterPosition()I

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$1;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$1;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/n;->b(Lcom/ifengyu/intercom/ui/adapter/n;)Lcom/ifengyu/intercom/ui/adapter/n$b;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$1;->a:Lcom/ifengyu/intercom/ui/adapter/n$a;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/adapter/n$a;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$1;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-interface {v2, v3, v1, v0}, Lcom/ifengyu/intercom/ui/adapter/n$b;->a(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    return-void
.end method
