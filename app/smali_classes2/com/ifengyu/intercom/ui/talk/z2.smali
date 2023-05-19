.class public Lcom/ifengyu/intercom/ui/talk/z2;
.super Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;
.source "GroupCreateFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;-><init>()V

    return-void
.end method

.method private synthetic O3(Lcom/shanlitech/et/model/Group;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    return-void
.end method

.method private synthetic Q3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/x2;->M3()Lcom/ifengyu/intercom/ui/talk/x2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic S3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->C3()Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method public static U3()Lcom/ifengyu/intercom/ui/talk/z2;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/z2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/z2;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected A3()I
    .locals 1

    const v0, 0x7f1100fc

    return v0
.end method

.method public B3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c00d9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029e

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/y;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/y;-><init>(Lcom/ifengyu/intercom/ui/talk/z2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902a5

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/x;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/x;-><init>(Lcom/ifengyu/intercom/ui/talk/z2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->R()V

    return-void
.end method

.method public M()V
    .locals 1

    const v0, 0x7f1101d9

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method protected M3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->y()V

    return-void
.end method

.method protected N3()Lcom/ifengyu/intercom/ui/talk/c3/f0;
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;-><init>(I)V

    return-object v0
.end method

.method public synthetic P3(Lcom/shanlitech/et/model/Group;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/z2;->O3(Lcom/shanlitech/et/model/Group;)V

    return-void
.end method

.method public synthetic R3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/z2;->Q3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic T3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/z2;->S3(Landroid/view/View;)V

    return-void
.end method

.method public b1()V
    .locals 1

    const v0, 0x7f1101d8

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public e1(Lcom/shanlitech/et/model/Group;)V
    .locals 2

    const v0, 0x7f1101da

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/z;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/z;-><init>(Lcom/ifengyu/intercom/ui/talk/z2;Lcom/shanlitech/et/model/Group;)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method public n1([Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 3
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v5, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v5, v4}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u3001"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const v0, 0x7f1101e2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 8
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic y3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/z2;->N3()Lcom/ifengyu/intercom/ui/talk/c3/f0;

    move-result-object v0

    return-object v0
.end method
