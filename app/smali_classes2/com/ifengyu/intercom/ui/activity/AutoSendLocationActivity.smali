.class public Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "AutoSendLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/widget/ImageView;

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G()V

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    const-string v2, "setting_auto_send_location_space_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s()V

    const v0, 0x7f090491

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0903ff

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903fe

    .line 4
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->p:Landroid/widget/ImageView;

    const v0, 0x7f090400

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f090402

    .line 6
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f090401

    .line 7
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f090403

    .line 8
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f090405

    .line 9
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->m:Landroid/widget/RelativeLayout;

    const v0, 0x7f090404

    .line 10
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/ImageView;

    const v0, 0x7f090406

    .line 11
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0903f9

    .line 12
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903f8

    .line 13
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    const v0, 0x7f0903fa

    .line 14
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0903fc

    .line 15
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903fb

    .line 16
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f0903fd

    .line 17
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f11005b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    .line 25
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f11037c

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    const/4 p1, 0x5

    .line 4
    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    goto :goto_0

    .line 5
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    goto :goto_0

    .line 8
    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->p:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    .line 10
    iput v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    goto :goto_0

    .line 11
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    const/16 p1, 0xf

    .line 13
    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    goto :goto_0

    .line 14
    :sswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    const/16 p1, 0xa

    .line 16
    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 18
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    if-eq v2, v3, :cond_0

    .line 19
    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 21
    :cond_1
    iget p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    if-eq p1, v2, :cond_2

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 23
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 24
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/ImageView;

    if-eq v3, v4, :cond_3

    .line 25
    invoke-virtual {v3}, Landroid/widget/ImageView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 27
    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    if-eq v2, v3, :cond_5

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    .line 29
    :cond_5
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0903f9 -> :sswitch_4
        0x7f0903fc -> :sswitch_3
        0x7f0903ff -> :sswitch_2
        0x7f090402 -> :sswitch_1
        0x7f090405 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->H()V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->l(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    const v0, 0xea60

    div-int/2addr p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 11
    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 13
    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 15
    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    .line 16
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:I

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Ljava/util/ArrayList;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onResume()V

    return-void
.end method

.method protected s()V
    .locals 2

    const v0, 0x7f09048e

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->c:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
