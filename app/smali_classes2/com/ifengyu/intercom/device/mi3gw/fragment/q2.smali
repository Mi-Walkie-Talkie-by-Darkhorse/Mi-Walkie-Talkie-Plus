.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;
.super Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;
.source "DeviceGroupAddMemberFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/c/e0;


# instance fields
.field private E:J

.field private F:Lcom/ifengyu/talk/http/entity/TempGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;-><init>()V

    return-void
.end method

.method public static O3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group_gid"

    .line 3
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

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

.method public D0(J)V
    .locals 0

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "key_group_gid"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->E:J

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->i()Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->E:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->F:Lcom/ifengyu/talk/http/entity/TempGroup;

    :cond_0
    return-void
.end method

.method public E(JLjava/lang/String;)V
    .locals 0

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

.method public varargs F([J)V
    .locals 0

    return-void
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public H(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    return-void
.end method

.method public L(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 0

    return-void
.end method

.method public L0()V
    .locals 0

    return-void
.end method

.method public M0(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected M3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->E:J

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v3, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->N()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d(J[Ljava/lang/String;)V

    return-void
.end method

.method protected N3()Lcom/ifengyu/intercom/ui/talk/c3/f0;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->F:Lcom/ifengyu/talk/http/entity/TempGroup;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;-><init>(ILcom/ifengyu/talk/http/entity/TempGroup;)V

    return-object v0
.end method

.method public O0()V
    .locals 0

    return-void
.end method

.method public P(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->E:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    :cond_0
    return-void
.end method

.method public R0(J)V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public X0(J)V
    .locals 0

    return-void
.end method

.method public Y(J)V
    .locals 0

    return-void
.end method

.method public a1(J)V
    .locals 0

    return-void
.end method

.method public d0(Lcom/ifengyu/talk/http/entity/TempGroup;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->addListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->e2()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public varargs h1([J)V
    .locals 0

    return-void
.end method

.method public i0(J)V
    .locals 0

    return-void
.end method

.method public varargs k0([J)V
    .locals 0

    return-void
.end method

.method public k1()V
    .locals 0

    return-void
.end method

.method public l0(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->E:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const p1, 0x7f11002f

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_0
    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/o;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->removeListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    return-void
.end method

.method public p(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public r(J)V
    .locals 0

    return-void
.end method

.method public varargs t0([J)V
    .locals 0

    return-void
.end method

.method public t1(J)V
    .locals 0

    return-void
.end method

.method public w0()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic y3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->N3()Lcom/ifengyu/intercom/ui/talk/c3/f0;

    move-result-object v0

    return-object v0
.end method
