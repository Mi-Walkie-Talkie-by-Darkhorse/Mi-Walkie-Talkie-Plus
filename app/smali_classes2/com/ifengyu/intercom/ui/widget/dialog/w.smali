.class public Lcom/ifengyu/intercom/ui/widget/dialog/w;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;
.source "SharkSetPowerListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/w$b;,
        Lcom/ifengyu/intercom/ui/widget/dialog/w$c;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/w$c;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/app/Activity;

.field private e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->h:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d:Landroid/app/Activity;

    .line 4
    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->j:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/w;)Lcom/ifengyu/intercom/ui/widget/dialog/w$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Lcom/ifengyu/intercom/ui/widget/dialog/w$c;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/w;)[Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/w;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->c:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/w;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->j:I

    return p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/dialog/w;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/w;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->i:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/w$c;)Lcom/ifengyu/intercom/ui/widget/dialog/w;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a:[Ljava/lang/CharSequence;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Lcom/ifengyu/intercom/ui/widget/dialog/w$c;

    return-object p0
.end method

.method public b(I)Lcom/ifengyu/intercom/ui/widget/dialog/w;
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->h:I

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0084

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const p1, 0x7f09012e

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->f:Landroid/widget/TextView;

    const p1, 0x7f09012f

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->c:Landroid/view/LayoutInflater;

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->g:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->h:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Lcom/ifengyu/intercom/ui/widget/dialog/w$c;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/w$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/w$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/w;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/w;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->i:Z

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
