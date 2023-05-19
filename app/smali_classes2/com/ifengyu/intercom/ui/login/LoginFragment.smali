.class public Lcom/ifengyu/intercom/ui/login/LoginFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/login/LoginFragment$e;
    }
.end annotation


# instance fields
.field private A:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBtnForget:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900aa
    .end annotation
.end field

.field mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900af
    .end annotation
.end field

.field mBtnLoginWeixin:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b0
    .end annotation
.end field

.field mBtnLoginXiaomi:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b1
    .end annotation
.end field

.field mBtnRegister:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b3
    .end annotation
.end field

.field mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ce
    .end annotation
.end field

.field mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d1
    .end annotation
.end field

.field mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b5
    .end annotation
.end field

.field mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b9
    .end annotation
.end field

.field mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904db
    .end annotation
.end field

.field mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09050a
    .end annotation
.end field

.field private final z:Lcom/ifengyu/intercom/ui/login/LoginFragment$e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/login/LoginFragment$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/login/LoginFragment$e;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;Lcom/ifengyu/intercom/ui/login/LoginFragment$a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->z:Lcom/ifengyu/intercom/ui/login/LoginFragment$e;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/ui/login/n;->a:Lcom/ifengyu/intercom/ui/login/n;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->A:Lio/reactivex/functions/Function;

    return-void
.end method

.method static synthetic B3(Lcom/ifengyu/library/account/UserInfo;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object p0

    const-string v0, "app"

    invoke-interface {p0, v0}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic C3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "LoginFragment"

    const-string v1, "login success"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "app"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/d0;->B0(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->n3()V

    return-void
.end method

.method static synthetic E3(Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/library/http/exception/ApiException;

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getErrorCode()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/library/http/exception/ApiException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic F3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic G3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/a0;->a(Landroid/content/Context;)V

    return-void
.end method

.method private I3(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->P(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 7
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/login/m;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/login/m;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;I)V

    .line 8
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/ui/login/s;->a:Lcom/ifengyu/intercom/ui/login/s;

    .line 9
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 11
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance p2, Lcom/ifengyu/intercom/ui/login/i;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/login/i;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/login/LoginFragment$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment$d;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    .line 12
    invoke-interface {p1, p2, v0}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private J3(Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clientType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "loginType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "secret"

    .line 5
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->I3(Ljava/util/Map;I)V

    return-void
.end method

.method private K3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clientType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->b:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "loginType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "secret"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->I3(Ljava/util/Map;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private L3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->i()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->O3(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->i()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/wxapi/WXEntryActivity;->b(Lcom/tencent/mm/opensdk/openapi/IWXAPI;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1103f3

    .line 5
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private M3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->k3(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1103f3

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private N3(Lcom/ifengyu/library/account/UserInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->T()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    iget v1, p1, Lcom/ifengyu/library/account/UserInfo;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    const-string v2, "avatar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget v1, p1, Lcom/ifengyu/library/account/UserInfo;->gender:I

    const-string v2, "gender"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->apiKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11
    invoke-static {p1}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method private O3(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const p1, 0x7f110196

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object p1, Lcom/ifengyu/intercom/ui/login/h;->a:Lcom/ifengyu/intercom/ui/login/h;

    const/4 v1, 0x0

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance p1, Lcom/ifengyu/intercom/ui/login/o;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/login/o;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    const v2, 0x7f1100c2

    .line 4
    invoke-virtual {v0, v1, v2, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 5
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/login/LoginFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/login/LoginFragment;Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->J3(Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;Ljava/lang/String;)V

    return-void
.end method

.method private i3()Landroid/text/SpannableString;
    .locals 9

    const v0, 0x7f110429

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v8, Lcom/ifengyu/intercom/ui/login/LoginFragment$a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/login/LoginFragment$a;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;Landroid/view/View;IIII)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v8, v1}, Lcom/qmuiteam/qmui/span/d;->j(Z)V

    const v1, 0x7f0601bd

    .line 4
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    .line 5
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 6
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v1, v8, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private j3()Landroid/text/SpannableString;
    .locals 16

    move-object/from16 v7, p0

    const v0, 0x7f110253

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f110436

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f11031d

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11031c

    .line 4
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v10

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v13, Lcom/ifengyu/intercom/ui/login/LoginFragment$b;

    iget-object v2, v7, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/login/LoginFragment$b;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;Landroid/view/View;IIII)V

    const/4 v14, 0x1

    .line 8
    invoke-virtual {v13, v14}, Lcom/qmuiteam/qmui/span/d;->j(Z)V

    const v15, 0x7f0601bd

    .line 9
    invoke-static {v15}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    .line 10
    invoke-static {v15}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v8, 0x11

    invoke-virtual {v12, v13, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 12
    new-instance v9, Lcom/ifengyu/intercom/ui/login/LoginFragment$c;

    iget-object v2, v7, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/login/LoginFragment$c;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;Landroid/view/View;IIII)V

    .line 13
    invoke-virtual {v9, v14}, Lcom/qmuiteam/qmui/span/d;->j(Z)V

    .line 14
    invoke-static {v15}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    .line 15
    invoke-static {v15}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 16
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v12, v9, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v12
.end method

.method private k3(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->l3(Landroid/app/Activity;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/ui/login/s0;->a:Lcom/ifengyu/intercom/ui/login/s0;

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->A:Lio/reactivex/functions/Function;

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance v0, Lcom/ifengyu/intercom/ui/login/t;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/login/t;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    sget-object v1, Lcom/ifengyu/intercom/ui/login/p;->a:Lcom/ifengyu/intercom/ui/login/p;

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private l3(Landroid/app/Activity;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setUseSystemAccountLogin(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-wide v2, 0x280000000005f8d3L    # 5.075883675072411E-116

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-string v2, "http://www.ifengyu.com"

    .line 4
    invoke-virtual {v0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->m3()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setKeepCookies(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;

    .line 7
    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setCustomizedAuthorizeActivityClass(Ljava/lang/Class;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private m3()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3
        0x1
    .end array-data
.end method

.method private n3()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->m()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->T()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    const-string v1, "user_last_login_time"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/login/q;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/login/q;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    .line 4
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/ifengyu/intercom/ui/login/l;->a:Lcom/ifengyu/intercom/ui/login/l;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private o3()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnRegister:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->setChangeAlphaWhenPress(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnForget:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->setChangeAlphaWhenPress(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->j3()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->i3()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v1}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/ifengyu/intercom/ui/login/j;->a:Lcom/ifengyu/intercom/ui/login/j;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/login/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/r;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v1, Lcom/ifengyu/intercom/ui/login/k;->a:Lcom/ifengyu/intercom/ui/login/k;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic p3(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "LoginFragment"

    const-string v1, "getCodeAndLoginXiaomi"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->d:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->J3(Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r3(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCodeAndLoginXiaomi failed, error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFragment"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    instance-of v0, p0, Landroid/accounts/OperationCanceledException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p0, 0x7f11008a

    .line 3
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/ifengyu/library/http/exception/ApiException;

    const v2, 0x7f11044b

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lcom/ifengyu/library/http/exception/ApiException;

    .line 6
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private synthetic s3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "url"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method static synthetic u3()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/AMap/style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v2, "style.data"

    invoke-static {v1, v2, v0, v2}, Lcom/ifengyu/library/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v2, "style_extra.data"

    invoke-static {v1, v2, v0, v2}, Lcom/ifengyu/library/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 4
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic w3(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    return-void
.end method

.method static synthetic y3(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "improve checkbox checked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LoginFragment"

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->w0(Z)V

    return-void
.end method

.method private synthetic z3(ILcom/ifengyu/library/account/UserInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput p1, p2, Lcom/ifengyu/library/account/UserInfo;->loginType:I

    .line 2
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->N3(Lcom/ifengyu/library/account/UserInfo;)V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->b:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/ifengyu/library/account/UserInfo;->userId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget v2, p2, Lcom/ifengyu/library/account/UserInfo;->userId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p2, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->T()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "user_login_type"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/j0;->a()V

    return-void
.end method


# virtual methods
.method public synthetic A3(ILcom/ifengyu/library/account/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->z3(ILcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public synthetic D3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->C3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public synthetic H3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->G3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->o3()V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900af,
            0x7f0900b3,
            0x7f0900aa,
            0x7f0900b1,
            0x7f0900b0
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900aa

    if-eq p1, v0, :cond_4

    const v0, 0x7f0900b3

    if-eq p1, v0, :cond_3

    const v0, 0x7f110311

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->M3()V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->L3()V

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->K3()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->O3()Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->K3()Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900af
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.ifengyu.intercom.ACTION_LOGIN_WEIXIN"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/f/a/a;->b(Landroid/content/Context;)La/f/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->z:Lcom/ifengyu/intercom/ui/login/LoginFragment$e;

    invoke-virtual {v0, v1, p1}, La/f/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/f/a/a;->b(Landroid/content/Context;)La/f/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->z:Lcom/ifengyu/intercom/ui/login/LoginFragment$e;

    invoke-virtual {v0, v1}, La/f/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->b0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public synthetic q3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->p3(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic t3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->s3()V

    return-void
.end method

.method public synthetic x3(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->w3(Ljava/lang/Boolean;)V

    return-void
.end method
