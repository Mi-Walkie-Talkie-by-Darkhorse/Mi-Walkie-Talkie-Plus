.class public Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;
    }
.end annotation


# instance fields
.field private q:Landroid/widget/EditText;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Landroidx/recyclerview/widget/RecyclerView;

.field private t:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

.field private u:Landroid/view/View;

.field private v:Landroid/view/inputmethod/InputMethodManager;

.field private w:Lcom/ifengyu/intercom/network/d/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->w:Lcom/ifengyu/intercom/network/d/d;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->v:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->u:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->t:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Lcom/ifengyu/intercom/network/d/d;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->w:Lcom/ifengyu/intercom/network/d/d;

    return-object p0
.end method

.method private w()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->r()V

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->t:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/adapter/j;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const v0, 0x7f090371

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/widget/EditText;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->v:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->u:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090108

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003c

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->w()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->r:Ljava/util/ArrayList;

    return-void
.end method

.method protected r()V
    .locals 2

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
