.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;
.super Landroid/widget/LinearLayout;
.source "SearchShowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;
    }
.end annotation


# instance fields
.field private disPlayWidth:I

.field private mChangedNull:Z

.field private mEt:Landroid/widget/EditText;

.field private mHs:Landroid/widget/HorizontalScrollView;

.field private mLeftEditIv:Landroid/widget/ImageView;

.field private mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;

.field private mLlContainer:Landroid/widget/LinearLayout;

.field private mRootView:Landroid/view/View;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private markedChild:Landroid/view/View;

.field private num:I

.field private views:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->num:I

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->num:I

    return v0
.end method

.method static synthetic access$002(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->num:I

    return p1
.end method

.method static synthetic access$008(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)I
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->num:I

    return v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mChangedNull:Z

    return v0
.end method

.method static synthetic access$302(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mChangedNull:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLlContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->markedChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->markedChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->removeViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mHs:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;

    return-object v0
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mEt:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mEt:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->disPlayWidth:I

    const v0, 0x7f040100

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mRootView:Landroid/view/View;

    const v1, 0x7f100331

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mRootView:Landroid/view/View;

    const v1, 0x7f100330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mHs:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mRootView:Landroid/view/View;

    const v1, 0x7f100333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mEt:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mRootView:Landroid/view/View;

    const v1, 0x7f100332

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLeftEditIv:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->initListener()V

    return-void
.end method

.method private removeViewEvent(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeViewEvent\u5220\u9664\u6267\u884c\u4e4b\u524d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->markedChild:Landroid/view/View;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->markedChild:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeViewEvent\u5220\u9664\u6267\u884c\u4e4b\u540e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeViewEvent\u5220\u9664\u6267\u884c\u4e4b\u540e\uff0cMap\u7684\u5927\u5c0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLeftEditIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->markedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->markedChild:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->markedChild:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLeftEditIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public getChildViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mLlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeIconView(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->removeViewEvent(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnIconRemoveListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;

    return-void
.end method
