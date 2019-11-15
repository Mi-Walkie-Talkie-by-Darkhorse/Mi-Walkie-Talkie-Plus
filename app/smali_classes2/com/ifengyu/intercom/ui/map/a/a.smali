.class public Lcom/ifengyu/intercom/ui/map/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OffmapDownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ifengyu/intercom/ui/map/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ifengyu/intercom/ui/adapter/k;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a/a;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/a/a;)Lcom/ifengyu/intercom/ui/adapter/k;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a;->b:Lcom/ifengyu/intercom/ui/adapter/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/map/a/a$a;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/map/a/a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/map/a/a$a;-><init>(Lcom/ifengyu/intercom/ui/map/a/a;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/ui/adapter/k;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a/a;->b:Lcom/ifengyu/intercom/ui/adapter/k;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/a/a$a;I)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f09012f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v1, 0x7f090131

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setMax(I)V

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setProgress(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/a/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->postInvalidateDelayed(J)V

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/map/a/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/a/a;->a(Lcom/ifengyu/intercom/ui/map/a/a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/a/a;->a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/map/a/a$a;

    move-result-object v0

    return-object v0
.end method
