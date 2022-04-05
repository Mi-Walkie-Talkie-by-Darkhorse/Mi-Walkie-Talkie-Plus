.class public Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;
.super Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

# interfaces
.implements Lcom/qmuiteam/qmui/span/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$c;,
        Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;
    }
.end annotation


# static fields
.field public static n:I = 0x7

.field private static o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:J


# instance fields
.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/res/ColorStateList;

.field private h:Landroid/content/res/ColorStateList;

.field private i:I

.field private j:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;

.field private k:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$c;

.field private l:J

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->o:Ljava/util/Set;

    const-string v1, "tel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->o:Ljava/util/Set;

    const-string v1, "mailto"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->o:Ljava/util/Set;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->o:Ljava/util/Set;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->p:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->h:Landroid/content/res/ColorStateList;

    sget v0, Lcom/qmuiteam/qmui/R$color;->qmui_s_link_color:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->g:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->f:Ljava/lang/CharSequence;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->l:J

    new-instance v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$a;-><init>(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->m:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoLinkMask()I

    move-result v0

    sget v1, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->n:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->i:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    invoke-static {}, Lcom/qmuiteam/qmui/link/c;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodCompat(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUILinkTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUILinkTextView_qmui_linkBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->h:Landroid/content/res/ColorStateList;

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUILinkTextView_qmui_linkTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->f:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->setChangeAlphaWhenPress(Z)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;)Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->j:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->m:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->l:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "LinkTextView"

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string p1, "onSpanClick interrupt null text"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->l:J

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSpanClick clickUpTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->m:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->a()V

    return v1

    :cond_1
    const-wide/16 v6, 0xc8

    cmp-long v4, v6, v2

    if-gez v4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSpanClick interrupted because of TAP_TIMEOUT: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_3
    sget-object v4, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->o:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-wide v6, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->p:J

    sub-long/2addr v6, v2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->m:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->m:Landroid/os/Handler;

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->k:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$c;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAutoLinkMaskCompat()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->i:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->m:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent hasSingleTap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LinkTextView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->l:J

    goto :goto_0

    :cond_1
    const-string v0, "onTouchEvent disallow onSpanClick mSingleTapConfirmedHandler because of DOUBLE TAP"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->a()V

    :goto_0
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performLongClick()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    invoke-super {p0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setAutoLinkMaskCompat(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->i:I

    return-void
.end method

.method public setLinkColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->g:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setOnLinkClickListener(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->j:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;

    return-void
.end method

.method public setOnLinkLongClickListener(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->k:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$c;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->f:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->i:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->g:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->h:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1, v1, v2, p0}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Landroid/text/Spannable;ILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lcom/qmuiteam/qmui/span/c;)Z

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
