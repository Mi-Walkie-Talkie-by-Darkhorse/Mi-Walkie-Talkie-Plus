.class public Lcom/ifengyu/intercom/ui/adapter/n;
.super Landroidx/recyclerview/widget/RecyclerView$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/n$e;,
        Lcom/ifengyu/intercom/ui/adapter/n$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/ifengyu/intercom/ui/adapter/n$e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private e:Lcom/ifengyu/intercom/ui/adapter/n$d;

.field private f:Landroid/view/LayoutInflater;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->c:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->f:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/n;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/n;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/n;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->c:I

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/n;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->c:I

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/n;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/n;)Lcom/ifengyu/intercom/ui/adapter/n$d;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->e:Lcom/ifengyu/intercom/ui/adapter/n$d;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/n;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->a:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->g:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/adapter/n$e;I)V
    .locals 11

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v0

    const v1, 0x8f03

    const-string v2, ""

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->i()Z

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()Z

    move-result v0

    goto :goto_1

    :cond_2
    move-object v4, v2

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f0800d6

    const v6, 0x7f060033

    const v7, 0x7f11008f

    const v8, 0x7f110091

    const/4 v9, 0x1

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v7

    const v8, 0x7f11014f

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/ifengyu/intercom/ui/adapter/n;->g:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v9, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const v6, 0x7f060175

    :cond_5
    invoke-static {v6}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_6
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_7
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/n;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_8

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->c:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v0

    if-eq v0, v9, :cond_e

    const/4 v4, 0x6

    const-string v5, ":"

    const-string v6, "SN: %s"

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->d:Landroid/widget/TextView;

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()I

    move-result v0

    if-ne v0, v9, :cond_a

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->e:Landroid/widget/ImageView;

    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_a
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->e:Landroid/widget/ImageView;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_b
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->d:Landroid/widget/TextView;

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->e:Landroid/widget/ImageView;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_c
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->d:Landroid/widget/TextView;

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()I

    move-result v1

    if-nez v1, :cond_d

    const v1, 0x7f080130

    goto :goto_5

    :cond_d
    const v1, 0x7f08012f

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_e
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->d:Landroid/widget/TextView;

    const v1, 0x7f1100d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->e:Landroid/widget/ImageView;

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->b:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->f:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->f:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->f:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->f:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/n$a;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/adapter/n$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/n;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_7

    :cond_f
    iget-object p2, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->f:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {p2, v9}, Landroid/view/View;->setClickable(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/n$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/n$b;-><init>(Lcom/ifengyu/intercom/ui/adapter/n;Lcom/ifengyu/intercom/ui/adapter/n$e;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/n$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/n$c;-><init>(Lcom/ifengyu/intercom/ui/adapter/n;Lcom/ifengyu/intercom/ui/adapter/n$e;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/adapter/n$e;->f:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_7
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->c:I

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->g:Ljava/util/List;

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

    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/n$e;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n$e;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/n;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/n$e;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/n$e;
    .locals 3

    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/n$e;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/n$e;-><init>(Lcom/ifengyu/intercom/ui/adapter/n;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/n$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n;->e:Lcom/ifengyu/intercom/ui/adapter/n$d;

    return-void
.end method
