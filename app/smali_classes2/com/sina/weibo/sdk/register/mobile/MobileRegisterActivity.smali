.class public Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$e;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$f;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$g;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$h;
    }
.end annotation


# static fields
.field private static final y:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Lcom/sina/weibo/sdk/component/view/TitleBar;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$f;

.field private w:I

.field private x:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$f;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$f;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->v:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->w:I

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->u:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/e;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l()V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Your phone number isn\u2019t 11-digit long"

    const-string v3, "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

    const-string v4, "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

    invoke-static {v0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/e;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l()V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u4f60\u7684\u9a57\u8b49\u78bc\u4e0d\u662f6\u4f4d\u6578"

    const-string v3, "\u4f60\u7684\u9a8c\u8bc1\u7801\u4e0d\u662f6\u4f4d\u6570"

    const-string v4, "Your code isn\u2019t 6-digit long"

    invoke-static {v0, v4, v3, v2}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3, v2}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/sina/weibo/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return v1
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    const v1, -0x424243

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->n:Landroid/widget/Button;

    const v1, 0x4dffffff    # 5.3687088E8f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->s:Ljava/lang/String;

    const-string v2, "0086"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    const v1, -0xaf8251

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method static synthetic e(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f()V

    return-void
.end method

.method static synthetic f(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->n:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->n:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private g()Landroid/widget/Button;
    .locals 5

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "common_button_big_blue.9.png"

    const-string v2, "common_button_big_blue_highlighted.9.png"

    const-string v3, "common_button_big_blue_disable.9.png"

    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x2e

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-string v2, "OK"

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u78ba\u5b9a"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic g(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private h()Landroid/widget/TextView;
    .locals 12

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v1, -0x7d7d7e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/sina/weibo/sdk/utils/f;->a()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x16

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0xb

    if-eqz v2, :cond_0

    const-string v1, "zh_CN"

    const-string v2, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

    const-string v1, "zh_HK"

    goto :goto_0

    :cond_1
    const/16 v7, 0x31

    const/16 v6, 0x42

    const/16 v5, 0x47

    const/16 v4, 0x55

    const-string v2, "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

    const-string v1, "en_US"

    :goto_0
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v2, 0x21

    if-eq v7, v3, :cond_2

    if-eq v6, v3, :cond_2

    new-instance v9, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$h;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5&lang="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p0, p0, v10}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$h;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v8, v9, v7, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    if-eq v5, v3, :cond_3

    if-eq v4, v3, :cond_3

    new-instance v3, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$h;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349&lang="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, p0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$h;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v8, v3, v5, v4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-object v0
.end method

.method static synthetic i(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    return-object p0
.end method

.method private i()Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v1, -0x7d7d7e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "Service By Sina WeiBo"

    const-string v2, "\u6b64\u670d\u52a1\u7531\u5fae\u535a\u63d0\u4f9b"

    const-string v3, "\u6b64\u670d\u52d9\u7531\u5fae\u535a\u63d0\u4f9b"

    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private j()V
    .locals 4

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->a:Landroid/app/ProgressDialog;

    const-string v1, "please wait .... "

    const-string v2, "\u6b63\u5728\u5904\u7406\u4e2d....."

    const-string v3, "\u6b63\u5728\u8655\u7406\u4e2d....."

    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic j(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e()V

    return-void
.end method

.method private k()V
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;

    invoke-direct {v1, v0}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, -0xd0d0e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v4, Lcom/sina/weibo/sdk/component/view/TitleBar;

    invoke-direct {v4, v0}, Lcom/sina/weibo/sdk/component/view/TitleBar;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->b:Lcom/sina/weibo/sdk/component/view/TitleBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->b:Lcom/sina/weibo/sdk/component/view/TitleBar;

    const-string v6, "\u53d6\u6d88"

    const-string v7, "Cancel"

    invoke-static {v0, v7, v6, v6}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setLeftBtnText(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->b:Lcom/sina/weibo/sdk/component/view/TitleBar;

    iget-object v6, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->r:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setTitleBarText(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->b:Lcom/sina/weibo/sdk/component/view/TitleBar;

    new-instance v6, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$b;

    invoke-direct {v6, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$b;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    invoke-virtual {v4, v6}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setTitleBarClickListener(Lcom/sina/weibo/sdk/component/view/TitleBar$b;)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->b:Lcom/sina/weibo/sdk/component/view/TitleBar;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, 0x2

    invoke-static {v0, v7}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v6, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v8, "weibosdk_common_shadow_top.9.png"

    invoke-static {v0, v8}, Lcom/sina/weibo/sdk/utils/f;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->c:Landroid/widget/ScrollView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x2f

    invoke-static {v0, v6}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->c:Landroid/widget/ScrollView;

    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->c:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    const/16 v9, 0x2c

    invoke-static {v0, v9}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    const v9, -0x7d7d7e

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    const-string v9, "Confirm your country/region and enter your mobile number"

    const-string v10, "\u8bf7\u786e\u8ba4\u56fd\u5bb6\u548c\u5730\u533a\u5e76\u586b\u5199\u624b\u673a\u53f7\u7801"

    const-string v11, "\u8acb\u78ba\u8a8d\u570b\u5bb6\u548c\u5730\u5340\u5e76\u586b\u5beb\u624b\u6a5f\u865f"

    invoke-static {v0, v9, v10, v11}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x30

    invoke-static {v0, v9}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v2, v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    const-string v11, "login_country_background.9.png"

    const-string v12, "login_country_background_highlighted.9.png"

    invoke-static {v0, v11, v12}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    const/high16 v10, 0x41880000    # 17.0f

    invoke-virtual {v2, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    const-string v11, "0086"

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    const v11, -0xadadae

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    const/16 v12, 0x10

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v9}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v13

    invoke-direct {v2, v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xf

    invoke-static {v0, v13}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v14

    iput v14, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v14, 0x9

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v14, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setId(I)V

    const-string v14, "triangle.png"

    invoke-static {v0, v14}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v15, 0xd

    invoke-static {v0, v15}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0, v15}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v15

    invoke-direct {v14, v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v13}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v6

    iput v6, v14, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0xb

    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v14, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->t:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v9}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v10, v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x76

    invoke-static {v0, v11}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v11

    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v14, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v14, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v14, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xa

    invoke-static {v0, v14}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v14

    iput v14, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x32

    invoke-static {v0, v14}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v15

    invoke-direct {v10, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-string v15, "login_top_background.9.png"

    invoke-static {v0, v15}, Lcom/sina/weibo/sdk/utils/f;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j:Landroid/widget/ImageView;

    const/4 v15, 0x4

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setId(I)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j:Landroid/widget/ImageView;

    const-string v12, "search_clear_btn_normal.png"

    const-string v9, "search_clear_btn_down.png"

    invoke-static {v0, v12, v9}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v10, 0x16

    invoke-static {v0, v10}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v0, v10}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v9, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v13}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v10

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v9, v7, v10}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v9, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    const/high16 v12, -0x1000000

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v9, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    const-string v12, "Your mobile number"

    const-string v7, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    const-string v10, "\u8acb\u8f38\u5165\u624b\u6a5f\u865f"

    invoke-static {v0, v12, v7, v10}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    const v9, -0x424243

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v7, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setSelected(Z)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v14}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v7, v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v11}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v0, v11}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-static {v0, v11}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v11}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v7, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v14}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v12, "login_bottom_background.9.png"

    invoke-static {v0, v12}, Lcom/sina/weibo/sdk/utils/f;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setId(I)V

    iget-object v10, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    const-string v12, "get_code_button.9.png"

    const-string v14, "get_code_button_highlighted.9.png"

    invoke-static {v0, v12, v14}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v12, 0x1d

    invoke-static {v0, v12}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-static {v0, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v4

    iput v4, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    const/16 v6, 0x12

    const/16 v12, 0x12

    invoke-virtual {v4, v6, v11, v12, v11}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    const-string v6, "Get code"

    const-string v10, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    const-string v12, "\u7372\u53d6\u9a57\u8b49\u78bc"

    invoke-static {v0, v6, v10, v12}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextSize(F)V

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->e()V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v10, 0x2

    invoke-virtual {v4, v10, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    const v6, -0x424243

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    const-string v6, "Verification code"

    const-string v10, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    const-string v12, "\u8acb\u8f38\u5165\u9a57\u8b49\u78bc"

    invoke-static {v0, v6, v10, v12}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0x30

    invoke-static {v0, v6}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const v4, -0x1ebedd

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x24

    invoke-static {v0, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-static {v0, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->n:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d()V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->n:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->c:Landroid/widget/ScrollView;

    iget-object v3, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->c:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j()V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    new-instance v4, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$g;

    invoke-direct {v4, v0, v9}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$g;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$g;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    new-instance v3, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$e;

    invoke-direct {v3, v0, v9}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$e;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$e;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->n:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->setSizeChangeListener(Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private l()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "your network is  disabled  try again later"

    const-string v3, "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e"

    const-string v4, "\u60a8\u7684\u7db2\u7d61\u4e0d\u53ef\u7528\uff0c\u8acb\u7a0d\u5f8c"

    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p3

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt p3, p1, :cond_4

    iget p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->w:I

    if-ge p1, p2, :cond_0

    move p1, p2

    :cond_0
    iput p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->w:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ge p2, p4, :cond_1

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    if-le p2, p4, :cond_2

    if-ge p2, p1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p2, p4, :cond_3

    iget p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->w:I

    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->v:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$f;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/sina/weibo/sdk/net/f;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/f;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->o:Ljava/lang/String;

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->p:Ljava/lang/String;

    const-string v2, "packagename"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->q:Ljava/lang/String;

    const-string v2, "key_hash"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0086"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "phone"

    invoke-virtual {v0, p2, p1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    const-string p2, "0031405000"

    invoke-virtual {v0, p1, p2}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$c;

    invoke-direct {p1, p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$c;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    const-string p2, "http://api.weibo.com/oauth2/sms_authorize/send"

    const-string v1, "GET"

    invoke-static {p0, p2, v0, v1, p1}, Lcom/sina/weibo/sdk/net/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;Ljava/lang/String;Lcom/sina/weibo/sdk/net/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/sina/weibo/sdk/net/f;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/f;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->o:Ljava/lang/String;

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->p:Ljava/lang/String;

    const-string v2, "packagename"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->q:Ljava/lang/String;

    const-string v2, "key_hash"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    const-string v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->u:Ljava/lang/String;

    const-string v1, "cfrom"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    new-instance p2, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;

    invoke-direct {p2, p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V

    const-string p1, "http://api.weibo.com/oauth2/sms_authorize/submit"

    const-string v1, "GET"

    invoke-static {p0, p1, v0, v1, p2}, Lcom/sina/weibo/sdk/net/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;Ljava/lang/String;Lcom/sina/weibo/sdk/net/d;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "code"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->s:Ljava/lang/String;

    const-string p1, "name"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->l:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->x:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->c()V

    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->f:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pass wrong params!!"

    invoke-static {v1, v2, v0}, Lcom/sina/weibo/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const-string v1, "appKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->o:Ljava/lang/String;

    const-string v1, "packagename"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->p:Ljava/lang/String;

    const-string v1, "key_hash"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "your appkey not set"

    const-string v3, "\u60a8\u7684app_key\u6ca1\u6709\u8bbe\u7f6e"

    const-string v4, "\u60a8\u7684app_key\u6c92\u6709\u8a2d\u7f6e"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sina/weibo/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    const-string v0, "register_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Login"

    const-string v0, "\u9a8c\u8bc1\u7801\u767b\u5f55"

    const-string v1, "\u9a57\u8b49\u78bc\u767b\u9304"

    invoke-static {p0, p1, v0, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->r:Ljava/lang/String;

    const-string p1, "0086"

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->s:Ljava/lang/String;

    const-string p1, "China"

    const-string v0, "\u4e2d\u56fd"

    const-string v1, "\u4e2d\u570b"

    invoke-static {p0, p1, v0, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->t:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->k()V

    new-instance p1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$a;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$a;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;JJ)V

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->x:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const-string p2, "Your phone number isn\u2019t 11-digit long"

    const-string v0, "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

    const-string v1, "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

    invoke-static {p0, p2, v0, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->m:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
