.class public Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "GroupQrScanResultFragment.java"

# interfaces
.implements Lcom/ifengyu/talk/h/f;


# instance fields
.field private A:Z

.field private B:Lcom/shanlitech/et/model/Group;

.field private C:Lcom/ifengyu/talk/http/entity/TempGroup;

.field private D:Lcom/ifengyu/library/widget/groupAdatar/a;

.field btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a2
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090333
    .end annotation
.end field

.field rlBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903bf
    .end annotation
.end field

.field tvIdOrCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d9
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904e5
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/bean/QRContentEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private j3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/QRContentEntity;->getCid()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/bean/QRContentEntity;->getUid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/talk/f/c0;->a(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f110058

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_1
    return-void
.end method

.method private k3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->r(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/x0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/x0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->rlBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 7
    new-instance v0, Lcom/ifengyu/library/widget/groupAdatar/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/groupAdatar/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->D:Lcom/ifengyu/library/widget/groupAdatar/a;

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setAdapter(Lcom/ifengyu/library/widget/groupAdatar/a;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/w0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/w0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic l3(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic m3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic o3(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryGroupWithMembers success myGroup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->v3()V

    return-void
.end method

.method private synthetic q3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic s3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->A:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->j3()V

    :goto_0
    return-void
.end method

.method public static u3(Lcom/ifengyu/intercom/bean/QRContentEntity;)Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_qr_entity"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private v3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->A:Z

    const/4 v2, 0x1

    const v3, 0x7f110328

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {v4}, Lcom/ifengyu/talk/d;->c(Lcom/shanlitech/et/model/Group;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->tvName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {v4}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->tvIdOrCount:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v4}, Lcom/shanlitech/et/model/Group;->getAllMemberCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f1101a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-static {v4}, Lcom/ifengyu/talk/d;->l(Lcom/ifengyu/talk/http/entity/TempGroup;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->tvName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-static {v4}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->tvIdOrCount:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v4}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f11005a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public B0(Lcom/shanlitech/et/notice/event/ResultEvent;)V
    .locals 0

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_qr_entity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/QRContentEntity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

    :cond_0
    return-void
.end method

.method protected E2()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/QRContentEntity;->getCid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->A:Z

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->B:Lcom/shanlitech/et/model/Group;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->v3()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->A:Z

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

    .line 7
    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/QRContentEntity;->getCid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/ifengyu/intercom/n/a;->z(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/v0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/v0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 10
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/t0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/t0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V

    .line 11
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public H0(Lcom/shanlitech/et/notice/event/RequestResultEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->A:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->f:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne v0, v1, :cond_0

    const p1, 0x7f110059

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/u0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/u0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->n:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne v0, v1, :cond_1

    const p1, 0x7f1101d8

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->o:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_2

    const p1, 0x7f1101e0

    .line 7
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110058

    .line 8
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->addListener(Lcom/ifengyu/talk/h/f;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->k3()V

    return-object v0
.end method

.method public m0(Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic n3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->m3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->removeListener(Lcom/ifengyu/talk/h/f;)V

    return-void
.end method

.method public synthetic p3(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->o3(Lcom/ifengyu/talk/http/entity/TempGroup;)V

    return-void
.end method

.method public synthetic r3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->q3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic t3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->s3(Landroid/view/View;)V

    return-void
.end method

.method public x(Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;)V
    .locals 0

    return-void
.end method
