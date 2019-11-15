.class public Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "AutoSendLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/widget/ImageView;

.field private E:I

.field private F:I

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c_()V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f1000a0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    const v0, 0x7f1000a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f1000a2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f1000a3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f1000a4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f1000a5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f1000a6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Landroid/widget/ImageView;

    const v0, 0x7f1000a7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f1000a8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f1000a9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    const v0, 0x7f1000aa

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f1000ab

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/RelativeLayout;

    const v0, 0x7f1000ac

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    const v0, 0x7f1000ad

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->F:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "setting_auto_send_location_space_time"

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected c_()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->d()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f0901ba

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->D:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->F:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_2
    return-void

    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->D:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->D:Landroid/widget/ImageView;

    if-eq v0, v3, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_4
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->F:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    if-eq v0, v2, :cond_5

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_5
    throw v1

    :sswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->D:Landroid/widget/ImageView;

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->D:Landroid/widget/ImageView;

    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->D:Landroid/widget/ImageView;

    const/16 v0, 0xa

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->D:Landroid/widget/ImageView;

    const/16 v0, 0xf

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f10009f -> :sswitch_0
        0x7f1000a2 -> :sswitch_1
        0x7f1000a5 -> :sswitch_2
        0x7f1000a8 -> :sswitch_3
        0x7f1000ab -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->c()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->k(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0xea60

    div-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->F:I

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iput v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    const/16 v0, 0xf

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Ljava/util/ArrayList;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
