.class Lcom/ifengyu/intercom/ui/map/c/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$y;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/c/a;
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

.field final synthetic f:Lcom/ifengyu/intercom/ui/map/c/a;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/map/c/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->f:Lcom/ifengyu/intercom/ui/map/c/a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902ed

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->c:Landroid/view/View;

    const p1, 0x7f0902ee

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0902f5

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->b:Landroid/widget/TextView;

    const p1, 0x7f09034a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->e:Landroid/widget/TextView;

    const p1, 0x7f090148

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->f:Lcom/ifengyu/intercom/ui/map/c/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/a;->a(Lcom/ifengyu/intercom/ui/map/c/a;)Lcom/ifengyu/intercom/ui/adapter/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->f:Lcom/ifengyu/intercom/ui/map/c/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/a;->a(Lcom/ifengyu/intercom/ui/map/c/a;)Lcom/ifengyu/intercom/ui/adapter/k;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/a$a;->d:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-interface {v0, p1, v1, v2}, Lcom/ifengyu/intercom/ui/adapter/k;->a(Landroid/view/View;ILcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;)V

    :cond_0
    return-void
.end method
