.class public Lcom/ifengyu/intercom/ui/widget/dialog/r;
.super Ljava/lang/Object;
.source "ListHolder.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/n;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:I

.field private b:Landroid/widget/ListView;

.field private c:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;

.field private d:Landroid/view/View$OnKeyListener;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/r;)Landroid/view/View$OnKeyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->d:Landroid/view/View$OnKeyListener;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c007a

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const p2, 0x7f090128

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 9
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const p2, 0x7f09012d

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:Landroid/widget/ListView;

    .line 11
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:Landroid/widget/ListView;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/r$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/r$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/r;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->f:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->f:Landroid/view/View;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->e:Landroid/view/View;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->e:Landroid/view/View;

    if-eqz p5, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    invoke-interface {p4, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;->a(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->d:Landroid/view/View$OnKeyListener;

    return-void
.end method
