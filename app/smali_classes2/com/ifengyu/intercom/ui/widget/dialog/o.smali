.class public Lcom/ifengyu/intercom/ui/widget/dialog/o;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/o$b;,
        Lcom/ifengyu/intercom/ui/widget/dialog/o$c;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/o$c;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/app/Activity;

.field private e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d:Landroid/app/Activity;

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Lcom/ifengyu/intercom/ui/widget/dialog/o$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b:Lcom/ifengyu/intercom/ui/widget/dialog/o$c;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/widget/dialog/o;)[Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->c:Landroid/view/LayoutInflater;

    return-object p0
.end method


# virtual methods
.method public k(Z)Lcom/ifengyu/intercom/ui/widget/dialog/o;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->i:Z

    return-object p0
.end method

.method public l(I)Lcom/ifengyu/intercom/ui/widget/dialog/o;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h:I

    return-object p0
.end method

.method public m(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/o;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public n([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/o$c;)Lcom/ifengyu/intercom/ui/widget/dialog/o;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a:[Ljava/lang/CharSequence;

    .line 2
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b:Lcom/ifengyu/intercom/ui/widget/dialog/o$c;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006e

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->g(Landroid/content/Context;)V

    const p1, 0x7f09016a

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f:Landroid/widget/TextView;

    const p1, 0x7f09016b

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->c:Landroid/view/LayoutInflater;

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b:Lcom/ifengyu/intercom/ui/widget/dialog/o$c;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/o$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/o$b;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->i:Z

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
