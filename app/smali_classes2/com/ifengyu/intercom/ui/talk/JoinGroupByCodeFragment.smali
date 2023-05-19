.class public Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "JoinGroupByCodeFragment.java"

# interfaces
.implements Lcom/ifengyu/talk/h/c;
.implements Lcom/ifengyu/talk/h/b;


# instance fields
.field bottomTvsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008b
    .end annotation
.end field

.field btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a2
    .end annotation
.end field

.field ivInitiatorAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090270
    .end annotation
.end field

.field llInitiatorInfo:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field topEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049e
    .end annotation
.end field

.field tvInitiatorName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904dc
    .end annotation
.end field

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic A3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "getCreateGroupCodeUserInfo success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->llInitiatorInfo:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->ivInitiatorAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->tvInitiatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static C3()Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;-><init>()V

    return-object v0
.end method

.method private D3(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->v(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/f1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/f1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/b1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$b;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private E3(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->D3(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->E3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method private l3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f11020d

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f0800c5

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/d1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/d1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    sget-object v2, Lcom/ifengyu/intercom/j/a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/a1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/a1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/z0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/z0;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$a;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->G(Landroid/view/View;)V

    return-void
.end method

.method private m3()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->I(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/y0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/y0;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/e1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/e1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$c;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic n3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic o3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic q3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->m3()V

    return-void
.end method

.method private synthetic s3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void
.end method

.method private synthetic u3(Lio/reactivex/disposables/Disposable;)V
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

.method private synthetic w3(Lcom/ifengyu/intercom/http/entity/JoinGroupByCodeEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "joinGroupByCode success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/JoinGroupByCodeEntity;->getGid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->z:J

    return-void
.end method

.method private synthetic y3(Lio/reactivex/disposables/Disposable;)V
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


# virtual methods
.method public synthetic B3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->A3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V

    return-void
.end method

.method public C(Lcom/shanlitech/et/model/MemberList;)V
    .locals 0

    return-void
.end method

.method public D(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->z:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    :cond_0
    return-void
.end method

.method protected E2()V
    .locals 0

    return-void
.end method

.method public G(Lcom/shanlitech/et/model/GroupList;)V
    .locals 0

    return-void
.end method

.method public K(Lcom/ifengyu/talk/models/OperatorMsgModel;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    iget-wide v1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->z:J

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getOprName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MODE_ENTER_GROUP_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->z:J

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getGid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getErrCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->h:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v1}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v1

    const v2, 0x7f1101d8

    if-ne v0, v1, :cond_1

    .line 7
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto/16 :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getErrCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->n:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v1}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 9
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getErrCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->o:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v1}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v1

    const v3, 0x7f1101e0

    if-ne v0, v1, :cond_3

    .line 11
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto/16 :goto_1

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_7

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v4, p1, v1

    .line 14
    invoke-virtual {v4}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getAcc()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/talk/f/a0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 15
    invoke-virtual {v4}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getErrCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->n:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v0}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 16
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v4}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getErrCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->o:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v0}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 18
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const p1, 0x7f11020e

    .line 20
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c1;-><init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public V0(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method

.method public W0(Lcom/shanlitech/et/notice/event/TransferGroupEvent;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->l(Landroid/app/Activity;)Z

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/c0;->addListener(Lcom/ifengyu/talk/h/c;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/b0;->addListener(Lcom/ifengyu/talk/h/b;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->l3()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/c0;->removeListener(Lcom/ifengyu/talk/h/c;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/b0;->removeListener(Lcom/ifengyu/talk/h/b;)V

    return-void
.end method

.method public synthetic p3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->o3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic r3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->q3(Landroid/view/View;)V

    return-void
.end method

.method public t(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 0

    return-void
.end method

.method public synthetic t3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->s3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic v3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->u3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic x3(Lcom/ifengyu/intercom/http/entity/JoinGroupByCodeEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->w3(Lcom/ifengyu/intercom/http/entity/JoinGroupByCodeEntity;)V

    return-void
.end method

.method public z(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic z3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->y3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
