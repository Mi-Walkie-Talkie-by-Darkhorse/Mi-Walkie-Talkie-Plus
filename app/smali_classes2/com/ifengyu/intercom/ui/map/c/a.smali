.class public Lcom/ifengyu/intercom/ui/map/c/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "OffmapDownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/ifengyu/intercom/ui/map/c/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/c/a;)Lcom/ifengyu/intercom/ui/adapter/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/c/a;->b:Lcom/ifengyu/intercom/ui/adapter/k;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/adapter/k;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a;->b:Lcom/ifengyu/intercom/ui/adapter/k;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/c/a$a;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/greendao/bean/a;

    if-eqz p2, :cond_3

    .line 3
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/a;->j()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f1101ee

    goto :goto_0

    :cond_0
    const v2, 0x7f1101f0

    :goto_0
    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/a;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/a;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-lt v0, v1, :cond_1

    .line 6
    iget-object p2, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/a;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    .line 12
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/a;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setMax(I)V

    .line 13
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/a;->l()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setProgress(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object p2, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    .line 15
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/map/c/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/c/a;->a(Lcom/ifengyu/intercom/ui/map/c/a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/c/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/map/c/a$a;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/map/c/a$a;
    .locals 3

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/map/c/a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/map/c/a$a;-><init>(Lcom/ifengyu/intercom/ui/map/c/a;Landroid/view/View;)V

    return-object p2
.end method
