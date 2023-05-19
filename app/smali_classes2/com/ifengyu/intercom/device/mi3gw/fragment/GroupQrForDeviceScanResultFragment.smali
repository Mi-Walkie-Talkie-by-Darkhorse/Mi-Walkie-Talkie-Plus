.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "GroupQrForDeviceScanResultFragment.java"


# instance fields
.field private A:Z

.field private B:Lcom/ifengyu/talk/http/entity/TempGroup;

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

.method public static A3(Lcom/ifengyu/intercom/bean/QRContentEntity;)Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;-><init>()V

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

.method private B3()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->A:Z

    const v2, 0x7f11005a

    const/4 v3, 0x1

    const v4, 0x7f110328

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->B:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-static {v5}, Lcom/ifengyu/talk/d;->l(Lcom/ifengyu/talk/http/entity/TempGroup;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->tvName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->B:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-static {v5}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->tvIdOrCount:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->B:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v5}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-static {v5}, Lcom/ifengyu/talk/d;->l(Lcom/ifengyu/talk/http/entity/TempGroup;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->tvName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-static {v5}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->tvIdOrCount:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v5}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method private l3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "gidList"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initiator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/QRContentEntity;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "receiver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json; charset=utf-8"

    .line 9
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/n/a;->E(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/t1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/t1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 14
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/r1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/r1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private m3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->r(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/p1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/p1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->rlBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

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

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->D:Lcom/ifengyu/library/widget/groupAdatar/a;

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setAdapter(Lcom/ifengyu/library/widget/groupAdatar/a;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/u1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/u1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic n3(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic o3(Lio/reactivex/disposables/Disposable;)V
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

.method private synthetic q3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v0, "deviceApplyJoinGroup success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f110059

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/n1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/n1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method private synthetic s3(Lio/reactivex/disposables/Disposable;)V
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

.method private synthetic u3(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "queryGroupWithMembers success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->B3()V

    return-void
.end method

.method private synthetic w3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic y3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->A:Z

    if-eqz p1, :cond_0

    const p1, 0x7f11013b

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->l3()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_qr_entity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/QRContentEntity;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

    :cond_0
    return-void
.end method

.method protected E2()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/QRContentEntity;->getCid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->l(J)Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->A:Z

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->B:Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->B3()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->A:Z

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->z:Lcom/ifengyu/intercom/bean/QRContentEntity;

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

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/q1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/q1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

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

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/s1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/s1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V

    .line 11
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->m3()V

    return-object v0
.end method

.method public synthetic p3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->o3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic r3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->q3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic t3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->s3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic v3(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->u3(Lcom/ifengyu/talk/http/entity/TempGroup;)V

    return-void
.end method

.method public synthetic x3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->w3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic z3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->y3(Landroid/view/View;)V

    return-void
.end method
