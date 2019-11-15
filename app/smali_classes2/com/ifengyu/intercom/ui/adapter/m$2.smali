.class Lcom/ifengyu/intercom/ui/adapter/m$2;
.super Ljava/lang/Object;
.source "SelectDeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/m$b;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/m;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/m;Lcom/ifengyu/intercom/ui/adapter/m$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$2;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/m$2;->a:Lcom/ifengyu/intercom/ui/adapter/m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$2;->a:Lcom/ifengyu/intercom/ui/adapter/m$b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/m$b;->getLayoutPosition()I

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$2;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->b(Lcom/ifengyu/intercom/ui/adapter/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$2;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->c(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/adapter/m$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$2;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->c(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/adapter/m$a;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$2;->a:Lcom/ifengyu/intercom/ui/adapter/m$b;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/adapter/m$b;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$2;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->b(Lcom/ifengyu/intercom/ui/adapter/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-interface {v2, v3, v1, v0}, Lcom/ifengyu/intercom/ui/adapter/m$a;->a(Landroid/view/View;ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    return-void
.end method
