.class public Lcom/ifengyu/intercom/ui/widget/dialog/y;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "SharkSetPowerListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/y$a;,
        Lcom/ifengyu/intercom/ui/widget/dialog/y$b;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/y$b;

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

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->h:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->d:Landroid/app/Activity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->j:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/y;)Lcom/ifengyu/intercom/ui/widget/dialog/y$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Lcom/ifengyu/intercom/ui/widget/dialog/y$b;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/y;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/y;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/y;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->j:I

    return v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/dialog/y;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->d:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/y;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->i:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/y$b;)Lcom/ifengyu/intercom/ui/widget/dialog/y;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Lcom/ifengyu/intercom/ui/widget/dialog/y$b;

    return-object p0
.end method

.method public b(I)Lcom/ifengyu/intercom/ui/widget/dialog/y;
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->h:I

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04007e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a(Landroid/app/Activity;)V

    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->f:Landroid/widget/TextView;

    const v0, 0x7f100201

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->d:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->c:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->b()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->h:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Lcom/ifengyu/intercom/ui/widget/dialog/y$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/y$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/y;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->e:Lcom/ifengyu/intercom/ui/widget/view/MyListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/y$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/y;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->i:Z

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->setCanceledOnTouchOutside(Z)V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->show()V

    return-void
.end method
