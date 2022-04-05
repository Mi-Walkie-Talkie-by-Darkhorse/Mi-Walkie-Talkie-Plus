.class public Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/widget/ImageView;

.field private I:I

.field private J:I

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w()V

    return-void
.end method

.method private w()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->J:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    const-string v2, "setting_auto_send_location_space_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private x()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r()V

    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f09037f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/RelativeLayout;

    const v0, 0x7f09037e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    const v0, 0x7f090380

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f090382

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/RelativeLayout;

    const v0, 0x7f090381

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:Landroid/widget/ImageView;

    const v0, 0x7f090383

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f090385

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/RelativeLayout;

    const v0, 0x7f090384

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f090386

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f090379

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Landroid/widget/RelativeLayout;

    const v0, 0x7f090378

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->z:Landroid/widget/ImageView;

    const v0, 0x7f09037a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f09037c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f09037b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f09037d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f11004c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f1102cd

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->y:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->H:Landroid/widget/ImageView;

    const/4 p1, 0x5

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->H:Landroid/widget/ImageView;

    const/4 p1, 0x3

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->H:Landroid/widget/ImageView;

    iput v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->A:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->H:Landroid/widget/ImageView;

    const/16 p1, 0xf

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->z:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->H:Landroid/widget/ImageView;

    const/16 p1, 0xa

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->H:Landroid/widget/ImageView;

    if-eq v2, v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1
    iget p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->J:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    if-eq p1, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->H:Landroid/widget/ImageView;

    if-eq v3, v4, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->J:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    if-eq v2, v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :cond_5
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090379 -> :sswitch_4
        0x7f09037c -> :sswitch_3
        0x7f09037f -> :sswitch_2
        0x7f090382 -> :sswitch_1
        0x7f090385 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;)J

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

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->I:I

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->J:I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;->G:Ljava/util/ArrayList;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    return-void
.end method

.method protected r()V
    .locals 2

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
