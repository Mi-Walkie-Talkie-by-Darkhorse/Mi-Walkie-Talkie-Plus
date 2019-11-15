.class public Lcom/ifengyu/intercom/ui/adapter/m;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/m$b;,
        Lcom/ifengyu/intercom/ui/adapter/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ifengyu/intercom/ui/adapter/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private e:Lcom/ifengyu/intercom/ui/adapter/m$a;

.field private f:Landroid/view/LayoutInflater;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->c:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->f:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/m;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->c:I

    return v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/m;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->c:I

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/m;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/adapter/m$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->e:Lcom/ifengyu/intercom/ui/adapter/m$a;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/m;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/m$b;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/m$b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0400b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/m$b;-><init>(Lcom/ifengyu/intercom/ui/adapter/m;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/adapter/m$b;I)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const v2, 0x7f090105

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f0095

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->b()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_3
    :pswitch_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->f:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AppCompatCheckBox;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->itemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->itemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->f:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->f:Landroid/support/v7/widget/AppCompatCheckBox;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->f:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/m$1;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/adapter/m$1;-><init>(Lcom/ifengyu/intercom/ui/adapter/m;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_4
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const v2, 0x7f090069

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const v2, 0x7f09006b

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0f001a

    goto/16 :goto_1

    :cond_3
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->b()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const v2, 0x7f090069

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->c:Landroid/widget/TextView;

    const v1, 0x7f0f001a

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->b()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const v2, 0x7f09006b

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_1
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->d:Landroid/widget/TextView;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SN\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g()I

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SN\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/m;->d:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->f:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/AppCompatCheckBox;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->itemView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/m$2;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/m$2;-><init>(Lcom/ifengyu/intercom/ui/adapter/m;Lcom/ifengyu/intercom/ui/adapter/m$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->itemView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/m$3;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/m$3;-><init>(Lcom/ifengyu/intercom/ui/adapter/m;Lcom/ifengyu/intercom/ui/adapter/m$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/adapter/m$b;->f:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->c:I

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/adapter/m$b;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/adapter/m$b;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/m$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m;->e:Lcom/ifengyu/intercom/ui/adapter/m$a;

    return-void
.end method
