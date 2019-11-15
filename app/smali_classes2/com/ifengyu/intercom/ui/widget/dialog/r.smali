.class public Lcom/ifengyu/intercom/ui/widget/dialog/r;
.super Ljava/lang/Object;
.source "ListHolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/ifengyu/intercom/ui/widget/dialog/n;


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroid/widget/ListView;

.field private d:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;

.field private e:Landroid/view/View$OnKeyListener;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/r;)Landroid/view/View$OnKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->e:Landroid/view/View$OnKeyListener;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f040074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const v0, 0x7f1001e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f1001e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/r$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/r$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/r;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object v1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->b:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->f:Landroid/view/View;

    goto :goto_0
.end method

.method public a(Landroid/widget/BaseAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->g:Landroid/view/View;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->g:Landroid/view/View;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->d:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->d:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->f:Landroid/view/View;

    if-eqz v2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    invoke-interface {v0, v1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;->a(Ljava/lang/Object;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->d:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r;->e:Landroid/view/View$OnKeyListener;

    return-void
.end method
