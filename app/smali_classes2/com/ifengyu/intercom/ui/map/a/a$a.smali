.class Lcom/ifengyu/intercom/ui/map/a/a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OffmapDownloadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

.field e:Landroid/widget/TextView;

.field final synthetic f:Lcom/ifengyu/intercom/ui/map/a/a;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/map/a/a;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->f:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1002a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->c:Landroid/view/View;

    const v0, 0x7f1002aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->a:Landroid/widget/TextView;

    const v0, 0x7f1002ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->b:Landroid/widget/TextView;

    const v0, 0x7f1002ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->e:Landroid/widget/TextView;

    const v0, 0x7f1002a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->f:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/a/a;->a(Lcom/ifengyu/intercom/ui/map/a/a;)Lcom/ifengyu/intercom/ui/adapter/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->f:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/a/a;->a(Lcom/ifengyu/intercom/ui/map/a/a;)Lcom/ifengyu/intercom/ui/adapter/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/a/a$a;->getLayoutPosition()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-interface {v0, p1, v1, v2}, Lcom/ifengyu/intercom/ui/adapter/k;->a(Landroid/view/View;ILcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;)V

    :cond_0
    return-void
.end method
