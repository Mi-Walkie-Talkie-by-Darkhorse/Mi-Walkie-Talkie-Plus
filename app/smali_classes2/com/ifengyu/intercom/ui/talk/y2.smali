.class public Lcom/ifengyu/intercom/ui/talk/y2;
.super Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;
.source "GroupAddMemberFragment.java"


# instance fields
.field private E:Lcom/shanlitech/et/model/Group;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;-><init>()V

    return-void
.end method

.method private N3([Lcom/shanlitech/et/model/FailUser;)Ljava/lang/String;
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

    invoke-virtual {v4}, Lcom/shanlitech/et/model/FailUser;->getAccount()Ljava/lang/String;

    move-result-object v4

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

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private synthetic P3()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->p2(Ljava/lang/Class;)V

    return-void
.end method

.method private synthetic R3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/y2;->E:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/w2;->x3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/w2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method public static T3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/y2;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/y2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/y2;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected A3()I
    .locals 1

    const v0, 0x7f110142

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

    const v2, 0x7f0c00d1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029b

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/t;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/t;-><init>(Lcom/ifengyu/intercom/ui/talk/y2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_group"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/y2;->E:Lcom/shanlitech/et/model/Group;

    :cond_0
    return-void
.end method

.method public E0([Lcom/shanlitech/et/model/FailUser;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/y2;->N3([Lcom/shanlitech/et/model/FailUser;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f1101e2

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->R()V

    return-void
.end method

.method protected M3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->v()V

    return-void
.end method

.method protected O3()Lcom/ifengyu/intercom/ui/talk/c3/f0;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/y2;->E:Lcom/shanlitech/et/model/Group;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;-><init>(ILcom/shanlitech/et/model/Group;)V

    return-object v0
.end method

.method public synthetic Q3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/y2;->P3()V

    return-void
.end method

.method public synthetic S3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/y2;->R3(Landroid/view/View;)V

    return-void
.end method

.method public U0()V
    .locals 1

    const v0, 0x7f11002f

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public a0()V
    .locals 2

    const v0, 0x7f110030

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/s;-><init>(Lcom/ifengyu/intercom/ui/talk/y2;)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method public p0([Lcom/shanlitech/et/model/FailUser;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/y2;->N3([Lcom/shanlitech/et/model/FailUser;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f1101e1

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic y3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/y2;->O3()Lcom/ifengyu/intercom/ui/talk/c3/f0;

    move-result-object v0

    return-object v0
.end method
