.class public Lcom/ifengyu/intercom/ui/talk/b3/n/l;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "TalkMessageSelfAudioProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/b3/n/l;->d:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private u(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/16 p1, 0x46

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    const/16 p1, 0x50

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    const/16 p1, 0x64

    goto :goto_0

    :cond_2
    const/16 v0, 0xf

    if-gt p1, v0, :cond_3

    const/16 p1, 0x78

    goto :goto_0

    :cond_3
    const/16 v0, 0x14

    if-gt p1, v0, :cond_4

    const/16 p1, 0x8c

    goto :goto_0

    :cond_4
    const/16 p1, 0x96

    :goto_0
    return p1
.end method

.method private v(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioDuration()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/16 v0, 0x3c

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x3c

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/b3/n/l;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V

    return-void
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00e8

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V
    .locals 11
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->c()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAbsoluteAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->c()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v1

    sub-int/2addr v0, v1

    const v1, 0x7f0904e3

    .line 3
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->c()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v5

    sub-int/2addr v0, v4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    .line 5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x493e0

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ifengyu/intercom/p/i0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ifengyu/intercom/p/i0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 11
    :goto_0
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/b3/n/l;->d:Landroidx/fragment/app/Fragment;

    const v1, 0x7f090274

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_3
    const v0, 0x7f090285

    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x2

    const v7, 0x7f0904bb

    if-eq v2, v4, :cond_5

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result v2

    if-ne v2, v6, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result v2

    if-ne v2, v5, :cond_6

    const/high16 v2, 0x428c0000    # 70.0f

    .line 17
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v7, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    .line 20
    :cond_5
    :goto_1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/talk/b3/n/l;->v(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)I

    move-result v2

    const v8, 0x7f1103d7

    new-array v9, v4, [Ljava/lang/Object;

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v7, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 22
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/talk/b3/n/l;->u(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_2
    const v0, 0x7f090268

    .line 24
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 26
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_3

    .line 27
    :cond_7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 28
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    .line 29
    :cond_8
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result p2

    if-ne p2, v5, :cond_9

    .line 30
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_9
    :goto_3
    return-void
.end method
